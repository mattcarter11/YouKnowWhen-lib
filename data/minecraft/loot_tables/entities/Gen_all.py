from os import listdir

l = listdir('../../../vanilla/loot_tables/entity')
l.remove('sheep')
for e in l:
    f = open(e, 'w')
    f.write("""
    {
      "type": "minecraft:entity",
      "pools": [
        {
          "rolls": 1,
          "entries": [
            {
              "type": "minecraft:loot_table",
              "name": "vanilla:entity/LOOT_TABLE"
            }
          ]
        },
        {
          "rolls": 1,
          "entries": [
            {
              "type": "minecraft:loot_table",
              "name": "mdd:drop_marker"
            }
          ]
        }
      ]
    }""".replace('LOOT_TABLE', e.replace('.json', '')))
    f.close()

input('Enter to end')
