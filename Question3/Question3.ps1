<#
object = {“a”:{“b”:{“c”:”d”}}}
key = a/b/c
object = {“x”:{“y”:{“z”:{“c”:”a”}}}}
key = x/y/z/c
value = a
#>

# Right JSON Format {"a":[{"b":[{"c":"d"}]}]}


$object = '{“x”:{“y”:{“z”:{“c”:”a”}}}}'.Replace('”','"').Replace('“','"').Replace(':{',':[{').Replace('}','}]').TrimEnd(']')
$inputArray  = "x/y/z/c".split('/')

write-host "Final JSON Format:" $object
write-host "Key Array:" $inputArray

$inputArray.Length
$finalObject = $object |  ConvertFrom-Json 

foreach($value in $inputArray)
{
    $index = $inputArray.IndexOf($value)
    write-host "index:$index value:$value"

    $nextlevel = $finalObject.$value
    write-host $nextlevel
    $finalObject = $nextlevel
}

if($finalObject)
{
    write-host "Value Found:" $finalObject
}
else{write-host "Value not Found"}
















