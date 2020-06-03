execute if entity @a[advancements={evolzpack:end/special/in_water=true,evolzpack:end/kill_enderman=false}] run tag @a[advancements={evolzpack:end/special/in_water=true,evolzpack:end/kill_enderman=false}] add inWater
tag @a[tag=inWater] remove outWater
advancement grant @a[tag=inWater] only evolzpack:end/kill_enderman in_water
execute unless entity @a[advancements={evolzpack:end/special/in_water=true,evolzpack:end/kill_enderman=true}] run tag @a[advancements={evolzpack:end/special/in_water=false,evolzpack:end/kill_enderman=false}] add outWater
tag @a[tag=outWater] remove inWater
advancement revoke @a[tag=outWater] only evolzpack:end/kill_enderman in_water
advancement revoke @a[tag=outWater] only evolzpack:end/kill_enderman kill_enderman
advancement revoke @a[tag=outWater] only evolzpack:end/special/in_water
advancement revoke @a[tag=inWater] only evolzpack:end/special/in_water
tag @a[tag=inWater] remove inWater
tag @a[tag=outWater] remove outWater