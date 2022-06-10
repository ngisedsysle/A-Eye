# A-Eye Visor

## Develop and Debug Datas
### Signal command to continue
pkill --signal SIGUSR1 shipsnet  

### Status
| Name                 | Status | Comments                          |
| :------------------- | :----- | :-------------------------------- |
| Forward Propagation  | OK     | Same as python                    |
| Backward Propagation | HS     | Since memory disposition modified |

### Checklist memory
On picture bateau3599.jpg with rescal_fl32.json and rescaling with keras    
| Type                 | Status Python          | Status C                         | Comments   |
| :------------------- | :--------------------- | :------------------------------- | :--------- |
| Chargement image raw | image_raw              | OK                               | Same       |
| Rescale Image        | image_rescaled_py.json | image_preprocessed_format_c.json | Same       |
| Weights 1            | weights10.json         | weights10.json                   | Same       |
| Bias 1               | bias10.json            | weights10.json, fin (865)        | Same       |
| Layer 1 result       | layer10.json           | layer10.json                     | Rounding? |
| Layer 2 result       | layer11.json           | layer11.json                     | Rounding? |
| Weights 3            | weights12.json         | weights12.json                   | Same       |
| Bias 3               | bias12.json            | weights12.json, fin (9217)       | Same       |
| Layer 3 result       | layer12.json           | layer12.json                     | Rounding? |
| Weights 18           | weights18.json         | weights18.json                   | Same       |
| Bias 18              | bias18.json            | weigths18.json, fin (200705)     | Same       |
| Layer 18 result      | layer18.json           | layer18.json                     | Rounding?   |
| Weights 19           | weights19.json         | weights19.json                   | Same       |
| Bias 19              | bias19.json            | weigths19.json, fin (65)         | Same       |
| Layer 19 result      | layer19.json           | layer19.json                     | Rounding? |

## Performance 
### Processing Time on a i7 9th gen @4GHz
For a 224*224*3 bmp image :
Process convolution 10 in 0.408835 (23%)  
Process pooling 11 in 0.013619 (<1%)  
Process convolution 12 in 1.007322 (60%)  
Process pooling 13 in 0.003363 (<1%)  
Process convolution 14 in 0.250229 (14%)  
Process pooling 15 in 0.000806 (<1%)  
Process convolution 16 in 0.062159 (4%)  
Process pooling 17 in 0.000244 (<1%)  
Process fully connected 18 in 0.000853 (<1%)  
Process Output layer 19 in 0.000012 (<1%)  
Process 1/1 pics (1.755841 sec/pic) with 100.00 good predictions  

### Processing Time on Zybo
For a 224*224*3 bmp image :
534 secs to load weights and biases (init AI) 
44 secs to process one picture (inference)  

## Folder description
### Format
Debug python script to format as a json the data.  
### JSON
Homemade functions to deal with json data.
### Preprocess
Functions called by AI to resize the picture.  
