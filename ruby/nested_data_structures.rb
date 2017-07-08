highways = {
    'I-290': {
        name: 'Eisenhower',
        traffic_status: 'heavy',
        lines: {
          'line_one': {
            cars: 80,
            moving_speed: '15/mph'
          },
          'line_two': {
            cars: '110',
            moving_speed: '0/mph'
          },
          'line_three': {
              cars: 100,
              speed: '10/mph',
              passengers_in_fiftieth_car: [
                'Dan',
                'Ana',
                'Steve']
            }
          },
        construction_site: 'yes'
    },
    'I-94': {
      name: 'Edens Expressway',
      number_of_lines: 4,
      traffic_status: 'normal',
      construction_site: 'yes'
    },
  'I-90': {
      name: 'Skyway',
      number_of_lines: '4',
      traffic_status: 'heavy',
      construction_site: 'no'
    },
  'I-190': {
      name: 'Ohare Extension',
      number_of_lines: 2,
      traffic_info: {
        status: 'heavy',
        cause: 'accident',
       lines_moving: 1, 
       lines_blocked: 1
      }
    } 
}
p highways[:'I-290'][:traffic_status]
p highways[:'I-290'][:lines][:line_three][:passengers_in_fiftieth_car]
p highways[:'I-290'][:lines][:line_three][:passengers_in_fiftieth_car][0]
p highways[:'I-290'][:lines][:line_two][:moving_speed]
p highways[:'I-190'][:traffic_info][:lines_moving]