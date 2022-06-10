import shutil
import numpy as np  # linear algebra
import pandas as pd  # data processing, CSV file I/O (e.g. pd.read_csv)
import pathlib

csv_path = 'train_ship_segmentations_v2.csv'
img_path = 'train_v2/'
img_with_ship_path = img_path + 'bateau/'

# Get images that have ships
csv_file = pd.read_csv(csv_path)
has_ship = [isinstance(_, str)
            for _ in csv_file['EncodedPixels']]  # true if has ship
df_with_ships = csv_file.loc[has_ship]
# print(df_with_ships.index)
# print(df_with_ships.at[2,'ImageId'])
nbr_df_with_ship = np.sum(has_ship)
print('n with ships:', nbr_df_with_ship)
print('n without ships:', len(has_ship)-nbr_df_with_ship)

# Move image with ship
for n in (df_with_ships.index):
    try:
        shutil.move(img_path + '{}'.format(csv_file.at[n, 'ImageId']),
                    img_with_ship_path + '{}'.format(csv_file.at[n, 'ImageId']))
    except:     # For example, if image not found (already move)
        pass
