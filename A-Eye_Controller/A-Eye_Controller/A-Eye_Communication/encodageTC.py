import json
from deepdiff import DeepDiff

def resetTakePicture():
    """
    Reset the flag about "TakePicture" in config.json.
    """
    with open('config.json', 'r', encoding='utf-8') as f:
        json_content = json.load(f)
        f.close()
        json_content['TakePicture']['Valid'] = 'false'
        json.dump(json_content, open('config.json', 'w', encoding='utf-8'), ensure_ascii=False, indent = 4)

def encode_tc() : 
    """
    Compare config.json and last_config.json to find differences.
    Then, convert differences in TC.

    Return:
        The TC as an array of string.
    """
    # Loading json config file
    f1 = open('config.json')
    f2 = open('last_config.json')
    new_config = json.load(f1)
    last_config = json.load(f2)
    f1.close()
    f2.close()

    # Search for differences in config files
    diff = DeepDiff(last_config,new_config, ignore_string_case = True)
    diff = diff.to_dict()
    tc = []

    # TC decoding

    # TC modeSelector 
    if 'values_changed' in diff :
        if "root['Config']['ModeSelector']" in diff['values_changed']:
            mode = diff['values_changed']["root['Config']['ModeSelector']"]['new_value']
            tc.append("1{}".format(mode))  
        if "root['Config']['StartStop']" in diff['values_changed']:
            mode = diff['values_changed']["root['Config']['StartStop']"]['new_value']
            if mode == 'True' :
                tc.append("31")
            else :
                tc.append("30")
        # TC weights         
        if "root['Weights']['Valid']"  in diff['values_changed']:
            mode = diff['values_changed']["root['Weights']['Valid']"]['new_value']
            if mode == 'True' :
                tc.append("41")
            else :
                tc.append("40")
        # TC takePicture 
        if "root['TakePicture']['Valid']" in diff['values_changed']:
            mode = diff['values_changed']["root['TakePicture']['Valid']"]['new_value']
            if mode == 'true' :
                tc.append("21")
            else :
                tc.append("20")
        new_config['TakePicture']['Valid'] = 'false'
        resetTakePicture()

    # for i in range(len(tc)) :
    #     client.client.tcp_client_send(tc[i])
    with open('./last_config.json', 'w', encoding='utf-8') as f :
        json.dump(new_config, f, ensure_ascii=False, indent = 4)
    return tc