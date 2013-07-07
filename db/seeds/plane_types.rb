planes = {  1 => { manuf: 'Boeing', name: '787 Tupperjet' },
            2 => { manuf: 'Boeing', name: '777 B737 on steroids' },
            3 => { manuf: 'Boeing', name: '757 Flying Pencil' },
            4 => { manuf: 'Boeing', name: '747 Whale' },
            5 => { manuf: 'Airbus', name: 'A380 Double Decker Bus' },
            6 => { manuf: 'Airbus', name: 'A340 Four-person Hair Dryer' },
            7 => { manuf: 'Airbus', name: 'A330 The Aircraft in Plastic' },
            8 => { manuf: 'Airbus', name: 'A320 NintendoJet' } }

1.upto(8) do |i|
  FactoryGirl.create(:plane_type, manufacturer: planes[i][:manuf], name: planes[i][:name])
end
