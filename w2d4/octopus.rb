fishies = ['fish', 'fiiish', 'fiiiiish', 'fiiiish',
  'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
  cur_val = nil
  arr.each do |el1|
    arr.each do |el2|
      cur_val = el2 if el1 < el2
    end
  end
  cur_val
end

def dominant_octopus(arr)
  merge_sort(arr).last
end

def merge_sort(arr)
  return arr if arr.length <= 1
  half = arr.length / 2
  merge(merge_sort(arr[0...half]), merge_sort(arr[half..-1]))
end

def merge(arr1, arr2)
  merged = []
  until arr1.empty || arr2.empty
    arr1[0] < arr2[0] ? merged << arr1.shift : merged << arr2.shift
  end
  merged + arr1 + arr2
end

def clever_octopus(arr)
  cur_val = nil
  arr.each do |el|
    cur_val = el if curl_val.nil? || el > cur_val
  end
  cur_val
end

tiles_array = ["up", "right-up", "right", "right-down",
              "down", "left-down", "left",  "left-up" ]

def slow_dance(target, tiles_array)
  idx = nil
  tiles_array.each.with_index { |el, i| idx = i if el == target }
end

tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(target, tiles_hash)
  tiles_hash[target]
end
