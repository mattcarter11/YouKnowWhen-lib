from os import listdir

l = listdir('vanilla')
l.remove('sheep')
for e in l:
    f = open('entities/'+e, 'w')
    f.write("""
    {
      "type": "minecraft:entity",
      "pools": [
        {
          "rolls": 1,
          "entries": [
            {
              "type": "minecraft:loot_table",
              "value": "vanilla/LOOT_TABLE"
            }
          ]
        },
        {
          "rolls": 1,
          "entries": [
            {
              "type": "minecraft:loot_table",
              "value": "mdd:drop_marker"
            }
          ]
        }
      ]
    }""".replace('LOOT_TABLE', e.replace('.json', '')))
    f.close()

input('Enter to end')
