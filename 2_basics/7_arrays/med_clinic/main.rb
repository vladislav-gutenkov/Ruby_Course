def middle_temp(arr)
  sum = 0
  for index in 0..arr.length - 1
    sum += arr[index]
  end
  middle = sum / LIMIT_PATIENTS
  puts "Средняя температура по больнице: #{middle}"
end

def normal_temp(arr)
  normal = []
  for index in 0..arr.length - 1
    normal << arr[index] if arr[index] >= MIN_TEMP && arr[index] <= MAX_TEMP
  end
  puts "Количество здоровых пациентов: #{normal.length}"
end

patients = []
LIMIT_PATIENTS = 30
MAX_TEMP = 36.9
MIN_TEMP = 36.2

LIMIT_PATIENTS.times do patients << rand(32.0..40.0).round(1) end

puts "Температуры всех пациентов в больнице: #{patients}"

middle_temp(patients)

normal_temp(patients)
