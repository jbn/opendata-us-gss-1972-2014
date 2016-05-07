/*
+----------------------------------------------------------+
|                                                          |
| This script was produced by the OpenDataForge Stata      |
| Script Generator.                                        |
|                                                          |
| To ensure the successful import into Stata be sure to    |
| double check the following lines.                        |
|                                                          |
| 1) "local dat_name" - This should point the data file    |
|    that you will be importing into Stata, ensure that    |
|    the path points to the correct file. If you move the  |
|    data to another folder, ensure that you change the    |
|    path to reflect the new location of the data file.    |
|                                                          |
| 2) "local dct_name" - This should point to the           |
|    dictionary file that hs been generated along with     |
|    this file. By default it is assumed that the          |
|    dictionary file is held in the same folder as this do |
|    file. Because of this only the file name is           |
|    specified. If you move the dictionary file to another |
|    folder, ensure that you change the path to reflect    |
|    the new location of the dictionary.                   |
|                                                          |
|                                                          |
| For more information on our products or services visit   |
| http://www.mtna.us.                                      |
|                                                          |
+----------------------------------------------------------+
*/

local dat_name "GSS7214.fixed.dat"

local dct_name "GSS7214.dct"

infile using "`dct_name'", using("`dat_name'") clear

#delimit ;
	label define WRKSTAT
		0 "IAP"
		1 "WORKING FULLTIME"
		2 "WORKING PARTTIME"
		3 "TEMP NOT WORKING"
		4 "UNEMPL, LAID OFF"
		5 "RETIRED"
		6 "SCHOOL"
		7 "KEEPING HOUSE"
		8 "OTHER"
		9 "NA";

	label define HRS1
		98 "DK"
		99 "NA";

	label define EVWORK
		0 "IAP"
		1 "YES"
		2 "NO"
		8 "DK"
		9 "NA";

	label define OCC
		0 "DK,NA,IAP";

	label define WRKSLF
		0 "IAP"
		1 "SELF-EMPLOYED"
		2 "SOMEONE ELSE"
		8 "DK"
		9 "NA";

	label define WRKGOVT
		0 "IAP"
		1 "GOVERNMENT"
		2 "PRIVATE"
		8 "DK"
		9 "NA";

	label define COMMUTE
		97 "97+ MINUTES"
		98 "DK"
		99 "NA";

	label define OCC80
		0 "IAP"
		3 "Legislators"
		4 "Chief Executives and General Admin., Public Admin"
		5 "Administrators and Officials, Public Administration"
		6 "Administrators, Protective Service"
		7 "Financial Managers"
		8 "Personnel and Labor Relations Managers"
		9 "Purchasing Managers"
		13 "Managers, Marketing, Advertising, and Public Relations"
		14 "Administrators, Education and Related Fields"
		15 "Managers, Medicine and Health"
		16 "Managers, Properties and Real Estate"
		17 "Postmasters and Mail Superintendents"
		18 "Funeral Directors"
		19 "Managers and Administrators, n.e.c."
		23 "Accountants and Auditors"
		24 "Underwriters"
		25 "Other Financial Officers"
		26 "Management Analysts"
		27 "Personnel, Training, and Labor Relations Specialists"
		28 "Purchasing Agents and Buyers, Farm Products"
		29 "Buyers, Wholesale and Retail Trade Except Farm  Products"
		33 "Purchasing Agents and Buyers"
		34 "Business and Promotion Agents"
		35 "Construction Inspectors"
		36 "Inspectors/Compliance Officers, Except Construction"
		37 "Management Related Occupations, n.e.c."
		43 "Architects"
		44 "Aerospace Engineers"
		45 "Metallurgical and Materials Engineers"
		46 "Mining Engineers"
		47 "Petroleum Engineers"
		48 "Chemical Engineers"
		49 "Nuclear Engineers"
		53 "Civil Engineers"
		54 "Agricultural Engineers"
		55 "Electrical and Electronic Engineers"
		56 "Industrial Engineers"
		57 "Mechanical Engineers"
		58 "Marine and Naval Architects"
		59 "Engineers, n.e.c."
		63 "Surveyors and Mapping Scientists"
		64 "Computer Systems Analysts and Scientists"
		65 "Operations and Systems Researchers and Analysts"
		66 "Actuaries"
		67 "Statisticians"
		68 "Mathematical Scientists, n.e.c."
		69 "Physicists and Astronomers"
		73 "Chemists, Except Biochemists"
		74 "Atmospheric and Space Scientists"
		75 "Geologists and Geodesists"
		76 "Physical Scientists, n.e.c."
		77 "Agricultural and Food Scientists"
		78 "Biological and Life Scientists"
		79 "Forestry and Conservation Scientists"
		83 "Medical Scientists"
		84 "Physicians"
		85 "Dentists"
		86 "Veterinarians"
		87 "Optometrists"
		88 "Podiatrists"
		89 "Health Diagnosing Practitioners, n.e.c."
		95 "Registered Nurses"
		96 "Pharmacists"
		97 "Dietitians"
		98 "Inhalation Therapists"
		99 "Occupational Therapists"
		103 "Physical Therapists"
		104 "Speech Therapists"
		105 "Therapists, n.e.c."
		106 "Physicians' Assistants"
		113 "Earth, Environmental, and Marine Science Teachers"
		114 "Biological Science Teachers"
		115 "Chemistry Teachers"
		116 "Physics Teachers"
		117 "Natural Science Teachers, n.e.c."
		118 "Psychology Teachers"
		119 "Economics Teachers"
		123 "History Teachers"
		124 "Political Science Teachers"
		125 "Sociology Teachers"
		126 "Social Science Teachers, n.e.c."
		127 "Engineering Teachers"
		128 "Mathematical Science Teachers"
		129 "Computer Science Teachers"
		133 "Medical Science Teachers"
		134 "Health Specialties Teachers"
		135 "Business, Commerce, and Marketing Teachers"
		136 "Agriculture and Forestry Teachers"
		137 "Art, Drama, and Music Teachers"
		138 "Physical Education Teachers"
		139 "Education Teachers"
		143 "English Teachers"
		144 "Foreign Language Teachers"
		145 "Law Teachers"
		146 "Social Work Teachers"
		147 "Theology Teachers"
		148 "Trade and Industrial Teachers"
		149 "Home Economics Teachers"
		153 "Teachers, Postsecondary, n.e.c."
		154 "Postsecondary Teachers, Subject Not Specified"
		155 "Teachers, Prekindergarten and Kindergarten"
		156 "Teachers, Elementary School"
		157 "Teachers, Secondary School"
		158 "Teachers, Special Education"
		159 "Teachers, n.e.c."
		163 "Counselors, Educational and Vocational"
		164 "Librarians"
		165 "Archivists and Curators"
		166 "Economists"
		167 "Psychologists"
		168 "Sociologists"
		169 "Social Scientists, n.e.c."
		173 "Urban Planners"
		174 "Social Workers"
		175 "Recreation Workers"
		176 "Clergy"
		177 "Religious Workers, n.e.c."
		178 "Lawyers"
		179 "Judges"
		183 "Authors"
		184 "Technical Writers"
		185 "Designers"
		186 "Musicians and Composers"
		187 "Actors and Directors"
		188 "Painters, Sculptors, Craft-Artists, and Printmakers"
		189 "Photographers"
		193 "Dancers"
		194 "Artists, Performers, and Related Workers, n.e.c."
		195 "Editors and Reporters"
		197 "Public Relations Specialists"
		198 "Announcers"
		199 "Athletes"
		203 "Clinical Laboratory Technologists and Technicians"
		204 "Dental Hygienists"
		205 "Health Record Technologists and Technicians"
		206 "Radiologic Technicians"
		207 "Licensed Practical Nurses"
		208 "Health Technologists and Technicians, n.e.c."
		213 "Electrical and Electronic Technicians"
		214 "Industrial Engineering Technicians"
		215 "Mechanical Engineering Technicians"
		216 "Engineering Technicians, n.e.c."
		217 "Drafting Occupations"
		218 "Surveying and Mapping Technicians"
		223 "Biological Technicians"
		224 "Chemical Technicians"
		225 "Science Technicians, n.e.c."
		226 "Airplane Pilots and Navigators"
		227 "Air Traffic Controllers"
		228 "Broadcast Equipment Operators"
		229 "Computer Programmers"
		233 "Tool Programmers, Numerical Control"
		234 "Legal Assistants"
		235 "Technicians, n.e.c."
		243 "Supervisors and Proprietors, Sales Occupations"
		253 "Insurance Sales Occupations"
		254 "Real Estate Sales Occupations"
		255 "Securities and Financial Services Sales Occupations"
		256 "Advertising and Related Sales Occupations"
		257 "Sales Occupations, Other Business Services"
		258 "Sales Engineers"
		259 "Sales Rep., Mining, Manufacturing, and Wholesale"
		263 "Sales Workers, Motor Vehicles and Boats"
		264 "Sales Workers, Apparel"
		265 "Sales Workers, Shoes"
		266 "Sales Workers, Furniture and Home Furnishings"
		267 "Sales Workers, Radio, TV, Hi-Fi, and Appliances"
		268 "Sales Workers, Hardware and Building Supplies"
		269 "Sales Workers, Parts"
		274 "Sales Workers, Other Commodities"
		275 "Sales Counter Clerks"
		276 "Cashiers"
		277 "Street and Door-To-Door Sales Workers"
		278 "News Vendors"
		283 "Demonstrators, Promoters and Models, Sales"
		284 "Auctioneers"
		285 "Sales Support Occupations, n.e.c."
		303 "Supervisors, General Office"
		304 "Supervisors, Computer Equipment Operators"
		305 "Supervisors, Financial Records Processing"
		306 "Chief Communications Operators"
		307 "Supervisors, Distribution, Scheduling, and Adjusting Clerks"
		308 "Computer Operators"
		309 "Peripheral Equipment Operators"
		313 "Secretaries"
		314 "Stenographers"
		315 "Typists"
		316 "Interviewers"
		317 "Hotel Clerks"
		318 "Transportation Ticket and Reservation Agents"
		319 "Receptionists"
		323 "Information Clerks, n.e.c."
		325 "Classified-Ad Clerks"
		326 "Correspondence Clerks"
		327 "Order Clerks"
		328 "Personnel Clerks, Except Payroll and Timekeeping"
		329 "Library Clerks"
		335 "File Clerks"
		336 "Records Clerks"
		337 "Bookkeepers, Accounting and Auditing Clerks"
		338 "Payroll and Timekeeping Clerks"
		339 "Billing Clerks"
		343 "Cost and Rate Clerks"
		344 "Billing, Posting, and Calculating Machine Operators"
		345 "Duplicating Machine Operators"
		346 "Mail Preparing and Paper Handling Machine Operators"
		347 "Office Machine Operators, n.e.c."
		348 "Telephone Operators"
		349 "Telegraphers"
		353 "Communications Equipment Operators, n.e.c."
		354 "Postal Clerks, Excluding Mail Carriers"
		355 "Mail Carriers, Postal Service"
		356 "Mail Clerks, Excluding Postal Service"
		357 "Messengers"
		359 "Dispatchers"
		363 "Production Coordinators"
		364 "Traffic, Shipping and Receiving Clerks"
		365 "Stock and Inventory Clerks"
		366 "Meter Readers"
		368 "Weighers, Measurers, and Checkers"
		369 "Samplers"
		373 "Expediters"
		374 "Material Recording, Scheduling and Distributing Clerks, n.e.c."
		375 "Insurance Adjusters, Examiners, and Investigators"
		376 "Investigators and Adjusters, Except Insurance"
		377 "Eligibility Clerks, Social Welfare"
		378 "Bill and Account Collectors"
		379 "General Office Clerks"
		383 "Bank Tellers"
		384 "Proofreaders"
		385 "Data-Entry Keyers"
		386 "Statistical Clerks"
		387 "Teachers' Aides"
		389 "Administrative Support Occupations, n.e.c."
		403 "Launderers and Ironers"
		404 "Cooks, Private Household"
		405 "Housekeepers and Butlers"
		406 "Child Care Workers, Private Household"
		407 "Private Household Cleaners and Servants"
		413 "Supervisors, Firefighting and Fire Prevention Occupations"
		414 "Supervisors, Police and Detectives"
		415 "Supervisors, Guards"
		416 "Fire Inspection and Fire Prevention Occupations"
		417 "Firefighting Occupations"
		418 "Police and Detectives, Public Service"
		423 "Sheriffs, Bailiffs, and Other Law Enforcement Officers"
		424 "Correctional Institution Officers"
		425 "Crossing Guards"
		426 "Guards and Police, Excluding Public Service"
		427 "Protective Service Occupations"
		430 "Former Member of the Armed Forces"
		431 "Current Member of the Armed Forces"
		433 "Supervisors, Food Preparation and Service Occupations"
		434 "Bartenders"
		435 "Waiters and Waitresses"
		436 "Cooks, Except Short Order"
		437 "Short-Order Cooks"
		438 "Food Counter, Fountain and Related Occupations"
		439 "Kitchen Workers, Food Preparation"
		443 "Waiters'/Waitresses' Assistants"
		444 "Miscellaneous Food Preparation Occupations"
		445 "Dental Assistants"
		446 "Health Aids, Except Nursing"
		447 "Nursing Aides, Orderlies and Attendants"
		448 "Supervisors, Cleaning and Building Service Workers"
		449 "Maids and Housemen"
		453 "Janitors and Cleaners"
		454 "Elevator Operators"
		455 "Pest Control Occupations"
		456 "Supervisors, Personal Service Occupations"
		457 "Barbers"
		458 "Hairdressers and Cosmetologists"
		459 "Attendants, Amusement and Recreation Facilities"
		463 "Guides"
		464 "Ushers"
		465 "Public Transportation Attendants"
		466 "Baggage Porters and Bellhops"
		467 "Welfare Service Aides"
		468 "Child Care Workers, Except Private Household"
		469 "Personal Service Occupations, n.e.c."
		473 "Farmers, Except Horticultural"
		474 "Horticultural Specialty Farmers"
		475 "Managers, Farms, Except Horticultural"
		476 "Managers, Horticultural Specialty Farms"
		477 "Supervisors, Farm Workers"
		479 "Farm Workers"
		483 "Marine Life Cultivation Workers"
		484 "Nursery Workers"
		485 "Supervisors, Related Agricultural Occupations"
		486 "Groundskeepers and Gardeners, Except Farm"
		487 "Animal Caretakers, Except Farm"
		488 "Graders and Sorters, Agricultural Products"
		489 "Inspectors, Agricultural Products"
		494 "Supervisors, Forestry and Logging Workers"
		495 "Forestry Workers, Except Logging"
		496 "Timber Cutting and Logging Occupations"
		497 "Captains and Other Officers, Fishing Vessels"
		498 "Fishers"
		499 "Hunters and Trappers"
		503 "Supervisors, Mechanics and Repairers"
		505 "Automobile Mechanics, Except Apprentices"
		506 "Automobile Mechanic Apprentices"
		507 "Bus, Truck, and Stationary Engine Mechanics"
		508 "Aircraft Engine Mechanics"
		509 "Small Engine Repairers"
		514 "Automobile Body and Related Repairers"
		515 "Aircraft Mechanics, Excluding Engine"
		516 "Heavy Equipment Mechanics"
		517 "Farm Equipment Mechanics"
		518 "Industrial Machinery Repairers"
		519 "Machinery Maintenance Occupations"
		523 "Electronic Repairers, Communications and Industrial Equipment"
		525 "Data Processing Equipment Repairers"
		526 "Household Appliance and Power Tool Repairers"
		527 "Telephone Line Installers and Repairers"
		529 "Telephone Installers and Repairers"
		533 "Misc. Electrical and Electronic Equipment Repairers"
		534 "Heating, Air Conditioning, and Refrigeration Mechanics"
		535 "Camera, Watch, and Musical Instrument Repairers"
		536 "Locksmiths and Safe Repairers"
		538 "Office Machine Repairers"
		539 "Mechanical Controls and Valve Repairers"
		543 "Elevator Installers and Repairers"
		544 "Millwrights"
		547 "Specified Mechanics and Repairers, n.e.c."
		549 "Not Specified Mechanics and Repairers"
		553 "Supervisors, Brickmasons, Stonemasons, and Title Setters"
		554 "Supervisors, Carpenters and Related Work"
		555 "Supervisors, Electricians and Power Transmission Installers"
		556 "Supervisors, Painters, Paperhangers, and Plasterers"
		557 "Supervisors, Plumbers, Pipefitters, and Steamfitters"
		558 "Supervisors, n.e.c."
		563 "Brickmasons and Stonemasons, Except Apprentices"
		564 "Brickmasons and Stonemasons Apprentices"
		565 "Tile Setters, Hard and Soft"
		566 "Carpet Installers"
		567 "Carpenters, Except Apprentices"
		569 "Carpenter Apprentices"
		573 "Drywall Installers"
		575 "Electricians, Except Apprentices"
		576 "Electrician Apprentices"
		577 "Electrical Power Installers and Repairers"
		579 "Painters, Construction and Maintenance"
		583 "Paperhangers"
		584 "Plasterers"
		585 "Plumbers, Pipefitters, and Steamfitters, Except Apprentices"
		587 "Plumber, Pipefitter, and Steamfitter Apprentices"
		588 "Concrete and Terrazzo Finishers"
		589 "Glaziers"
		593 "Insulation Workers"
		594 "Paving, Surfacing, and Tamping Equipment Operators"
		595 "Roofers"
		596 "Sheetmetal Duct Installers"
		597 "Structural Metal Workers"
		598 "Drillers, Earth"
		599 "Construction Trades, n.e.c."
		613 "Supervisors, Extractive Occupations"
		614 "Drillers, Oil Well"
		615 "Explosives Workers"
		616 "Mining Machine Operators"
		617 "Mining Occupations, n.e.c."
		633 "Supervisors, Production Occupations"
		634 "Tool and Die Makers, Except Apprentices"
		635 "Tool and Die Maker Apprentices"
		636 "Precision Assemblers, Metal"
		637 "Machinists, Except Apprentices"
		639 "Machinist Apprentices"
		643 "Boilermakers"
		644 "Precision Grinders, Fitters, and Tool Sharpeners"
		645 "Patternmakers and Model Makers, Metal"
		646 "Lay-Out Workers"
		647 "Precious Stones and Metals Workers"
		649 "Engravers, Metal"
		653 "Sheet Metal Workers, Except Apprentices"
		654 "Sheet Metal Worker, Apprentices"
		655 "Miscellaneous Precision Metal Workers"
		656 "Patternmakers and Model Makers, Wood"
		657 "Cabinet Makers and Bench Carpenters"
		658 "Furniture and Wood Finishers"
		659 "Miscellaneous Precision Woodworkers"
		666 "Dressmakers"
		667 "Tailors"
		668 "Upholsterers"
		669 "Shoe Repairers"
		673 "Apparel and Fabric Patternmakers"
		674 "Miscellaneous Precision Apparel and Fabric Workers"
		675 "Hand Molders and Shapers, Except Jewelers"
		676 "Patternmakers, Lay-Out Workers, and Cutters"
		677 "Optical Goods Workers"
		678 "Dental Laboratory and Medical Appliance Technicians"
		679 "Bookbinders"
		683 "Electrical and Electronic Equipment Assemblers"
		684 "Miscellaneous Precision Workers, n.e.c."
		686 "Butchers and Meat Cutters"
		687 "Bakers"
		688 "Food Batchmakers"
		689 "Inspectors, Testers, and Graders"
		693 "Adjusters and Calibrators"
		694 "Water and Sewage Treatment Plant Operators"
		695 "Power Plant Operators"
		696 "Stationary Engineers"
		699 "Miscellaneous Plant and System Operators"
		703 "Lathe and Turning Machine Set-Up Operators"
		704 "Lathe and Turning Machine Operators"
		705 "Milling and Planing Machine Operators"
		706 "Punching and Stamping Press Machine Operators"
		707 "Rolling Machine Operators"
		708 "Drilling and Boring Machine Operators"
		709 "Grinding, Abrading, Buffing, and Polishing Machine Operators"
		713 "Forging Machine Operators"
		715 "Miscellaneous Metal, Plastic, Stone, and Glass Working Machine Operators"
		717 "Fabricating Machine Operators, n.e.c."
		719 "Molding and Casting Machine Operators"
		723 "Metal Plating Machine Operators"
		724 "Heat Treating Equipment Operators"
		725 "Miscellaneous Metal and Plastic Processing Machine Operators"
		726 "Wood Lathe, Routing and Planing Machine Operators"
		727 "Sawing Machine Operators"
		728 "Shaping and Joining Machine Operators"
		729 "Nailing and Tacking Machine Operators"
		733 "Miscellaneous Woodworking Machine Operators"
		734 "Printing Machine Operators"
		735 "Photoengravers and Lithographers"
		736 "Typesetters and Compositors"
		737 "Miscellaneous Printing Machine Operators"
		738 "Winding and Twisting Machine Operators"
		739 "Knitting, Looping, Taping, and Weaving Machine Operators"
		743 "Textile Cutting Machine Operators"
		744 "Textile Sewing Machine Operators"
		745 "Shoe Machine Operators"
		747 "Pressing Machine Operators"
		748 "Laundering and Dry Cleaning Machine Operators"
		749 "Miscellaneous Textile Machine Operators"
		753 "Cementing and Gluing Machine Operators"
		754 "Packaging and Filling Machine Operators"
		755 "Extruding and Forming Machine Operators"
		756 "Mixing and Blending Machine Operators"
		757 "Separating, Filtering, and Clarifying Machine Operators"
		758 "Compressing and Compacting Machine Operators"
		759 "Painting and Paint Spraying Machine Operators"
		763 "Roasting and Baking Machine Operators, Food"
		764 "Washing, Cleaning, and Pickling Machine Operators"
		765 "Folding Machine Operators"
		766 "Furnace, Kiln, and Oven Operators, Except Food"
		768 "Crushing and Grinding Machine Operators"
		769 "Slicing and Cutting Machine Operators"
		773 "Motion Picture Projectionists"
		774 "Photographic Process Machine Operators"
		777 "Miscellaneous and Not Specified Machine Operators, n.e.c."
		779 "Machine Operators, Not Specified"
		783 "Welders and Cutters"
		784 "Solderers and Blazers"
		785 "Assemblers"
		786 "Hand Cutting and Trimming Occupations"
		787 "Hand Molding, Casting, and Forming Occupations"
		789 "Hand Painting,Coating, and Decorating Occupations"
		793 "Hand Engraving and Printing Occupations"
		794 "Hand Grinding and Polishing Occupations"
		795 "Miscellaneous Hand Working Occupations"
		796 "Production Inspectors, Checkers, and Examiners"
		797 "Production Testers"
		798 "Production Samplers and Weighers"
		799 "Graders and Sorters, Except Agricultural"
		803 "Supervisors, Motor Vehicle Operators"
		804 "Truck Drivers, Heavy"
		805 "Truck Drivers, Light"
		806 "Driver-Sales Workers"
		808 "Bus Drivers"
		809 "Taxicab Drivers and Chauffeurs"
		813 "Parking Lot Attendants"
		814 "Motor Transportation Occupations, n.e.c."
		823 "Railroad Conductors and Yardmasters"
		824 "Locomotive Operating Occupations"
		825 "Railroad Brake, Signal, and Switch Operators"
		826 "Rail Vehicle Operators, n.e.c."
		828 "Ship Captains and Mates, Except Fishing Boats"
		829 "Sailors and Deckhands"
		833 "Marine Engineers"
		834 "Bridge, Lock and Lighthouse Tenders"
		843 "Supervisors, Material Moving Equipment Operators"
		844 "Operating Engineers"
		845 "Longshore Equipment Operators"
		848 "Hoist and Winch Operators"
		849 "Crane and Tower Operators"
		853 "Excavating and Loading Machine Operators"
		855 "Grader, Dozer, and Scraper Operators"
		856 "Industrial Truck and Tractor Equipment Operators"
		859 "Miscellaneous Material Moving Equipment Operators"
		863 "Handlers, Equipment Cleaners, Helpers, and Laborers, n.e.c."
		864 "Helpers, Mechanics and Repairers"
		865 "Helpers, Construction Trades"
		866 "Helpers, Surveyor"
		867 "Helpers, Extractive Occupations"
		869 "Construction Laborers"
		873 "Production Helpers"
		875 "Garbage Collectors"
		876 "Stevedores"
		877 "Stock Handlers and Baggers"
		878 "Machine Feeders and Offbearers"
		883 "Freight, Stock, and Material Handlers, n.e.c."
		885 "Garage and Service Station Related Occupations"
		887 "Vehicle Washers and Equipment Cleaners"
		888 "Hand Packers and Packagers"
		889 "Laborers, Except Construction"
		998 "DK"
		999 "NA";

	label define INDUS80
		0 "IAP"
		10 "Agricultural production, crops"
		11 "Agricultural production, livestock"
		20 "Agricultural services, except horticultural"
		21 "Horticultural services"
		30 "Forestry"
		31 "Fishing, hunting, and trapping, etc."
		40 "Metal mining"
		41 "Coal mining"
		42 "Crude petroleum and natural gas extraction"
		50 "Nonmetallic mining and quarrying, except fuel"
		60 "CONSTRUCTION"
		100 "Meat products"
		101 "Dairy products"
		102 "Canned and preserved fruits and vegetables"
		110 "Grain mill products"
		111 "Bakery products"
		112 "Sugar and confectionery products"
		120 "Beverage industries"
		121 "Miscellaneous food preparations and kindred   products"
		122 "Not specified food industries"
		130 "Tobacco manufactures"
		132 "Knitting mills"
		140 "Dyeing and finishing textiles, except wool and  knit goods"
		141 "Floor coverings, except hard surface"
		142 "Yarn, thread, and fabric mills"
		150 "Miscellaneous textile mill products"
		151 "Apparel and accessories, except knit"
		152 "Miscellaneous fabricated textile products"
		160 "Pulp, paper, and paperboard mills"
		161 "Miscellaneous paper and pulp products"
		162 "Paperboard containers and boxes"
		171 "Newspaper publishing and printing"
		172 "Printing, publishing, and allied   industries, except newspapers"
		180 "Plastics, synthetics, and resins"
		181 "Drugs"
		182 "Soaps and cosmetics"
		185 "Paints, varnishes, and related products"
		190 "Agricultural chemicals"
		191 "Industrial and miscellaneous chemicals"
		192 "Petroleum and coal products"
		200 "Petroleum refining"
		201 "Miscellaneous petroleum and coal products"
		210 "Tires and inner tubes"
		211 "Other rubber products, and plastics footwear and belting"
		212 "Miscellaneous plastics products"
		220 "Leather tanning and finishing"
		221 "Footwear, except rubber and plastic"
		222 "Leather products, except footwear"
		230 "Logging"
		231 "Sawmills, planning mills, and millwork"
		232 "Wood buildings and mobile homes"
		241 "Miscellaneous wood products"
		242 "Furniture and fixtures"
		250 "Glass and glass products"
		251 "Cement, concrete, gypsum, and plaster products"
		252 "Structural clay products"
		261 "Pottery and related products"
		262 "Miscellaneous nonmetallic mineral and   stone products"
		270 "Blast furnaces, steelworks, rolling and finishing mills"
		271 "Iron and steel foundries"
		272 "Primary aluminum industries"
		280 "Other primary metal industries"
		281 "Cutlery, hand tools, and other hardware"
		282 "Fabricated structural metal products"
		290 "Screw machine products"
		291 "Metal forgings and stampings"
		292 "Ordnance"
		300 "Miscellaneous fabricated metal products"
		301 "Not specified metal industries"
		310 "Engines and turbines"
		311 "Farm machinery and equipment"
		312 "Construction and material handling machines"
		320 "Metalworking machinery"
		321 "Office and accounting machines"
		322 "Electronic computing equipment"
		331 "Machinery, except electrical, n.e.c."
		332 "Not specified machinery"
		340 "Household appliances"
		341 "Radio, TV, and communication equipment"
		342 "Electrical machinery, equipment, and supplies, n.e.c."
		350 "Not specified electrical machinery,   equipment, and supplies"
		351 "Motor vehicles and motor vehicle equipment"
		352 "Aircraft and parts"
		360 "Ship and boat building and repairing"
		361 "Railroad locomotives and equipment"
		362 "Guided missiles, space vehicles, and parts"
		370 "Cycles and miscellaneous transportation equipment"
		371 "Scientific and controlling instruments"
		372 "Optical and health services supplies"
		380 "Photographic equipment and supplies"
		381 "Watches, clocks, and clockwork operated devices"
		382 "Not specified professional equipment"
		390 "Toys, amusement, and sporting goods"
		391 "Miscellaneous manufacturing industries"
		392 "Not specified manufacturing industries"
		400 "Railroads"
		401 "Bus service and urban transit"
		402 "Taxicab service"
		410 "Trucking service"
		411 "Warehousing and storage"
		412 "U.S. Postal Service"
		420 "Water transportation"
		421 "Air transportation"
		422 "Pipe lines, except natural gas"
		432 "Services incidental to transportation"
		440 "Radio and television broadcasting"
		441 "Telephone (wire and radio)"
		442 "Telegraph and miscellaneous communication service"
		460 "Electric light and power"
		461 "Gas and steam supply systems"
		462 "Electric and gas, and other combinations"
		470 "Water supply and irrigation"
		471 "Sanitary services"
		472 "Not specified utilities"
		500 "Motor vehicles and equipment"
		501 "Furniture and home furnishings"
		502 "Lumber and construction materials"
		510 "Sporting goods, toys, and hobby goods"
		511 "Metals and minerals, except petroleum"
		512 "Electrical goods"
		521 "Hardware, plumbing and heating supplies"
		522 "Not specified electrical and hardware products"
		530 "Machinery, equipment, and supplies"
		531 "Scrap and waste materials"
		532 "Miscellaneous wholesale, durable goods"
		540 "Paper and paper products"
		541 "Drugs, chemicals, and allied products"
		542 "Apparel, fabrics, and notions"
		550 "Groceries and related products"
		551 "Farm products-raw materials"
		552 "Petroleum products"
		560 "Alcoholic beverages"
		561 "Farm supplies"
		562 "Miscellaneous wholesale, nondurable goods"
		571 "Not specified wholesale trade"
		580 "Lumber and building material retailing"
		581 "Hardware stores"
		582 "Retail nurseries and garden stores"
		590 "Mobile home dealers"
		591 "Department stores"
		592 "Variety stores"
		600 "Miscellaneous general merchandise stores"
		601 "Grocery stores"
		602 "Dairy products stores"
		610 "Retail bakeries"
		611 "Food stores, n.e.c."
		612 "Motor vehicle dealers"
		620 "Auto and home supply stores"
		621 "Gasoline service stations"
		622 "Miscellaneous vehicle dealers"
		630 "Apparel and accessory stores, except shoe"
		631 "Shoe stores"
		632 "Furniture and home furnishings stores"
		640 "Household appliances, TV, and radio stores"
		641 "Eating and drinking places"
		642 "Drug stores"
		650 "Liquor stores"
		651 "Sporting goods, bicycles, and hobby stores"
		652 "Book and stationery stores"
		660 "Jewelry stores"
		661 "Sewing, needlework, and piece goods  stores"
		662 "Mail order houses"
		670 "Vending machine operators"
		671 "Direct selling establishments"
		672 "Fuel and ice dealers"
		681 "Retail florists"
		682 "Miscellaneous retail stores"
		691 "Not specified retail trade"
		700 "Banking"
		701 "Savings and loan associations"
		702 "Credit agencies, n.e.c."
		710 "Security, commodity brokerage, and investment companies"
		711 "Insurance"
		712 "Real estate, including real estate-insurance-law offices"
		721 "Advertising"
		722 "Services to dwellings and other buildings"
		730 "Commercial research, development, and testing labs"
		731 "Personnel supply services"
		732 "Business management and consulting  services"
		740 "Computer and data processing services"
		741 "Detective and protective services"
		742 "Business services, n.e.c."
		750 "Automotive services, except repair"
		751 "Automotive repair shops"
		752 "Electrical repair shops"
		760 "Miscellaneous repair services"
		761 "Private households"
		762 "Hotels and motels"
		770 "Lodging places, except hotels and motels"
		771 "Laundry, cleaning, and garment services"
		772 "Beauty shops"
		780 "Barber shops"
		781 "Funeral service and crematories"
		782 "Shoe repair shops"
		790 "Dressmaking shops"
		791 "Miscellaneous personal services"
		800 "Theaters and motion pictures"
		801 "Bowling alleys, billiard and pool parlors"
		802 "Miscellaneous entertainment and recreation services"
		812 "Offices of physicians"
		820 "Offices of dentists"
		821 "Offices of chiropractors"
		822 "Offices of optometrists"
		830 "Offices of health practitioners, n.e.c."
		831 "Hospitals"
		832 "Nursing and personal care facilities"
		840 "Health services, n.e.c."
		841 "Legal services"
		842 "Elementary and secondary schools"
		850 "Colleges and universities"
		851 "Business, trade, and vocational schools "
		852 "Libraries"
		860 "Educational services, n.e.c."
		861 "Job training and vocational rehabilitation services"
		862 "Child day care services"
		870 "Residential care facilities, without nursing"
		871 "Social services, n.e.c."
		872 "Museums, art galleries and zoos"
		880 "Religious organizations"
		881 "Membership organizations"
		882 "Engineering, architectural, and surveying services"
		890 "Accounting, auditing, and bookkeeping services"
		891 "Noncommercial educational and scientific research"
		892 "Miscellaneous professional and related services"
		900 "Executive and legislative offices"
		901 "General government, n.e.c."
		910 "Justice, public order, and safety"
		921 "Public finance, taxation, and monetary policy"
		922 "Administration of human resources programs"
		930 "Administration of environmental quality and household programs"
		931 "Administration of economic programs"
		932 "National security and international affairs"
		998 "DK"
		999 "NA";

	label define INDUS07
		0 "IAP"
		999999 "No answer";

	label define OCCONET
		0 "IAP";

	label define OCC10
		0 "IAP"
		10 "Chief executives"
		20 "General and operations managers"
		30 "Legislators"
		40 "Advertising and promotions managers"
		50 "Marketing and sales managers"
		60 "Public relations and fundraising managers"
		100 "Administrative services managers"
		110 "Computer and information systems managers"
		120 "Financial managers"
		135 "Compensation and benefits managers"
		136 "Human resources managers"
		137 "Training and development managers"
		140 "Industrial production managers"
		150 "Purchasing managers"
		160 "Transportation, storage, and distribution managers"
		205 "Farmers, ranchers, and other agricultural managers"
		220 "Construction managers"
		230 "Education administrators"
		300 "Architectural and engineering managers"
		310 "Food service managers"
		325 "Funeral service managers"
		330 "Gaming managers"
		340 "Lodging managers"
		350 "Medical and health services managers"
		360 "Natural sciences managers"
		400 "Postmasters and mail superintendents"
		410 "Property, real estate, and community association managers"
		420 "Social and community service managers"
		425 "Emergency management directors"
		430 "Managers, all other"
		500 "Agents and business managers of artists, performers,"
		510 "Buyers and purchasing agents, farm products"
		520 "Wholesale and retail buyers, except farm products"
		530 "Purchasing agents, except wholesale, retail, and farm products"
		540 "Claims adjusters, appraisers, examiners, and investigators"
		565 "Compliance officers"
		600 "Cost estimators"
		630 "Human resources workers"
		640 "Compensation, benefits, and job analysis specialists"
		650 "Training and development specialists"
		700 "Logisticians"
		710 "Management analysts"
		725 "Meeting, convention, and event planners"
		726 "Fundraisers"
		735 "Market research analysts and marketing specialists"
		740 "Business operations specialists, all other"
		800 "Accountants and auditors"
		810 "Appraisers and assessors of real estate"
		820 "Budget analysts"
		830 "Credit analysts"
		840 "Financial analysts"
		850 "Personal financial advisors"
		860 "Insurance underwriters"
		900 "Financial examiners"
		910 "Credit counselors and loan officers"
		930 "Tax examiners and collectors, and revenue agents"
		940 "Tax preparers"
		950 "Financial specialists, all other"
		1005 "Computer and information research scientists"
		1006 "Computer systems analysts"
		1007 "Information security analysts"
		1010 "Computer programmers"
		1020 "Software developers, applications and systems software"
		1030 "Web developers"
		1050 "Computer support specialists"
		1060 "Database administrators"
		1105 "Network and computer systems administrators"
		1106 "Computer network architects"
		1107 "Computer occupations, all other"
		1200 "Actuaries"
		1210 "Mathematicians"
		1220 "Operations research analysts"
		1230 "Statisticians"
		1240 "Miscellaneous mathematical science occupations"
		1300 "Architects, except naval"
		1310 "Surveyors, cartographers, and photogrammetrists"
		1320 "Aerospace engineers"
		1330 "Agricultural engineers"
		1340 "Biomedical engineers"
		1350 "Chemical engineers"
		1360 "Civil engineers"
		1400 "Computer hardware engineers"
		1410 "Electrical and electronics engineers"
		1420 "Environmental engineers"
		1430 "Industrial engineers, including health and safety"
		1440 "Marine engineers and naval architects"
		1450 "Materials engineers"
		1460 "Mechanical engineers"
		1500 "Mining and geological engineers, including mining safety engineers"
		1510 "Nuclear engineers"
		1520 "Petroleum engineers"
		1530 "Engineers, all other"
		1540 "Drafters"
		1550 "Engineering technicians, except drafters"
		1560 "Surveying and mapping technicians"
		1600 "Agricultural and food scientists"
		1610 "Biological scientists"
		1640 "Conservation scientists and foresters"
		1650 "Medical scientists"
		1660 "Life scientists, all other"
		1700 "Astronomers and physicists"
		1710 "Atmospheric and space scientists"
		1720 "Chemists and materials scientists"
		1740 "Environmental scientists and geoscientists"
		1760 "Physical scientists, all other"
		1800 "Economists"
		1815 "Survey researchers"
		1820 "Psychologists"
		1830 "Sociologists"
		1840 "Urban and regional planners"
		1860 "Miscellaneous social scientists and related workers"
		1900 "Agricultural and food science technicians"
		1910 "Biological technicians"
		1920 "Chemical technicians"
		1930 "Geological and petroleum technicians"
		1940 "Nuclear technicians"
		1950 "Social science research assistants"
		1965 "Miscellaneous life, physical, and social science technicians"
		2000 "Counselors"
		2010 "Social workers"
		2015 "Probation officers and correctional treatment specialists"
		2016 "Social and human service assistants"
		2025 "Miscellaneous community and social service specialists,"
		2040 "Clergy"
		2050 "Directors, religious activities and education"
		2060 "Religious workers, all other"
		2100 "Lawyers"
		2105 "Judicial law clerks"
		2110 "Judges, magistrates, and other judicial workers"
		2145 "Paralegals and legal assistants"
		2160 "Miscellaneous legal support workers"
		2200 "Postsecondary teachers"
		2300 "Preschool and kindergarten teachers"
		2310 "Elementary and middle school teachers"
		2320 "Secondary school teachers"
		2330 "Special education teachers"
		2340 "Other teachers and instructors"
		2400 "Archivists, curators, and museum technicians"
		2430 "Librarians"
		2440 "Library technicians"
		2540 "Teacher assistants"
		2550 "Other education, training, and library workers"
		2600 "Artists and related workers"
		2630 "Designers"
		2700 "Actors"
		2710 "Producers and directors"
		2720 "Athletes, coaches, umpires, and related workers"
		2740 "Dancers and choreographers"
		2750 "Musicians, singers, and related workers"
		2760 "Entertainers and performers, sports and related workers, all other"
		2800 "Announcers"
		2810 "News analysts, reporters and correspondents"
		2825 "Public relations specialists"
		2830 "Editors"
		2840 "Technical writers"
		2850 "Writers and authors"
		2860 "Miscellaneous media and communication  workers"
		2900 "Broadcast and sound engineering technicians and radio"
		2910 "Photographers"
		2920 "Television, video, and motion picture camera operators and"
		2960 "Media and communication  equipment workers, all other"
		3000 "Chiropractors"
		3010 "Dentists"
		3030 "Dietitians and nutritionists"
		3040 "Optometrists"
		3050 "Pharmacists"
		3060 "Physicians and surgeons"
		3110 "Physician assistants"
		3120 "Podiatrists"
		3140 "Audiologists"
		3150 "Occupational therapists"
		3160 "Physical therapists"
		3200 "Radiation therapists"
		3210 "Recreational therapists"
		3220 "Respiratory therapists"
		3230 "Speech-language  pathologists"
		3235 "Exercise physiologists"
		3245 "Therapists, all other"
		3250 "Veterinarians"
		3255 "Registered nurses"
		3256 "Nurse anesthetists"
		3257 "Nurse midwives"
		3258 "Nurse practitioners"
		3260 "Health diagnosing and treating practitioners, all other"
		3300 "Clinical laboratory technologists and technicians"
		3310 "Dental hygienists"
		3320 "Diagnostic related technologists and technicians"
		3400 "Emergency medical technicians and paramedics"
		3420 "Health practitioner support technologists and technicians"
		3500 "Licensed practical and licensed vocational nurses"
		3510 "Medical records and health information technicians"
		3520 "Opticians, dispensing"
		3535 "Miscellaneous health technologists and technicians"
		3540 "Other healthcare practitioners and technical occupations"
		3600 "Nursing, psychiatric, and home health aides"
		3610 "Occupational therapy assistants and aides"
		3620 "Physical therapist assistants and aides"
		3630 "Massage therapists"
		3640 "Dental assistants"
		3645 "Medical assistants"
		3646 "Medical transcriptionists"
		3647 "Pharmacy aides"
		3648 "Veterinary assistants and laboratory animal caretakers"
		3649 "Phlebotomists"
		3655 "Miscellaneous healthcare support occupations, including medical equipment preparers"
		3700 "First-line supervisors of correctional officers"
		3710 "First-line supervisors of police and detectives"
		3720 "First-line supervisors of fire fighting and prevention workers"
		3730 "First-line supervisors of protective service workers, all other"
		3740 "Firefighters"
		3750 "Fire inspectors"
		3800 "Bailiffs, correctional officers, and jailers"
		3820 "Detectives and criminal investigators"
		3830 "Fish and game wardens"
		3840 "Parking enforcement workers"
		3850 "Police and sheriff's patrol officers"
		3860 "Transit and railroad police"
		3900 "Animal control workers"
		3910 "Private detectives and investigators"
		3930 "Security guards and gaming surveillance officers"
		3940 "Crossing guards"
		3945 "Transportation security screeners"
		3955 "Lifeguards and other recreational, and all other protective service workers"
		4000 "Chefs and head cooks"
		4010 "First-line supervisors of food preparation and serving workers"
		4020 "Cooks"
		4030 "Food preparation workers"
		4040 "Bartenders"
		4050 "Combined food preparation and serving workers, including fast food"
		4060 "Counter attendants, cafeteria, food concession, and coffee shop"
		4110 "Waiters and waitresses"
		4120 "Food servers, nonrestaurant"
		4130 "Dining room and cafeteria attendants and bartender helpers"
		4140 "Dishwashers"
		4150 "Hosts and hostesses, restaurant, lounge, and coffee shop"
		4160 "Food preparation and serving related workers, all other"
		4200 "First-line supervisors of housekeeping and janitorial workers"
		4210 "First-line supervisors of landscaping, lawn service, and groundskeeping workers"
		4220 "Janitors and building cleaners"
		4230 "Maids and housekeeping cleaners"
		4240 "Pest control workers"
		4250 "Grounds maintenance workers"
		4300 "First-line supervisors of gaming workers"
		4320 "First-line supervisors of personal service workers"
		4340 "Animal trainers"
		4350 "Nonfarm animal caretakers"
		4400 "Gaming services workers"
		4410 "Motion picture projectionists"
		4420 "Ushers, lobby attendants, and ticket takers"
		4430 "Miscellaneous entertainment attendants and related workers"
		4460 "Embalmers and funeral attendants"
		4465 "Morticians, undertakers, and funeral directors"
		4500 "Barbers"
		4510 "Hairdressers, hairstylists, and cosmetologists"
		4520 "Miscellaneous personal appearance workers"
		4530 "Baggage porters, bellhops, and concierges"
		4540 "Tour and travel guides"
		4600 "Childcare workers"
		4610 "Personal care aides"
		4620 "Recreation and fitness workers"
		4640 "Residential advisors"
		4650 "Personal care and service workers, all other"
		4700 "First-line supervisors of retail sales workers"
		4710 "First-line supervisors of non-retail sales workers"
		4720 "Cashiers"
		4740 "Counter and rental clerks"
		4750 "Parts salespersons"
		4760 "Retail salespersons"
		4800 "Advertising sales agents"
		4810 "Insurance sales agents"
		4820 "Securities, commodities, and financial services sales agents"
		4830 "Travel agents"
		4840 "Sales representatives, services, all other"
		4850 "Sales representatives,  wholesale and manufacturing"
		4900 "Models, demonstrators, and product promoters"
		4920 "Real estate brokers and sales agents"
		4930 "Sales engineers"
		4940 "Telemarketers"
		4950 "Door-to-door sales workers, news and street vendors, and related workers"
		4965 "Sales and related workers, all other"
		5000 "First-line supervisors of office and administrative support workers"
		5010 "Switchboard operators, including answering service"
		5020 "Telephone operators"
		5030 "Communications  equipment operators, all other"
		5100 "Bill and account collectors"
		5110 "Billing and posting clerks"
		5120 "Bookkeeping, accounting, and auditing clerks"
		5130 "Gaming cage workers"
		5140 "Payroll and timekeeping clerks"
		5150 "Procurement clerks"
		5160 "Tellers"
		5165 "Financial clerks, all other"
		5200 "Brokerage clerks"
		5210 "Correspondence clerks"
		5220 "Court, municipal, and license clerks"
		5230 "Credit authorizers, checkers, and clerks"
		5240 "Customer service representatives"
		5250 "Eligibility interviewers, government programs"
		5260 "File Clerks"
		5300 "Hotel, motel, and resort desk clerks"
		5310 "Interviewers, except eligibility and loan"
		5320 "Library assistants, clerical"
		5330 "Loan interviewers and clerks"
		5340 "New accounts clerks"
		5350 "Order clerks"
		5360 "Human resources assistants, except payroll and timekeeping"
		5400 "Receptionists and information clerks"
		5410 "Reservation and transportation ticket agents and travel clerks"
		5420 "Information and record clerks, all other"
		5500 "Cargo and freight agents"
		5510 "Couriers and messengers"
		5520 "Dispatchers"
		5530 "Meter readers, utilities"
		5540 "Postal service clerks"
		5550 "Postal service mail carriers"
		5560 "Postal service mail sorters, processors, and processing  machine operators"
		5600 "Production, planning, and expediting clerks"
		5610 "Shipping, receiving, and traffic clerks"
		5620 "Stock clerks and order fillers"
		5630 "Weighers, measurers, checkers, and samplers, recordkeeping"
		5700 "Secretaries and administrative assistants"
		5800 "Computer operators"
		5810 "Data entry keyers"
		5820 "Word processors and typists"
		5830 "Desktop publishers"
		5840 "Insurance claims and policy processing clerks"
		5850 "Mail clerks and mail machine operators, except postal service"
		5860 "Office clerks, general"
		5900 "Office machine operators, except computer"
		5910 "Proofreaders and copy markers"
		5920 "Statistical assistants"
		5940 "Office and administrative support workers, all other"
		6005 "First-line supervisors of farming, fishing, and forestry workers"
		6010 "Agricultural inspectors"
		6020 "Animal breeders"
		6040 "Graders and sorters, agricultural products"
		6050 "Miscellaneous agricultural workers"
		6100 "Fishers and related fishing workers"
		6110 "Hunters and trappers"
		6120 "Forest and conservation workers"
		6130 "Logging workers"
		6200 "First-line supervisors of construction trades and extraction workers"
		6210 "Boilermakers"
		6220 "Brickmasons, blockmasons, and stonemasons"
		6230 "Carpenters"
		6240 "Carpet, floor, and tile installers and finishers"
		6250 "Cement masons, concrete finishers, and terrazzo workers"
		6260 "Construction laborers"
		6300 "Paving, surfacing, and tamping equipment operators"
		6310 "Pile-driver operators"
		6320 "Operating engineers and other construction equipment  operators"
		6330 "Drywall installers, ceiling tile installers, and tapers"
		6355 "Electricians"
		6360 "Glaziers"
		6400 "Insulation workers"
		6420 "Painters, construction and maintenance"
		6430 "Paperhangers"
		6440 "Pipelayers, plumbers, pipefitters, and steamfitters"
		6460 "Plasterers and stucco masons"
		6500 "Reinforcing iron and rebar workers"
		6515 "Roofers"
		6520 "Sheet metal workers"
		6530 "Structural iron and steel workers"
		6540 "Solar photovoltaic installers"
		6600 "Helpers, construction trades"
		6660 "Construction and building inspectors"
		6700 "Elevator installers and repairers"
		6710 "Fence erectors"
		6720 "Hazardous materials removal workers"
		6730 "Highway maintenance workers"
		6740 "Rail-track laying and maintenance equipment operators"
		6750 "Septic tank servicers and sewer pipe cleaners"
		6765 "Miscellaneous construction and related workers"
		6800 "Derrick, rotary drill, and service unit operators, oil, gas, and mining"
		6820 "Earth drillers, except oil and gas"
		6830 "Explosives workers, ordnance handling experts, and blasters"
		6840 "Mining machine operators"
		6910 "Roof bolters, mining"
		6920 "Roustabouts, oil and gas"
		6930 "Helpers—extraction workers"
		6940 "Other extraction workers"
		7000 "First-line supervisors of mechanics, installers, and repairers"
		7010 "Computer, automated teller, and office machine repairers"
		7020 "Radio and telecommunications equipment installers and repairers"
		7030 "Avionics technicians"
		7040 "Electric motor, power tool, and related repairers"
		7050 "Electrical and electronics installers and repairers, transportation"
		7100 "Electrical and electronics repairers, industrial and utility"
		7110 "Electronic equipment installers and repairers, motor vehicles"
		7120 "Electronic home entertainment equipment installers and repairers"
		7130 "Security and fire alarm systems installers"
		7140 "Aircraft mechanics and service technicians"
		7150 "Automotive body and related repairers"
		7160 "Automotive glass installers and repairers"
		7200 "Automotive service technicians and mechanics"
		7210 "Bus and truck mechanics and diesel engine specialists"
		7220 "Heavy vehicle and mobile equipment service technicians and mechanics"
		7240 "Small engine mechanics"
		7260 "Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers"
		7300 "Control and valve installers and repairers"
		7315 "Heating, air conditioning, and refrigeration mechanics and installers"
		7320 "Home appliance repairers"
		7330 "Industrial and refractory machinery mechanics"
		7340 "Maintenance and repair workers, general"
		7350 "Maintenance workers, machinery"
		7360 "Millwrights"
		7410 "Electrical power-line installers and repairers"
		7420 "Telecommunications  line installers and repairers"
		7430 "Precision instrument and equipment repairers"
		7440 "Wind turbine service technicians"
		7510 "Coin, vending, and amusement machine servicers and repairers"
		7520 "Commercial divers"
		7540 "Locksmiths and safe repairers"
		7550 "Manufactured building and mobile home installers"
		7560 "Riggers"
		7600 "Signal and track switch repairers"
		7610 "Helpers—installation,  maintenance, and repair workers"
		7630 "Other installation, maintenance, and repair workers"
		7700 "First-line supervisors of production and operating workers"
		7710 "Aircraft structure, surfaces, rigging, and systems assemblers"
		7720 "Electrical, electronics, and electromechanical assemblers"
		7730 "Engine and other machine assemblers"
		7740 "Structural metal fabricators and fitters"
		7750 "Miscellaneous assemblers and fabricators"
		7800 "Bakers"
		7810 "Butchers and other meat, poultry, and fish processing workers"
		7830 "Food and tobacco roasting, baking, and drying machine operators and tenders"
		7840 "Food batchmakers"
		7850 "Food cooking machine operators and tenders"
		7855 "Food processing workers, all other"
		7900 "Computer control programmers and operators"
		7920 "Extruding and drawing machine setters, operators, and tenders,  metal and plastic"
		7930 "Forging machine setters, operators, and tenders, metal and plastic"
		7940 "Rolling machine setters, operators, and tenders, metal and plastic"
		7950 "Cutting, punching, and press machine setters, operators, and tenders, metal and plastic"
		7960 "Drilling and boring machine tool setters, operators, and tenders,  metal and plastic"
		8000 "Grinding, lapping, polishing, and buffing machine tool setters,  operators, and tenders, metal and plastic"
		8010 "Lathe and turning machine tool setters, operators, and tenders, metal and plastic"
		8020 "Milling and planing machine setters, operators, and tenders, metal  and plastic"
		8030 "Machinists"
		8040 "Metal furnace operators, tenders, pourers, and casters"
		8060 "Model makers and patternmakers, metal and plastic"
		8100 "Molders and molding machine setters, operators, and tenders, metal and plastic"
		8120 "Multiple machine tool setters, operators, and tenders, metal and plastic"
		8130 "Tool and die makers"
		8140 "Welding, soldering, and brazing workers"
		8150 "Heat treating equipment setters, operators, and tenders, metal and plastic"
		8160 "Layout workers, metal and plastic"
		8200 "Plating and coating machine setters, operators, and tenders, metal  and plastic"
		8210 "Tool grinders, filers, and sharpeners"
		8220 "Metal workers and plastic workers, all other"
		8250 "Prepress technicians and workers"
		8255 "Printing press operators"
		8256 "Print binding and finishing workers"
		8300 "Laundry and dry-cleaning workers"
		8310 "Pressers, textile, garment, and related materials"
		8320 "Sewing machine operators"
		8330 "Shoe and leather workers and repairers"
		8340 "Shoe machine operators and tenders"
		8350 "Tailors, dressmakers, and sewers"
		8360 "Textile bleaching and dyeing machine operators and tenders"
		8400 "Textile cutting machine setters, operators, and tenders"
		8410 "Textile knitting and weaving machine setters, operators, and tenders"
		8420 "Textile winding, twisting, and drawing out machine setters, operators,  and tenders"
		8430 "Extruding and forming machine setters, operators, and tenders,  synthetic and glass fibers"
		8440 "Fabric and apparel patternmakers"
		8450 "Upholsterers"
		8460 "Textile, apparel, and furnishings workers, all other"
		8500 "Cabinetmakers and bench carpenters"
		8510 "Furniture finishers"
		8520 "Model makers and patternmakers, wood"
		8530 "Sawing machine setters, operators, and tenders, wood"
		8540 "Woodworking machine setters, operators, and tenders, except sawing"
		8550 "Woodworkers, all other"
		8600 "Power plant operators, distributors, and dispatchers"
		8610 "Stationary engineers and boiler operators"
		8620 "Water and wastewater treatment plant and system operators"
		8630 "Miscellaneous plant and system operators"
		8640 "Chemical processing machine setters, operators, and tenders"
		8650 "Crushing, grinding, polishing, mixing, and blending workers"
		8710 "Cutting workers"
		8720 "Extruding, forming, pressing, and compacting machine setters,"
		8730 "    operators, and tenders Furnace, kiln, oven, drier, and kettle operators and tenders"
		8740 "Inspectors, testers, sorters, samplers, and weighers"
		8750 "Jewelers and precious stone and metal workers"
		8760 "Medical, dental, and ophthalmic laboratory technicians"
		8800 "Packaging and filling machine operators and tenders"
		8810 "Painting workers"
		8830 "Photographic process workers and processing machine operators"
		8840 "Semiconductor processors"
		8850 "Adhesive bonding machine operators and tenders"
		8860 "Cleaning, washing, and metal pickling equipment operators and tenders"
		8900 "Cooling and freezing equipment operators and tenders"
		8910 "Etchers and engravers"
		8920 "Molders, shapers, and casters, except metal and plastic"
		8930 "Paper goods machine setters, operators, and tenders"
		8940 "Tire builders"
		8950 "Helpers—production workers"
		8965 "Production workers, all other"
		9000 "Supervisors of transportation and material moving workers"
		9030 "Aircraft pilots and flight engineers"
		9040 "Air traffic controllers and airfield operations specialists"
		9050 "Flight attendants"
		9110 "Ambulance drivers and attendants, except emergency medical  technicians"
		9120 "Bus drivers"
		9130 "Driver/sales workers and truck drivers"
		9140 "Taxi drivers and chauffeurs"
		9150 "Motor vehicle operators, all other"
		9200 "Locomotive engineers and operators"
		9230 "Railroad brake, signal, and switch operators"
		9240 "Railroad conductors and yardmasters"
		9260 "Subway, streetcar, and other rail transportation workers"
		9300 "Sailors and marine oilers"
		9310 "Ship and boat captains and operators"
		9330 "Ship engineers"
		9340 "Bridge and lock tenders"
		9350 "Parking lot attendants"
		9360 "Automotive and watercraft service attendants"
		9410 "Transportation inspectors"
		9415 "Transportation attendants, except flight attendants"
		9420 "Other transportation workers"
		9500 "Conveyor operators and tenders"
		9510 "Crane and tower operators"
		9520 "Dredge, excavating, and loading machine operators"
		9560 "Hoist and winch operators"
		9600 "Industrial truck and tractor operators"
		9610 "Cleaners of vehicles and equipment"
		9620 "Laborers and freight, stock, and material movers, hand"
		9630 "Machine feeders and offbearers"
		9640 "Packers and packagers, hand"
		9650 "Pumping station operators"
		9720 "Refuse and recyclable material collectors"
		9730 "Mine shuttle car operators"
		9740 "Tank car, truck, and ship loaders"
		9750 "Material moving workers, all other"
		9800 "Military officer special and tactical operations leaders"
		9810 "First-line enlisted military supervisors"
		9820 "Military enlisted tactical operations and air/weapons specialists and crew members"
		9830 "Military, rank not specified"
		9998 "DK"
		9999 "NA";

	label define PRESTG10
		0 "IAP,DK,NA";

	label define INDUS10
		0 "Not applicable"
		170 "Crop production"
		180 "Animal production"
		190 "Forestry, except logging"
		270 "Logging"
		280 "Fishing, hunting, and trapping"
		290 "Support activities for agriculture and forestry"
		370 "Oil and gas extraction"
		380 "Coal mining"
		390 "Metal ore mining"
		470 "Nonmetallic mineral mining and quarrying"
		480 "Not specified type of mining"
		490 "Support activities for mining"
		570 "Electric power generation, transmission, and distribution"
		580 "Natural gas distribution"
		590 "Electric and gas, and other combinations"
		670 "Water, steam, air-conditioning, and irrigation systems"
		680 "Sewage treatment facilities"
		690 "Not specified utilities"
		770 "Construction"
		1070 "Animal food, grain, and oilseed milling"
		1080 "Sugar and confectionery products"
		1090 "Fruit and vegetable preserving and specialty food manufacturing"
		1170 "Dairy product manufacturing"
		1180 "Animal slaughtering and processing"
		1190 "Retail bakeries"
		1270 "Bakeries, except retail"
		1280 "Seafood and other miscellaneous foods, n.e.c."
		1290 "Not specified food industries"
		1370 "Beverage manufacturing"
		1390 "Tobacco manufacturing"
		1470 "Fiber, yarn, and thread mills"
		1480 "Fabric mills, except knitting mills"
		1490 "Textile and fabric finishing and coating mills"
		1570 "Carpet and rug mills"
		1590 "Textile product mills, except carpet and rug"
		1670 "Knitting fabric mills, and apparel knitting mills"
		1680 "Cut and sew apparel manufacturing"
		1690 "Apparel accessories and other apparel manufacturing"
		1770 "Footwear manufacturing"
		1790 "Leather tanning and finishing and other allied products manufacturing"
		1870 "Pulp, paper, and paperboard mills"
		1880 "Paperboard containers and boxes"
		1890 "Miscellaneous paper and pulp products"
		1990 "Printing and related support activities"
		2070 "Petroleum refining"
		2090 "Miscellaneous petroleum and coal products"
		2170 "Resin, synthetic rubber and fibers, and filaments manufacturing"
		2180 "Agricultural chemical manufacturing"
		2190 "Pharmaceutical and medicine manufacturing"
		2270 "Paint, coating, and adhesive manufacturing"
		2280 "Soap, cleaning compound, and cosmetics manufacturing"
		2290 "Industrial and miscellaneous chemicals"
		2370 "Plastics product manufacturing"
		2380 "Tire manufacturing"
		2390 "Rubber product, except tire, manufacturing"
		2470 "Pottery, ceramics, and plumbing fixture manufacturing"
		2480 "Structural clay product manufacturing"
		2490 "Glass and glass product manufacturing"
		2570 "Cement, concrete, lime, and gypsum product manufacturing"
		2590 "Miscellaneous nonmetallic mineral product manufacturing"
		2670 "Iron and steel mills and steel product manufacturing "
		2680 "Aluminum production and processing"
		2690 "Nonferrous metal (except aluminum) production and processing"
		2770 "Foundries"
		2780 "Metal forgings and stampings"
		2790 "Cutlery and hand tool manufacturing"
		2870 "Structural metals, and boiler, tank, and shipping container manufacturing"
		2880 "Machine shops; turned product; screw, nut, and bolt manufacturing"
		2890 "Coating, engraving, heat treating and allied activities"
		2970 "Ordnance"
		2980 "Miscellaneous fabricated metal products manufacturing"
		2990 "Not specified metal industries"
		3070 "Agricultural implement manufacturing"
		3080 "Construction, and mining and oil and gas field machinery manufacturing    "
		3090 "Commercial and service industry machinery manufacturing"
		3170 "Metalworking machinery manufacturing   "
		3180 "Engines, turbines, and power transmission equipment manufacturing      "
		3190 "Machinery manufacturing, n.e.c.    "
		3290 "Not specified machinery manufacturing        "
		3360 "Computer and peripheral equipment manufacturing    "
		3370 "Communications, and audio and video equipment manufacturing        "
		3380 "Navigational, measuring, electromedical, and control instruments manufacturing"
		3390 "Electronic component and product manufacturing, n.e.c."
		3470 "Household appliance manufacturing"
		3490 "Electrical lighting and electrical equipment manufacturing, and other electrical component manufacturing, n.e.c."
		3570 "Motor vehicles and motor vehicle equipment manufacturing"
		3580 "Aircraft and parts manufacturing"
		3590 "Aerospace product and parts manufacturing"
		3670 "Railroad rolling stock manufacturing"
		3680 "Ship and boat building"
		3690 "Other transportation equipment manufacturing"
		3770 "Sawmills and wood preservation"
		3780 "Veneer, plywood, and engineered wood products"
		3790 "Prefabricated wood buildings and mobile homes"
		3870 "Miscellaneous wood products"
		3890 "Furniture and related product manufacturing"
		3960 "Medical equipment and supplies manufacturing"
		3970 "Sporting and athletic goods, and doll, toy and game manufacturing"
		3980 "Miscellaneous manufacturing, n.e.c."
		3990 "Not specified manufacturing industries"
		4070 "Motor vehicles, parts and supplies, merchant wholesalers"
		4080 "Furniture and home furnishing, merchant wholesalers"
		4090 "Lumber and other construction materials, merchant wholesalers"
		4170 "Professional and commercial equipment and supplies, merchant wholesalers"
		4180 "Metals and minerals, except petroleum, merchant wholesalers"
		4190 "Electrical and electronic goods, merchant wholesalers"
		4260 "Hardware, plumbing and heating equipment, and supplies, merchant wholesalers"
		4270 "Machinery, equipment, and supplies, merchant wholesalers"
		4280 "Recyclable material, merchant wholesalers"
		4290 "Miscellaneous durable goods, merchant wholesalers"
		4370 "Paper and paper products, merchant wholesalers"
		4380 "Drugs, sundries, and chemical and allied products, merchant wholesalers"
		4390 "Apparel, fabrics, and notions, merchant wholesalers"
		4470 "Groceries and related products, merchant wholesalers"
		4480 "Farm product raw materials, merchant wholesalers "
		4490 "Petroleum and petroleum products, merchant wholesalers"
		4560 "Alcoholic beverages, merchant wholesalers"
		4570 "Farm supplies, merchant wholesalers"
		4580 "Miscellaneous nondurable goods, merchant wholesalers"
		4585 "Wholesale electronic markets, agents and brokers"
		4590 "Not specified wholesale trade"
		4670 "Automobile dealers"
		4680 "Other motor vehicle dealers"
		4690 "Auto parts, accessories, and tire stores"
		4770 "Furniture and home furnishings stores"
		4780 "Household appliance stores"
		4790 "Radio, TV, and computer stores"
		4870 "Building material and supplies dealers"
		4880 "Hardware stores"
		4890 "Lawn and garden equipment and supplies stores"
		4970 "Grocery stores"
		4980 "Specialty food stores"
		4990 "Beer, wine, and liquor stores"
		5070 "Pharmacies and drug stores"
		5080 "Health and personal care, except drug, stores"
		5090 "Gasoline stations"
		5170 "Clothing stores"
		5180 "Shoe stores"
		5190 "Jewelry, luggage, and leather goods stores"
		5270 "Sporting goods, camera, and hobby and toy stores"
		5280 "Sewing, needlework, and piece goods stores"
		5290 "Music stores"
		5370 "Book stores and news dealers"
		5380 "Department stores and discount stores"
		5390 "Miscellaneous general merchandise stores"
		5470 "Retail florists"
		5480 "Office supplies and stationery stores"
		5490 "Used merchandise stores"
		5570 "Gift, novelty, and souvenir shops"
		5580 "Miscellaneous retail stores"
		5590 "Electronic shopping"
		5591 "Electronic auctions"
		5592 "Mail order houses"
		5670 "Vending machine operators"
		5680 "Fuel dealers"
		5690 "Other direct selling establishments"
		5790 "Not specified retail trade"
		6070 "Air transportation"
		6080 "Rail transportation"
		6090 "Water transportation"
		6170 "Truck transportation"
		6180 "Bus service and urban transit"
		6190 "Taxi and limousine service"
		6270 "Pipeline transportation"
		6280 "Scenic and sightseeing transportation"
		6290 "Services incidental to transportation"
		6370 "Postal Service"
		6380 "Couriers and messengers"
		6390 "Warehousing and storage"
		6470 "Newspaper publishers"
		6480 "Periodical, book, and directory publishers"
		6490 "Software publishers"
		6570 "Motion pictures and video industries"
		6590 "Sound recording industries"
		6670 "Radio and television broadcasting and cable subscription programming"
		6672 "Internet publishing and broadcasting and web search portals"
		6680 "Wired telecommunications carriers"
		6690 "Other telecommunications services"
		6695 "Data processing, hosting, and related services"
		6770 "Libraries and archives"
		6780 "Other information services"
		6870 "Banking and related activities"
		6880 "Savings institutions, including credit unions"
		6890 "Non-depository credit and related activities"
		6970 "Securities, commodities, funds, trusts, and other financial investments"
		6990 "Insurance carriers and related activities"
		7070 "Real estate"
		7080 "Automotive equipment rental and leasing"
		7170 "Video tape and disk rental"
		7180 "Other consumer goods rental"
		7190 "Commercial, industrial, and other intangible assets rental and leasing"
		7270 "Legal services"
		7280 "Accounting, tax preparation, bookkeeping, and payroll services"
		7290 "Architectural, engineering, and related services"
		7370 "Specialized design services"
		7380 "Computer systems design and related services"
		7390 "Management, scientific, and technical consulting services"
		7460 "Scientific research and development services"
		7470 "Advertising and related services"
		7480 "Veterinary services"
		7490 "Other professional, scientific, and technical services"
		7570 "Management of companies and enterprises"
		7580 "Employment services"
		7590 "Business support services"
		7670 "Travel arrangements and reservation services"
		7680 "Investigation and security services"
		7690 "Services to buildings and dwellings"
		7770 "Landscaping services"
		7780 "Other administrative and other support services"
		7790 "Waste management and remediation services"
		7860 "Elementary and secondary schools"
		7870 "Colleges and universities, including junior colleges"
		7880 "Business, technical, and trade schools and training"
		7890 "Other schools and instruction, and educational support services"
		7970 "Offices of physicians"
		7980 "Offices of dentists"
		7990 "Offices of chiropractors"
		8070 "Offices of optometrists"
		8080 "Offices of other health practitioners"
		8090 "Outpatient care centers"
		8170 "Home health care services"
		8180 "Other health care services"
		8190 "Hospitals"
		8270 "Nursing care facilities"
		8290 "Residential care facilities, without nursing"
		8370 "Individual and family services"
		8380 "Community food and housing, and emergency services"
		8390 "Vocational rehabilitation services"
		8470 "Child day care services"
		8560 "Independent artists, performing arts, spectator sports, and related industries"
		8570 "Museums, art galleries, historical sites, and similar institutions"
		8580 "Bowling centers"
		8590 "Other amusement, gambling, and recreation industries"
		8660 "Traveler accommodation"
		8670 "Recreational vehicle parks and camps, and rooming and boarding houses"
		8680 " Restaurants and other food services"
		8690 "Drinking places, alcoholic beverages"
		8770 "Automotive repair and maintenance"
		8780 "Car washes"
		8790 "Electronic and precision equipment repair and maintenance"
		8870 "Commercial and industrial machinery and equipment repair and maintenance"
		8880 "Personal and household goods repair and maintenance"
		8890 "Footwear and leather goods repair"
		8970 "Barber shops"
		8980 "Beauty salons"
		8990 "Nail salons and other personal care services"
		9070 "Drycleaning and laundry services"
		9080 "Funeral homes, and cemeteries and crematories"
		9090 "Other personal services"
		9160 "Religious organizations"
		9170 "Civic, social, advocacy organizations, and grantmaking and giving services"
		9180 "Labor unions"
		9190 "Business, professional, political, and similar organizations"
		9290 "Private households"
		9370 "Executive offices and legislative bodies"
		9380 "Public finance activities"
		9390 "Other general government and support"
		9470 "Justice, public order, and safety activities"
		9480 "Administration of human resource programs"
		9490 "Administration of environmental quality and housing programs"
		9570 "Administration of economic programs and space research"
		9590 "National security and international affairs"
		9670 "U.S. Army"
		9680 "U.S. Air Force"
		9690 "U.S. Navy"
		9770 "U.S. Marine Corps"
		9780 "U.S. Coast Guard"
		9790 "U.S. Armed Forces/n.s."
		9870 "Active duty military personnel, all other"
		9999 "No answer";

	label define MARITAL
		1 "MARRIED"
		2 "WIDOWED"
		3 "DIVORCED"
		4 "SEPARATED"
		5 "NEVER MARRIED"
		9 "NA";

	label define MARTYPE
		0 "IAP"
		1 "Marriage between a man and a woman"
		2 "Marriage between people of the same gender";

	label define AGEWED
		0 "IAP"
		98 "DK"
		99 "NA";

	label define PAOCC16
		0 "IAP"
		990 "NA"
		998 "DK";

	label define PAIND16
		0 "IAP"
		990 "NA"
		998 "DK"
		999 "NA";

	label define CHILDS
		8 "EIGHT OR MORE"
		9 "DK NA";

	label define AGE
		89 "89 OR OLDER"
		98 "DK"
		99 "NA";

	label define EDUC
		97 "IAP"
		98 "DK"
		99 "NA";

	label define DEGREE
		0 "LT HIGH SCHOOL"
		1 "HIGH SCHOOL"
		2 "JUNIOR COLLEGE"
		3 "BACHELOR"
		4 "GRADUATE"
		7 "IAP"
		8 "DK"
		9 "NA";

	label define MAJOR1
		0 "IAP"
		1 "ACCOUNTING/BOOKKEEPING"
		2 "ADVERTISING"
		3 "AGRICULTURE/HORTICULTURE"
		4 "ALLIED HEALTH"
		5 "ANTHROPOLGY"
		6 "ARCHITECTURE"
		7 "ART"
		8 "BIOLOGY"
		9 "BUSINESS ADMINISTRATION"
		11 "CHEMISTRY"
		12 "COMMUNICATIONS/SPEECH"
		13 "COMM. DISORDERS"
		14 "COMPUTER SCIENCE"
		15 "DENTISTRY"
		16 "EDUCATION"
		17 "ECONOMICS"
		18 "ENGINEERING"
		19 "ENGLISH"
		20 "FINANCE"
		21 "FOREIGN LANGUAGE"
		22 "FORESTRY"
		23 "GEOGRAPHY"
		24 "GEOLOGY"
		25 "HISTORY"
		26 "HOME ECONOMICS"
		27 "INDUSTRY & TECHN"
		28 "JOURNALISM"
		29 "LAW"
		30 "LAW ENFORCEMENT"
		31 "LIBRARY SCIENCE"
		32 "MARKETING"
		33 "MATHMATICS"
		34 "MEDICINE"
		35 "MUSIC"
		36 "NURSING"
		37 "OPTOMETRY"
		38 "PHARMACY"
		39 "PHILOSOPHY"
		40 "PHYSICAL EDUCATION"
		41 "PHYSICS"
		42 "PSYCHOLOGY"
		43 "POLITICAL SCIENCE/INTERNATIONAL RELATIONS"
		44 "SOCIOLOGY"
		45 "SPECIAL EDUCATION"
		46 "THEATER ARTS"
		47 "THEOLOGY"
		48 "VETERINARY MEDICINE"
		49 "LIBERAL ARTS"
		50 "OTHER"
		51 "GENERAL SCIENCES"
		52 "SOCIAL WORK"
		53 "GENERAL STUDIES"
		54 "OTHER VOCATIONAL"
		55 "HEALTH"
		56 "Industrial Relations"
		57 "Child/Human/Family Development"
		58 "Food Science/Nutrition/Culinary Arts"
		59 "Environmental Science/Ecology"
		60 "Social Sciences"
		61 "Human Services/Human Resources"
		62 "Visual Arts/Graphic Design/Design and Drafting"
		63 "Fine Arts"
		64 "Humanities"
		65 "Ethnic studies"
		66 "Educational administration"
		67 "Television/Film"
		68 "Aviation/Aeronatics"
		69 "Statistics/Biostatistics"
		70 "Criminology/Criminal Justice"
		71 "Administrative Science/Public Administration"
		72 "Electronics"
		73 "Urban and Regional Planning"
		74 "Mechanics/Machine Trade"
		75 "Dance"
		76 "Gerontology"
		77 "Public Relations"
		78 "Textiles/Cloth"
		79 "Parks and Recreation"
		80 "Information technology"
		98 "DK/UNCODED"
		99 "No answer";

	label define DIPGED
		0 "IAP"
		1 "High School diploma"
		2 "GED"
		3 "Other"
		5 "HS diploma after post HS classes"
		8 "DON'T KNOW"
		9 "No answer";

	label define SPDIPGED
		0 "IAP"
		1 "High School diploma"
		2 "GED"
		3 "Other"
		8 "DON'T KNOW"
		9 "NO ANSWER";

	label define WHENHS
		0 "IAP"
		9998 "DK"
		9999 "NA";

	label define SECTOR
		0 "Administrative Unit"
		1 "Public, 4-year or above"
		2 "Private not-for-profit, 4-year or above"
		3 "Private for-profit, 4-year or above"
		4 "Public, 2-year"
		5 "Private not-for-profit, 2-year or less"
		6 "Private for-profit, 2-year"
		7 "Public, less-than 2-year"
		8 "Private not-for-profit, less-than 2-year"
		9 "Private for-profit, less-than 2-year"
		99 "Sector unknown (not active)";

	label define EFTOTLT
		1 "0-467"
		2 "468+"
		9 "No answer";

	label define BARATE
		1 "0-39.9%"
		2 "40-57.9%"
		3 "58%+"
		9 "No answer";

	label define GRADTOUN
		1 "0-.210499"
		2 ".211+"
		9 "No answer";

	label define VOEDNME1
		0 "IAP"
		1 "Jail/Prison"
		2 "High School"
		3 "Company/Business"
		4 "Vocational School/Trades/technical (not High School not College)"
		5 "Secretarial School"
		6 "Adult Education/School"
		7 "Medical/Nursing/Health/Dental/Hospital"
		8 "Union"
		9 "Armed Forces"
		10 "College/University"
		11 "Art/Design"
		12 "Business College (not Business School at a university)"
		13 "Home Study/Correspondence"
		14 "Job Corp"
		15 "Beauty School/Cosmetology"
		16 "Insurance, Real Estate, Finance, Executive Management"
		17 "Police/Fire Academy; Training"
		18 "Development Center"
		19 "Career Center"
		20 "Foreign College/University"
		30 "Other"
		98 "Unknown, uncodeable"
		99 "No answer";

	label define SEX
		1 "MALE"
		2 "FEMALE";

	label define RACE
		0 "IAP"
		1 "WHITE"
		2 "BLACK"
		3 "OTHER";

	label define RES16
		0 "IAP"
		1 "COUNTRY,NONFARM"
		2 "FARM"
		3 "TOWN LT 50000"
		4 "50000 TO 250000"
		5 "BIG-CITY SUBURB"
		6 "CITY GT 250000"
		8 "DK"
		9 "NA";

	label define REG16
		0 "FOREIGN"
		1 "NEW ENGLAND"
		2 "MIDDLE ATLANTIC"
		3 "E. NOR. CENTRAL"
		4 "W. NOR. CENTRAL"
		5 "SOUTH ATLANTIC"
		6 "E. SOU. CENTRAL"
		7 "W. SOU. CENTRAL"
		8 "MOUNTAIN"
		9 "PACIFIC";

	label define MOBILE16
		0 "IAP"
		1 "SAME CITY"
		2 "SAME ST,DIF CITY"
		3 "DIFFERENT STATE"
		8 "DK"
		9 "NA";

	label define FAMILY16
		0 "OTHER"
		1 "MOTHER & FATHER"
		2 "FATHER & STPMOTHER"
		3 "MOTHER & STPFATHER"
		4 "FATHER"
		5 "MOTHER"
		6 "MALE RELATIVE"
		7 "FEMALE RELATIVE"
		8 "M AND F RELATIVES"
		9 "NA";

	label define FAMDIF16
		0 "IAP"
		1 "PARENT DIED"
		2 "DIVORCE,SEPARATED"
		3 "ARMED FORCES"
		4 "INSTITUTION"
		5 "OTHER"
		8 "DK"
		9 "NA";

	label define INCOM16
		1 "FAR BELOW AVERAGE"
		2 "BELOW AVERAGE"
		3 "AVERAGE"
		4 "ABOVE AVERAGE"
		5 "FAR ABOVE AVERAGE"
		7 "LIVED IN INSTITUTION"
		8 "DK"
		9 "NA";

	label define PARBORN
		0 "BOTH IN U.S"
		1 "MOTHER ONLY"
		2 "FATHER ONLY"
		3 "MOTHER; FA. DK"
		4 "NOT MOTHER;FA.DK"
		5 "FATHER; MO.DK"
		6 "NOT FATHER;MO.DK"
		7 "DK FOR BOTH"
		8 "NEITHER IN U.S"
		9 "NA";

	label define GRANBORN
		0 "ALL IN U.S"
		8 "DK"
		9 "NA";

	label define HOMPOP
		98 "DK"
		99 "NA";

	label define BABIES
		8 "8 OR MORE"
		9 "NA";

	label define UNRELAT
		8 "8 OR MORE"
		9 "NA";

	label define EARNRS
		8 "EIGHT OR MORE"
		9 "NA";

	label define INCOME
		0 "IAP"
		1 "LT $1000"
		2 "$1000 TO 2999"
		3 "$3000 TO 3999"
		4 "$4000 TO 4999"
		5 "$5000 TO 5999"
		6 "$6000 TO 6999"
		7 "$7000 TO 7999"
		8 "$8000 TO 9999"
		9 "$10000 - 14999"
		10 "$15000 - 19999"
		11 "$20000 - 24999"
		12 "$25000 OR MORE"
		13 "REFUSED"
		98 "DK"
		99 "NA";

	label define INCOME72
		0 "IAP"
		1 "LT $2000"
		2 "$2000 TO $3999"
		3 "$4000 TO $5999"
		4 "$6000 TO $7999"
		5 "$8000 TO $9999"
		6 "$10000 TO $12499"
		7 "$12500 TO $14999"
		8 "$15000 TO $17499"
		9 "$17500 TO $19999"
		10 "$20000 TO $24999"
		11 "$25000 TO $29999"
		12 "$30000+"
		13 "REFUSED"
		98 "DK"
		99 "NA";

	label define INCOME77
		0 "IAP"
		1 "LT $1000"
		2 "$1000-2999"
		3 "$3000-3999"
		4 "$4000-4999"
		5 "$5000-5999"
		6 "$6000-6999"
		7 "$7000-7999"
		8 "$8000-9999"
		9 "$10000-12499"
		10 "$12500-14999"
		11 "$15000-17499"
		12 "$17500-19999"
		13 "$20000-22499"
		14 "$22500-24999"
		15 "$25000-49999"
		16 "$50000 +"
		17 "REFUSED"
		98 "DK"
		99 "NA";

	label define INCOME82
		0 "IAP"
		1 "LT $1000"
		2 "$1000-2999"
		3 "$3000-3999"
		4 "$4000-4999"
		5 "$5000-5999"
		6 "$6000-6999"
		7 "$7000-7999"
		8 "$8000-9999"
		9 "$10000-12499"
		10 "$12500-14999"
		11 "$15000-17499"
		12 "$17500-19999"
		13 "$20000-22499"
		14 "$22500-24999"
		15 "$25000-34999"
		16 "$35000-49999"
		17 "$50000 +"
		18 "REFUSED"
		98 "DK"
		99 "NA";

	label define INCOME86
		0 "IAP"
		1 "LT $1000"
		2 "$1000-2999"
		3 "$3000-3999"
		4 "$4000-4999"
		5 "$5000-5999"
		6 "$6000-6999"
		7 "$7000-7999"
		8 "$8000-9999"
		9 "$10000-12499"
		10 "$12500-14999"
		11 "$15000-17499"
		12 "$17500-19999"
		13 "$20000-22499"
		14 "$22500-24999"
		15 "$25000-29999"
		16 "$30000-34999"
		17 "$35000-39999"
		18 "$40000-49999"
		19 "$50000-59999"
		20 "$60000+"
		21 "REFUSED"
		98 "DK"
		99 "NA";

	label define INCOME91
		0 "IAP"
		1 "LT $1000"
		2 "$1000-2999"
		3 "$3000-3999"
		4 "$4000-4999"
		5 "$5000-5999"
		6 "$6000-6999"
		7 "$7000-7999"
		8 "$8000-9999"
		9 "$10000-12499"
		10 "$12500-14999"
		11 "$15000-17499"
		12 "$17500-19999"
		13 "$20000-22499"
		14 "$22500-24999"
		15 "$25000-29999"
		16 "$30000-34999"
		17 "$35000-39999"
		18 "$40000-49999"
		19 "$50000-59999"
		20 "$60000-74999"
		21 "$75000+"
		22 "REFUSED"
		98 "DK"
		99 "NA";

	label define INCOME98
		0 "IAP"
		1 "UNDER $1 000"
		2 "$1 000 TO 2 999"
		3 "$3 000 TO 3 999"
		4 "$4 000 TO 4 999"
		5 "$5 000 TO 5 999"
		6 "$6 000 TO 6 999"
		7 "$7 000 TO 7 999"
		8 "$8 000 TO 9 999"
		9 "$10000 TO 12499"
		10 "$12500 TO 14999"
		11 "$15000 TO 17499"
		12 "$17500 TO 19999"
		13 "$20000 TO 22499"
		14 "$22500 TO 24999"
		15 "$25000 TO 29999"
		16 "$30000 TO 34999"
		17 "$35000 TO 39999"
		18 "$40000 TO 49999"
		19 "$50000 TO 59999"
		20 "$60000 TO 74999"
		21 "$75000 TO $89999"
		22 "$90000 - $109999"
		23 "$110000 OR OVER"
		24 "REFUSED"
		98 "DK"
		99 "NA";

	label define INCOME06
		0 "IAP"
		1 "UNDER $1 000"
		2 "$1 000 TO 2 999"
		3 "$3 000 TO 3 999"
		4 "$4 000 TO 4 999"
		5 "$5 000 TO 5 999"
		6 "$6 000 TO 6 999"
		7 "$7 000 TO 7 999"
		8 "$8 000 TO 9 999"
		9 "$10000 TO 12499"
		10 "$12500 TO 14999"
		11 "$15000 TO 17499"
		12 "$17500 TO 19999"
		13 "$20000 TO 22499"
		14 "$22500 TO 24999"
		15 "$25000 TO 29999"
		16 "$30000 TO 34999"
		17 "$35000 TO 39999"
		18 "$40000 TO 49999"
		19 "$50000 TO 59999"
		20 "$60000 TO 74999"
		21 "$75000 TO $89999"
		22 "$90000 TO $109999"
		23 "$110000 TO $129999"
		24 "$130000 TO $149999"
		25 "$150000 OR OVER"
		26 "REFUSED"
		98 "DK"
		99 "NA";

	label define REGION
		0 "NOT ASSIGNED"
		1 "NEW ENGLAND"
		2 "MIDDLE ATLANTIC"
		3 "E. NOR. CENTRAL"
		4 "W. NOR. CENTRAL"
		5 "SOUTH ATLANTIC"
		6 "E. SOU. CENTRAL"
		7 "W. SOU. CENTRAL"
		8 "MOUNTAIN"
		9 "PACIFIC";

	label define XNORCSIZ
		0 "NOT ASSIGNED"
		1 "CITY GT 250000"
		2 "CITY,50-250000"
		3 "SUBURB, LRG CITY"
		4 "SUBURB, MED CITY"
		5 "UNINC,LRG CITY"
		6 "UNINC,MED CITY"
		7 "CITY,10-49999"
		8 "TOWN GT 2500"
		9 "SMALLER AREAS"
		10 "OPEN COUNTRY";

	label define SRCBELT
		0 "NOT ASSIGNED"
		1 "12 LRGST SMSA'S"
		2 "SMSA'S 13-100"
		3 "SUBURB, 12 LRGST"
		4 "SUBURB, 13-100"
		5 "OTHER URBAN"
		6 "OTHER RURAL";

	label define PARTYID
		0 "STRONG DEMOCRAT"
		1 "NOT STR DEMOCRAT"
		2 "IND,NEAR DEM"
		3 "INDEPENDENT"
		4 "IND,NEAR REP"
		5 "NOT STR REPUBLICAN"
		6 "STRONG REPUBLICAN"
		7 "OTHER PARTY"
		8 "DK"
		9 "NA";

	label define VOTE68
		0 "IAP"
		1 "VOTED"
		2 "DID NOT VOTE"
		3 "NOT ELIGIBLE"
		4 "REFUSED"
		6 "WLDNT VT-RELIG"
		8 "DK"
		9 "NA";

	label define PRES68
		0 "IAP"
		1 "HUMPHREY"
		2 "NIXON"
		3 "WALLACE"
		4 "OTHER"
		5 "REFUSED"
		6 "WLDNT VT-RELIG"
		8 "DK"
		9 "NA";

	label define PRES72
		0 "IAP"
		1 "MCGOVERN"
		2 "NIXON"
		3 "OTHER"
		4 "REFUSED"
		5 "WOULDNT VOTE"
		6 "WLDNT VT-RELIG"
		8 "DK"
		9 "NA";

	label define PRES76
		0 "IAP"
		1 "CARTER"
		2 "FORD"
		3 "OTHER"
		4 "REFUSED"
		5 "NO PRES. VOTE"
		8 "DK"
		9 "NA";

	label define IF76WHO
		0 "IAP"
		1 "CARTER"
		2 "FORD"
		3 "OTHER"
		4 "REFUSED"
		5 "WOULDNT VOTE"
		8 "DK"
		9 "NA";

	label define PRES80
		0 "IAP"
		1 "CARTER"
		2 "REAGAN"
		3 "ANDERSON"
		4 "OTHER"
		5 "REFUSED"
		6 "DIDNT VOTE"
		8 "DK"
		9 "NA";

	label define IF80WHO
		0 "IAP"
		1 "CARTER"
		2 "REAGAN"
		3 "ANDERSON"
		4 "OTHER"
		5 "WOULDNT VOTE"
		7 "REFUSED"
		8 "DK"
		9 "NA";

	label define PRES84
		0 "IAP"
		1 "MONDALE"
		2 "REAGAN"
		3 "OTHER"
		4 "REFUSED"
		5 "NO PRES. VOTE"
		8 "DK"
		9 "NA";

	label define IF84WHO
		0 "IAP"
		1 "MONDALE"
		2 "REAGAN"
		3 "OTHER"
		4 "WOULDNT VOTE"
		5 "REFUSED"
		8 "DK"
		9 "NA";

	label define PRES88
		0 "IAP"
		1 "DUKAKIS"
		2 "BUSH"
		3 "OTHER"
		4 "REFUSED"
		5 "NO PRES. VOTE"
		8 "DK"
		9 "NA";

	label define IF88WHO
		0 "IAP"
		1 "DUKAKIS"
		2 "BUSH"
		3 "OTHER"
		4 "WOULDNT VOTE"
		5 "REFUSED"
		8 "DK"
		9 "NA";

	label define VOTE92
		0 "IAP"
		1 "VOTED"
		2 "DID NOT VOTE"
		3 "NOT ELIGIBLE"
		4 "REFUSED"
		8 "DK"
		9 "NA";

	label define PRES92
		0 "IAP"
		1 "CLINTON"
		2 "BUSH"
		3 "PEROT"
		4 "OTHER"
		6 "NO PRES. VOTE"
		8 "DK"
		9 "NA";

	label define IF92WHO
		0 "IAP"
		1 "CLINTON"
		2 "BUSH"
		3 "PEROT"
		4 "OTHER"
		5 "WOULDNT VOTE"
		8 "DK"
		9 "NA";

	label define VOTE96
		0 "IAP"
		1 "VOTED"
		2 "DID NOT VOTE"
		3 "INELIGIBLE"
		4 "REFUSED TO ANSWR"
		8 "DONT KNOW/REMMBR"
		9 "NA";

	label define PRES96
		0 "IAP"
		1 "CLINTON"
		2 "DOLE"
		3 "PEROT"
		4 "OTHER (SPECIFY)"
		6 "DIDNT VOTE"
		8 "DONT KNOW"
		9 "NA";

	label define IF96WHO
		0 "IAP"
		1 "CLINTON"
		2 "DOLE"
		3 "PEROT"
		4 "OTHER"
		8 "DONT KNOW/RMEMBR"
		9 "NA";

	label define VOTE00
		0 "IAP"
		1 "VOTED"
		2 "DID NOT VOTE"
		3 "INELIGIBLE"
		4 "REFUSED TO ANSWER"
		8 "DONT KNOW/REMEMBER"
		9 "NA";

	label define PRES00
		0 "IAP"
		1 "GORE"
		2 "BUSH"
		3 "NADER"
		4 "OTHER (SPECIFY)"
		6 "DIDNT VOTE"
		8 "DONT KNOW"
		9 "NA";

	label define IF00WHO
		0 "IAP"
		1 "GORE"
		2 "BUSH"
		3 "NADER"
		4 "OTHER"
		8 "DONT KNOW/REMEMBER"
		9 "NA";

	label define PRES04
		0 "IAP"
		1 "KERRY"
		2 "BUSH"
		3 "NADER"
		4 "OTHER (SPECIFY)"
		6 "DIDNT VOTE"
		8 "DONT KNOW"
		9 "NA";

	label define IF04WHO
		0 "IAP"
		1 "KERRY"
		2 "BUSH"
		3 "NADER"
		4 "OTHER"
		8 "DONT KNOW/REMEMBER"
		9 "NA";

	label define VOTE08
		0 "IAP"
		1 "Voted"
		2 "Did not vote"
		3 "Ineligible"
		8 "DON'T KNOW"
		9 "No answer";

	label define PRES08
		0 "IAP"
		1 "Obama"
		2 "McCain"
		3 "OTHER CANDIDATE (SPECIFY)"
		4 "DIDN'T VOTE"
		8 "DK"
		9 "NA";

	label define IF08WHO
		0 "IAP"
		1 "Obama"
		2 "McCain"
		3 "Other"
		8 "DON'T KNOW"
		9 "No answer";

	label define VOTE12
		0 "IAP"
		1 "Voted"
		2 "Did not vote"
		3 "Ineligible"
		8 "DK"
		9 "NA";

	label define PRES12
		0 "IAP"
		1 "Obama"
		2 "Romney"
		3 "Other candidate (SPECIFY)"
		4 "Didn't vote for president"
		8 "Don't know"
		9 "No answer";

	label define IF12WHO
		0 "IAP"
		1 "Obama"
		2 "Romney"
		3 "Other"
		8 "Don't know"
		9 "No answer";

	label define POLVIEWS
		0 "IAP"
		1 "EXTREMELY LIBERAL"
		2 "LIBERAL"
		3 "SLIGHTLY LIBERAL"
		4 "MODERATE"
		5 "SLGHTLY CONSERVATIVE"
		6 "CONSERVATIVE"
		7 "EXTRMLY CONSERVATIVE"
		8 "DK"
		9 "NA";

	label define POLVIEWY
		0 "HAVENT THGHT ABT IT"
		1 "EXTREMELY LIBERAL"
		2 "LIBERAL"
		3 "SLIGHTLY LIBERAL"
		4 "MODERATE"
		5 "SLGHTLY CONSERVATIVE"
		6 "CONSERVATIVE"
		7 "EXTRMLY CONSERVATIVE"
		8 "DK"
		9 "NA";

	label define POLVIEWX
		0 "IAP"
		1 "LEFT"
		10 "RIGHT"
		98 "DK"
		99 "NA";

	label define NATSPAC
		0 "IAP"
		1 "TOO LITTLE"
		2 "ABOUT RIGHT"
		3 "TOO MUCH"
		8 "DK"
		9 "NA";

	label define NATENRGY
		0 "IAP"
		1 "Too little"
		2 "About right"
		3 "Too much"
		8 "DON'T KNOW"
		9 "No answer";

	label define EQUAL1
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "SOMEWHAT AGREE"
		3 "SOMEWHT DISAGREE"
		4 "STRNGLY DISAGREE"
		8 "NO OPINION"
		9 "NA";

	label define GOVCARE
		0 "IAP"
		1 "TOO MUCH CARE"
		2 "ON RIGHT TRACK"
		8 "DK"
		9 "NA";

	label define EQWLTH
		0 "IAP"
		1 "GOVT REDUCE DIFF"
		7 "NO GOVT ACTION"
		8 "DK"
		9 "NA";

	label define TAX
		0 "IAP"
		1 "TOO HIGH"
		2 "ABOUT RIGHT"
		3 "TOO LOW"
		4 "R PAYS NONE<VOL.>"
		8 "DK"
		9 "NA";

	label define SPKATH
		0 "IAP"
		1 "ALLOWED"
		2 "NOT ALLOWED"
		8 "DK"
		9 "NA";

	label define COLATH
		0 "IAP"
		4 "ALLOWED"
		5 "NOT ALLOWED"
		8 "DK"
		9 "NA";

	label define LIBATH
		0 "IAP"
		1 "REMOVE"
		2 "NOT REMOVE"
		8 "DK"
		9 "NA";

	label define COLCOM
		0 "IAP"
		4 "FIRED"
		5 "NOT FIRED"
		8 "DK"
		9 "NA";

	label define SPKMSLM
		0 "IAP"
		1 "Yes, allowed"
		2 "Not allowed"
		8 "DONT KNOW"
		9 "NA";

	label define COLMSLM
		0 "IAP"
		4 "Yes, allowed"
		5 "Not allowed"
		8 "DONT KNOW"
		9 "NA";

	label define CAPPUN2
		0 "IAP"
		1 "YES,FAVOR"
		2 "NO,DONT FAVOR"
		8 "DK"
		9 "NA";

	label define CAPPUN
		0 "IAP"
		1 "FAVOR"
		2 "OPPOSE"
		8 "DK"
		9 "NA";

	label define CAPIMP
		0 "IAP"
		1 "ONE OF MOST IMP"
		2 "IMPORTANT"
		3 "NOT VERY IMP"
		4 "NOT IMPORTANT"
		8 "DK"
		9 "NA";

	label define CAPINFO
		0 "IAP"
		1 "ALL INFO R NEEDS"
		2 "MOST OF THE INFO"
		3 "SOME INFO"
		4 "VERY LITTLE INFO"
		8 "DK"
		9 "NA";

	label define CAPFIRM
		0 "IAP"
		1 "CHANGE VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "SOMEWHAT UNLIKELY"
		4 "CHANGE VERY UNLIKELY"
		8 "DK"
		9 "NA";

	label define COURTS
		0 "IAP"
		1 "TOO HARSH"
		2 "NOT HARSH ENOUGH"
		3 "ABOUT RIGHT"
		8 "DK"
		9 "NA";

	label define COURTSY
		0 "IAP"
		1 "TOO HARSH"
		2 "NOT HARSH ENOUGH"
		3 "ABOUT RIGHT"
		8 "CANT SAY"
		9 "NA";

	label define WIRTAP
		0 "IAP"
		1 "APPROVE"
		2 "DISAPPROVE"
		8 "DK"
		9 "NA";

	label define GRASS
		0 "IAP"
		1 "LEGAL"
		2 "NOT LEGAL"
		8 "DK"
		9 "NA";

	label define RELIG
		0 "IAP"
		1 "PROTESTANT"
		2 "CATHOLIC"
		3 "JEWISH"
		4 "NONE"
		5 "OTHER"
		6 "BUDDHISM"
		7 "HINDUISM"
		8 "OTHER EASTERN"
		9 "MOSLEM/ISLAM"
		10 "ORTHODOX-CHRISTIAN"
		11 "CHRISTIAN"
		12 "NATIVE AMERICAN"
		13 "INTER-NONDENOMINATIONAL"
		98 "DK"
		99 "NA";

	label define DENOM
		0 "IAP"
		10 "AM BAPTIST ASSO"
		11 "AM BAPT CH IN USA"
		12 "NAT BAPT CONV OF AM"
		13 "NAT BAPT CONV USA"
		14 "SOUTHERN BAPTIST"
		15 "OTHER BAPTISTS"
		18 "BAPTIST-DK WHICH"
		20 "AFR METH EPISCOPAL"
		21 "AFR METH EP ZION"
		22 "UNITED METHODIST"
		23 "OTHER METHODIST"
		28 "METHODIST-DK WHICH"
		30 "AM LUTHERAN"
		31 "LUTH CH IN AMERICA"
		32 "LUTHERAN-MO SYNOD"
		33 "WI EVAN LUTH SYNOD"
		34 "OTHER LUTHERAN"
		35 "EVANGELICAL LUTH"
		38 "LUTHERAN-DK WHICH"
		40 "PRESBYTERIAN C IN US"
		41 "UNITED PRES CH IN US"
		42 "OTHER PRESBYTERIAN"
		43 "PRESBYTERIAN, MERGED"
		48 "PRESBYTERIAN-DK WH"
		50 "EPISCOPAL"
		60 "OTHER"
		70 "NO DENOMINATION"
		98 "DK"
		99 "NA";

	label define OTHER
		0 "IAP"
		1 "Hungarian Reformed"
		2 "Evangelical Congregational"
		3 "Ind Bible, Bible, Bible Fellowship"
		5 "Church of Prophecy"
		6 "New Testament Christian"
		7 "Church of God, Saint & Christ"
		8 "Moravian"
		9 "Christian & Missionary Alliance"
		10 "Advent Christian"
		11 "Spiritualist"
		12 "Assembly of God"
		13 "Free Methodist"
		14 "Apostolic Faith"
		15 "African Methodist"
		16 "Free Will Baptist"
		17 "Eden Evangelist"
		18 "Holiness (Nazarene) "
		19 "Baptist (Northern)"
		20 "Brethren Church, Brethren "
		21 "Witness Holiness"
		22 "Brethren, Plymouth"
		23 "United Brethren, United Brethren in Christ"
		24 "Independent"
		25 "Christian Disciples "
		26 "Christ in Christian Union "
		27 "Open Bible"
		28 "Christian Catholic"
		29 "Christ Church Unity "
		30 "Christ Adelphians"
		31 "Christian; Central Christian"
		32 "Christian Reform"
		33 "Christian Scientist "
		34 "Church of Christ, Evangelical"
		35 "Church of Christ"
		36 "Churches of God(Except with Christ and Holiness)"
		37 "Church of God in Christ"
		38 "Church of God in Christ Holiness"
		39 "Church of the Living God"
		40 "Congregationalist, 1st Congreg"
		41 "Community Church"
		42 "Covenant"
		43 "Dutch Reform"
		44 "Disciples of Christ"
		45 "Evangelical, Evangelist"
		46 "Evangelical Reformed"
		47 "Evangelist Free Church"
		48 "First Church"
		49 "First Christian Disciples of Christ"
		50 "First Reformed"
		51 "First Christian"
		52 "Full Gospel"
		53 "Four Square Gospel"
		54 "Friends"
		55 "Holy Roller"
		56 "Holiness; Church of Holiness"
		57 "Pilgrim Holiness"
		58 "Jehovah's Witnesses"
		59 "LDS"
		60 "LDS--Mormon"
		61 "LDS--Reorganized"
		62 "LDS--Jesus Christ; Church of Jesus LDS"
		63 "Mennonite"
		64 "Mormon"
		65 "Nazarene"
		66 "Pentecostal Assembly of God"
		67 "Pentecostal Church of God"
		68 "Pentecostal"
		69 "Pentecostal Holiness, Holiness Pentecostal"
		70 "Quaker"
		71 "Reformed"
		72 "Reformed United Church of Christ"
		73 "Reformed Church of Christ"
		74 "Religious Science"
		75 "Mind Science"
		76 "Salvation Army"
		77 "7th Day Adventist"
		78 "Sanctified, Sanctification"
		79 "United Holiness"
		80 "Unitarian, Universalist"
		81 "United Church of Christ"
		82 "United Church, Unity Church"
		83 "Wesleyan"
		84 "Wesleyan Methodist--Pilgrim"
		85 "Zion Union"
		86 "Zion Union Apostolic"
		87 "Zion Union Apostolic--Reformed"
		88 "Disciples of God"
		89 "Grace Reformed"
		90 "Holiness Church of God"
		91 "Evangelical Covenant"
		92 "Mission Covenant"
		93 "Missionary Baptist"
		94 "Swedish Mission"
		95 "Unity"
		96 "United Church of Christianity"
		97 "Other Fundamentalist"
		98 "Federated Church"
		99 "American Reform"
		100 "Grace Brethren"
		101 "Christ in God"
		102 "Charismatic"
		103 "Pentecostal Apostolic"
		104 "House of Prayer"
		105 "Latvian Lutheran"
		106 "Triumph Church of God"
		107 "Apostolic Christian"
		108 "Christ Cathedral of Truth"
		109 "Bible Missionary"
		110 "Calvary Bible"
		111 "Amish"
		112 "Evangelical Methodist"
		113 "Worldwide Church of God"
		114 "Church Universal and Triumphant"
		115 "Mennonite Brethren"
		116 "Church of the First Born"
		117 "Missionary Church"
		118 "The Way Ministry"
		119 "United Church of Canada"
		120 "Evangelical United Brethren"
		121 "The Church of God of Prophecy"
		122 "Chapel of Faith"
		123 "Polish National Church"
		124 "Faith Gospel Tabernacle"
		125 "Christian Calvary Chapel"
		126 "Carmelite"
		127 "Church of Daniel's Band"
		128 "Christian Tabernacle"
		129 "Living Word"
		130 "True Light Church of Christ"
		131 "Macedonia"
		132 "Brother of Christ"
		133 "Primitive Baptist"
		134 "Independent Fundamental Church of America"
		135 "Chinese Gospel Church"
		136 "New Age Spirituality"
		137 "New Song"
		138 "Apostolic Church"
		139 "Faith Christian"
		140 "People's Church"
		141 "New Birth Christian"
		142 "Unity School of Christianity"
		143 "Assyrian Evangelist Church"
		144 "Spirit of Christ"
		145 "Church of Jesus Christ of the Restoration"
		146 "Laotian Christian"
		148 "Schwenkfelder"
		149 "Polish Catholic"
		150 "Zwinglian"
		151 "World Overcomer Outreach Ministry"
		152 "Course in Miracles"
		153 "Unity of the Brethren"
		154 "Spirit Filled"
		155 "Christian Union"
		156 "Church of Living Christ"
		157 "Community of Christ"
		158 "New Hope Christian Fellowship"
		159 "Community Christian Fellowship"
		160 "Friends in Christ"
		161 "Hawaiian Ohana"
		162 "Reformed Church of Jesus Christ of Latter Day Saints"
		163 "Swedenurgian/Churches of the New Jerusalem"
		164 "Divine Science"
		165 "Church of the Living God"
		166 "United Christian"
		167 "Sanctuary"
		168 "Rain on Us Deliverance Ministries"
		169 "The Word Church"
		170 "Cornerstone Church"
		171 "Life Sanctuary"
		172 "Word of Faith Church"
		173 "Harvest Church"
		174 "Shephard's Chapel"
		175 "Greater New Testament Church"
		176 "Vineyard Church"
		177 "Real Life Ministries"
		178 "Cathedral of Joy"
		179 "Great Faith Ministries"
		180 "Shield of Faith Ministries"
		181 "Born Again"
		182 "Alliance"
		183 "Jacobite Apostolic"
		184 "Church of God of Israel"
		185 "Journeys"
		186 "National Progressive Baptist"
		187 "New Apostolic"
		188 "Metropolitan Community"
		189 "Family Life Church"
		190 "Faith Fellowship"
		191 "Faith Covenant"
		192 "New Thought"
		193 "Free Spirit Ministry"
		194 "Jacobite Syrian Christian Church"
		195 "The Ark Church"
		196 "Empowerment Temple"
		197 "Grace Independent Baptist Church"
		198 "New Life"
		199 "Follower of Christ"
		201 "Pathways Christian Church"
		204 "Renia de Deus"
		998 "DK"
		999 "NA";

	label define OTHJEW
		0 "IAP"
		1 "Yes"
		2 "Half or part"
		3 "No"
		8 "DONT KNOW"
		9 "NA";

	label define JEW
		0 "IAP"
		1 "ORTHODOX"
		2 "CONSERVATIVE"
		3 "REFORM"
		4 "NONE OF THESE"
		8 "DK"
		9 "NA";

	label define FUND
		0 "IAP"
		1 "FUNDAMENTALIST"
		2 "MODERATE"
		3 "LIBERAL"
		8 "DK"
		9 "NA-EXCLUDED";

	label define ATTEND
		0 "NEVER"
		1 "LT ONCE A YEAR"
		2 "ONCE A YEAR"
		3 "SEVRL TIMES A YR"
		4 "ONCE A MONTH"
		5 "2-3X A MONTH"
		6 "NRLY EVERY WEEK"
		7 "EVERY WEEK"
		8 "MORE THN ONCE WK"
		9 "DK,NA";

	label define MAATTEND
		0 "NEVER"
		1 "LT ONCE A YEAR"
		2 "ONCE A YEAR"
		3 "SEVRL TIMES A YR"
		4 "ONCE A MONTH"
		5 "2-3X A MONTH"
		6 "NRLY EVERY  WEEK"
		7 "EVERY WEEK"
		8 "MORE THN ONCE WK"
		9 "DK,NA";

	label define RELITEN
		0 "IAP"
		1 "STRONG"
		2 "NOT VERY STRONG"
		3 "SOMEWHAT STRONG"
		4 "NO RELIGION"
		8 "DK"
		9 "NA";

	label define POSTLF1
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "NOT TOO LIKELY"
		4 "NOT LIKELY AT ALL"
		8 "DK"
		9 "NA";

	label define LIKEDIFF
		0 "IAP"
		1 "BETTER THAN EARTH"
		7 "LIFE LACKING"
		8 "DK"
		9 "NA";

	label define MINDBODY
		0 "IAP"
		1 "SPIRITUAL"
		7 "SENSUAL LIFE"
		8 "DK"
		9 "NA";

	label define RESTACT
		0 "IAP"
		1 "PEACEFUL"
		7 "INTENSE ACTION"
		8 "DK"
		9 "NA";

	label define PALEFULL
		0 "IAP"
		1 "PALE, SHADOWY"
		7 "COMPLETE FULFILLMENT"
		8 "DK"
		9 "NA";

	label define PRAY
		0 "IAP"
		1 "SEVERAL TIMES A DAY"
		2 "ONCE A DAY"
		3 "SEVERAL TIMES A WEEK"
		4 "ONCE A WEEK"
		5 "LT ONCE A WEEK"
		6 "NEVER"
		8 "DK"
		9 "NA";

	label define DEJAVU
		0 "IAP"
		1 "NEVER IN MY LIFE"
		2 "ONCE OR TWICE"
		3 "SEVERAL TIMES"
		4 "OFTEN"
		8 "CANNOT ANSWER"
		9 "NA";

	label define NEARGOD
		0 "IAP"
		1 "EXTREMELY CLOSE"
		2 "SOMEWHAT CLOSE"
		3 "NOT VERY CLOSE"
		4 "NOT CLOSE AT ALL"
		5 "DOES NOT BELIEVE"
		8 "DK"
		9 "NA";

	label define JUDGE
		0 "IAP"
		1 "EXTREMELY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "NOT TOO LIKELY"
		4 "NOT LIKELY AT ALL"
		8 "DK"
		9 "NA";

	label define MAPA
		0 "IAP"
		1 "MOTHER"
		7 "FATHER"
		8 "DK"
		9 "NA";

	label define MASTERSP
		0 "IAP"
		1 "MASTER"
		7 "SPOUSE"
		8 "DK"
		9 "NA";

	label define JUDGELUV
		0 "IAP"
		1 "JUDGE"
		7 "LOVER"
		8 "DK"
		9 "NA";

	label define FRNDKING
		0 "IAP"
		1 "FRIEND"
		7 "KING"
		8 "DK"
		9 "NA";

	label define CRTRHEAL
		0 "IAP"
		1 "CREATOR"
		7 "HEALER"
		8 "DK"
		9 "NA";

	label define RDEEMLIB
		0 "IAP"
		1 "REDEEMER"
		7 "LIBERATOR"
		8 "DK"
		9 "NA";

	label define POPESPKS
		0 "IAP"
		1 "CERTAINLY TRUE"
		2 "PROBABLY TRUE"
		3 "UNCERTAIN TRUE OR FALSE"
		4 "PROBABLY FALSE"
		5 "CERTAINLY FALSE"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SPREL16
		0 "IAP"
		1 "Protestant"
		2 "Catholic"
		3 "Jewish"
		4 "None"
		5 "OTHER"
		8 "DONT KNOW"
		9 "NA";

	label define SPDEN16
		0 "IAP"
		10 "AM BAPTIST ASSO"
		11 "AM BAPT CH IN USA"
		12 "NAT BAPT CONV OF AM"
		13 "NAT BAPT CONV USA"
		14 "SOUTHERN BAPTIST"
		15 "OTHER BAPTISTS"
		18 "BAPTIST-DK WHICH"
		20 "AFR METH EPISCOPAL"
		21 "AFR METH EP ZION"
		22 "UNITED METHODIST"
		23 "OTHER METHODIST"
		28 "METHODIST-DK WHICH"
		30 "AM LUTHERAN"
		31 "LUTH CH IN AMERICA"
		32 "LUTHERAN-MO SYNOD"
		33 "WI EVAN LUTH SYNOD"
		34 "OTHER LUTHERAN"
		35 "EVANGELIC LUTH"
		38 "LUTHERAN-DK WHICH"
		40 "PRESBYTERIAN C IN US"
		41 "UNITED PRES CH IN USA"
		42 "OTHER PRESBYTERIAN"
		43 "PRESBYTERIAN, MERGED"
		48 "PRESBYTERIAN-DK WH"
		50 "EPISCOPAL"
		60 "OTHER"
		70 "NO DENOMINATION"
		98 "DK"
		99 "NA";

	label define SPOTH16
		0 "IAP"
		1 "Hungarian Reformed"
		2 "Evangelical Congregational"
		3 "Ind Bible, Bible, Bible Fellowship"
		5 "Church of Prophecy"
		6 "New Testament Christian"
		7 "Church of God, Saint & Christ"
		8 "Moravian"
		9 "Christian & Missionary Alliance"
		10 "Advent Christian"
		11 "Spiritualist"
		12 "Assembly of God"
		13 "Free Methodist"
		14 "Apostolic Faith"
		15 "African Methodist"
		16 "Free Will Baptist"
		17 "Eden Evangelist"
		18 "Holiness (Nazarene) "
		19 "Baptist (Northern)"
		20 "Brethren Church, Brethren "
		21 "Witness Holiness"
		22 "Brethren, Plymouth"
		23 "United Brethren, United Brethren in Christ"
		24 "Independent"
		25 "Christian Disciples "
		26 "Christ in Christian Union "
		27 "Open Bible"
		28 "Christian Catholic"
		29 "Christ Church Unity "
		30 "Christ Adelphians"
		31 "Christian; Central Christian"
		32 "Christian Reform"
		33 "Christian Scientist "
		34 "Church of Christ, Evangelical"
		35 "Church of Christ"
		36 "Churches of God(Except with Christ and Holiness)"
		37 "Church of God in Christ"
		38 "Church of God in Christ Holiness"
		39 "Church of the Living God"
		40 "Congregationalist, 1st Congreg"
		41 "Community Church"
		42 "Covenant"
		43 "Dutch Reform"
		44 "Disciples of Christ"
		45 "Evangelical, Evangelist"
		46 "Evangelical Reformed"
		47 "Evangelist Free Church"
		48 "First Church"
		49 "First Christian Disciples of Christ"
		50 "First Reformed"
		51 "First Christian"
		52 "Full Gospel"
		53 "Four Square Gospel"
		54 "Friends"
		55 "Holy Roller"
		56 "Holiness; Church of Holiness"
		57 "Pilgrim Holiness"
		58 "Jehovah's Witnesses"
		59 "LDS"
		60 "LDS--Mormon"
		61 "LDS--Reorganized"
		62 "LDS--Jesus Christ; Church of Jesus LDS"
		63 "Mennonite"
		64 "Mormon"
		65 "Nazarene"
		66 "Pentecostal Assembly of God"
		67 "Pentecostal Church of God"
		68 "Pentecostal"
		69 "Pentecostal Holiness, Holiness Pentecostal"
		70 "Quaker"
		71 "Reformed"
		72 "Reformed United Church of Christ"
		73 "Reformed Church of Christ"
		74 "Religious Science"
		75 "Mind Science"
		76 "Salvation Army"
		77 "7th Day Adventist"
		78 "Sanctified, Sanctification"
		79 "United Holiness"
		80 "Unitarian, Universalist"
		81 "United Church of Christ"
		82 "United Church, Unity Church"
		83 "Wesleyan"
		84 "Wesleyan Methodist--Pilgrim"
		85 "Zion Union"
		86 "Zion Union Apostolic"
		87 "Zion Union Apostolic--Reformed"
		88 "Disciples of God"
		89 "Grace Reformed"
		90 "Holiness Church of God"
		91 "Evangelical Covenant"
		92 "Mission Covenant"
		93 "Missionary Baptist"
		94 "Swedish Mission"
		95 "Unity"
		96 "United Church of Christianity"
		97 "Other Fundamentalist"
		98 "Federated Church"
		99 "American Reform"
		100 "Grace Brethren"
		101 "Christ in God"
		102 "Charismatic"
		103 "Pentecostal Apostolic"
		104 "House of Prayer"
		105 "Latvian Lutheran"
		106 "Triumph Church of God"
		107 "Apostolic Christian"
		108 "Christ Cathedral of Truth"
		109 "Bible Missionary"
		110 "Calvary Bible"
		111 "Amish"
		112 "Evangelical Methodist"
		113 "Worldwide Church of God"
		114 "Church Universal and Triumphant"
		115 "Mennonite Brethren"
		116 "Church of the First Born"
		117 "Missionary Church"
		118 "The Way Ministry"
		119 "United Church of Canada"
		120 "Evangelical United Brethren"
		121 "The Church of God of Prophecy"
		122 "Chapel of Faith"
		123 "Polish National Church"
		124 "Faith Gospel Tabernacle"
		125 "Christian Calvary Chapel"
		126 "Carmelite"
		127 "Church of Daniel's Band"
		128 "Christian Tabernacle"
		129 "Living Word"
		130 "True Light Church of Christ"
		131 "Macedonia"
		132 "Brother of Christ"
		133 "Primitive Baptist"
		134 "Independent Fundamental Church of America"
		135 "Chinese Gospel Church"
		136 "New Age Spirituality"
		137 "New Song"
		138 "Apostolic Church"
		139 "Faith Christian"
		140 "People's Church"
		141 "New Birth Christian"
		142 "Unity School of Christianity"
		143 "Assyrian Evangelist Church"
		144 "Spirit of Christ"
		145 "Church of Jesus Christ of the Restoration"
		146 "Laotian Christian"
		148 "Schwenkfelder"
		150 "Zwinglian"
		151 "World Overcomer Outreach Ministry"
		152 "Course in Miracles"
		153 "Unity of the Brethren"
		154 "Spirit Filled"
		155 "Christian Union"
		156 "Church of Living Christ"
		157 "Community of Christ"
		158 "New Hope Christian Fellowship"
		159 "Community Christian Fellowship"
		160 "Friends in Christ"
		161 "Hawaiian Ohana"
		162 "Reformed Church of Jesus Christ of Latter Day Saints"
		163 "Swedenurgian/Churches of the New Jerusalem"
		164 "Divine Science"
		165 "Church of the Living God"
		166 "United Christian"
		167 "Sanctuary"
		168 "Rain on Us Deliverance Ministries"
		169 "The Word Church"
		170 "Cornerstone Church"
		171 "Life Sanctuary"
		172 "Word of Faith Church"
		173 "Harvest Church"
		174 "Shephard's Chapel"
		175 "Greater New Testament Church"
		176 "Vineyard Church"
		177 "Real Life Ministries"
		178 "Cathedral of Joy"
		179 "Great Faith Ministries"
		180 "Shield of Faith Ministries"
		181 "Born Again"
		182 "Alliance"
		183 "Jacobite Apostolic"
		184 "Church of God of Israel"
		185 "Journeys"
		186 "National Progressive Baptist"
		187 "New Apostolic"
		188 "Metropolitan Community"
		189 "Family Life Church"
		190 "Faith Fellowship"
		191 "Faith Covenant"
		192 "New Thought"
		193 "Free Spirit Ministry"
		194 "Jacobite Syrian Christian Church"
		195 "The Ark Church"
		998 "DK"
		999 "NA";

	label define TITHING
		99995 "TITHES, AMT. NOT GIVEN"
		99996 "99996 OR MORE"
		99997 "REFUSED"
		99998 "DK"
		99999 "NA";

	label define PRAYERY
		0 "IAP"
		1 "REQUIRED"
		2 "FORBIDDEN"
		3 "LOCAL DECISION"
		8 "DK"
		9 "NA";

	label define PRAYERX
		0 "IAP"
		1 "PRAYER READ DAILY"
		2 "SILENT MEDITATION"
		3 "NO PRAYERS"
		4 "OTHER"
		8 "DK"
		9 "NA";

	label define BIBLE
		0 "IAP"
		1 "WORD OF GOD"
		2 "INSPIRED WORD"
		3 "BOOK OF FABLES"
		4 "OTHER"
		8 "DK"
		9 "NA";

	label define BIBLEY
		0 "IAP"
		1 "GOD'S WORD"
		2 "INSPIRED BY GOD"
		3 "WRITTEN BY MAN"
		4 "NOT WORTH MUCH"
		5 "OTHER"
		8 "DK"
		9 "NA";

	label define WORLD1
		0 "IAP"
		1 "WORLD IS EVIL"
		7 "WORLD IS GOOD"
		8 "DK"
		9 "NA";

	label define WORLD2
		0 "IAP"
		1 "THE GOOD MUST ACT"
		7 "GOOD MUST BEWARE"
		8 "DK"
		9 "NA";

	label define WORLD3
		0 "IAP"
		1 "GOD NOT HERE"
		7 "GOD IS HERE"
		8 "DK"
		9 "NA";

	label define WORLD4
		0 "IAP"
		1 "PEOPLE ARE GOOD"
		7 "PEOPLE ARE EVIL"
		8 "DK"
		9 "NA";

	label define WORLD5
		0 "IAP"
		1 "ARTS CAN BE HOLY"
		7 "ARTS CAN BE EVIL"
		8 "DK"
		9 "NA";

	label define WORLD6
		0 "IAP"
		1 "WORLD IS CHAOTIC"
		7 "WORLD IS HARMONIOUS"
		8 "DK"
		9 "NA";

	label define WORLD7
		0 "IAP"
		1 "ACTION REVEALS GOD"
		7 "MOST ACTS ARE VAIN"
		8 "DK"
		9 "NA";

	label define LIBTEMP
		998 "DK"
		999 "NA";

	label define FEPRIEST
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE SOMEWHAT"
		3 "DISAGREE SOMEWHAT"
		4 "DISAGREE STRONGLY"
		8 "NO OPINION"
		9 "NA";

	label define FECLERGY
		0 "IAP"
		1 "FAVOR"
		2 "OPPOSE"
		8 "NO OPINION"
		9 "NA";

	label define RELGRADE
		0 "IAP"
		1 "A"
		2 "B"
		3 "C"
		4 "D"
		5 "F"
		6 "NO RELIGION"
		8 "DK"
		9 "NA";

	label define RACDIN
		0 "IAP"
		1 "STRONGLY OBJECT"
		2 "MILDLY OBJECT"
		3 "NOT OBJECT"
		8 "DK"
		9 "NA";

	label define RACPUSH
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE SLIGHTLY"
		3 "DISAGREE SLIGHTLY"
		4 "DISAGREE STRONGLY"
		8 "DK"
		9 "NA";

	label define RACOPEN
		0 "IAP"
		1 "OWNER DECIDES"
		2 "CANT DISCRIMINATE"
		3 "NEITHER"
		8 "DK"
		9 "NA";

	label define RACDIS
		0 "IAP"
		1 "SAME BLOCK"
		2 "1-3 BLKS AWAY"
		3 "4-8 BLKS AWAY"
		4 "OVER 8 BLKS"
		8 "DK"
		9 "NA";

	label define RACINTEG
		0 "IAP"
		1 "ALL BLACK"
		2 "STAY INTEGRATED"
		3 "MIXED,NOT WH-BL"
		8 "DK"
		9 "NA";

	label define RACOBJCT
		0 "IAP"
		1 "YES,WOULD LIKE IT"
		2 "YES,WOULD NOT LIKE"
		3 "NO DIFFERENCE"
		8 "DK"
		9 "NA";

	label define RACSCHOL
		0 "IAP"
		1 "SAME SCHOOLS"
		2 "SEPARATE SCHOOLS"
		8 "DK"
		9 "NA";

	label define RACFEW
		0 "IAP"
		1 "YES, OBJECT"
		2 "NO"
		8 "DK"
		9 "NA";

	label define RACJOB
		0 "IAP"
		1 "AS GOOD A CHANCE"
		2 "WHITES FIRST"
		8 "DK"
		9 "NA";

	label define RACCHURH
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "NO CHURCH"
		8 "DK"
		9 "NA";

	label define COLOR
		0 "IAP"
		1 "VERY DARK BROWN"
		2 "DARK BROWN"
		3 "MEDIUM BROWN"
		4 "LIGHT BROWN"
		5 "VERY LIGHT BROWN"
		8 "DK"
		9 "NA";

	label define RACNAME
		0 "IAP"
		1 "BLACK"
		2 "NEGRO"
		3 "COLORED"
		4 "AFRO-AMERICAN"
		8 "MAKES NO DIFFERENCE"
		9 "NA";

	label define RACHISCH
		0 "DIDNT GO TO HS"
		1 "ALL BLACK"
		2 "MOSTLY BLACK"
		3 "MOSTLY WHITE"
		8 "DK"
		9 "NA";

	label define RACMIX
		0 "IAP"
		1 "NONE"
		2 "ONE OR TWO"
		3 "THREE OR MORE"
		8 "DK"
		9 "NA";

	label define RACNEIGH
		0 "IAP"
		1 "ALL BLACK"
		2 "MOSTLY BLACK"
		3 ".5 BLACK - .5 WHITE"
		4 "MOSTLY WHITE"
		8 "DK"
		9 "NA";

	label define RACTRUST
		0 "IAP"
		1 "MOST WHITE PEOPLE"
		2 "SOME WHITE PEOPLE"
		3 "NO WHITE PEOPLE"
		8 "DK"
		9 "NA";

	label define RACPARTY
		0 "IAP"
		1 "REPUBLICAN PARTY"
		2 "DEMOCRATIC PARTY"
		3 "NOT MUCH DIFFERENCE"
		8 "DK"
		9 "NA";

	label define RACOCC
		0 "IAP"
		1 "ALMOST ALWAYS"
		2 "SOMETIMES"
		3 "ALMOST NEVER"
		8 "DK"
		9 "NA";

	label define RACOPNOW
		0 "IAP"
		1 "IMPROVED"
		2 "REMAINED SAME"
		3 "GOTTEN WORSE"
		8 "DK"
		9 "NA";

	label define RACOPWIL
		0 "IAP"
		1 "IMPROVE"
		2 "REMAIN SAME"
		3 "GET WORSE"
		8 "DK"
		9 "NA";

	label define RACIMP
		0 "IAP"
		1 "ONE OF MOST IMP"
		2 "IMPORTANT"
		3 "NOT VERY IMP"
		4 "NOT IMP AT ALL"
		8 "DK"
		9 "NA";

	label define RACINFO
		0 "IAP"
		1 "ALL INFO R NEEDS"
		2 "MOST INFO"
		3 "SOME INFO"
		4 "VERY LITTLE INFO"
		8 "DK"
		9 "NA";

	label define RACFIRM
		0 "IAP"
		1 "VERY LIKELY TO CHANG"
		2 "SOMEWHAT LIKELY"
		3 "SOMEWHAT UNLIKELY"
		4 "VERY UNLIKELY TO CHA"
		8 "DK"
		9 "NA";

	label define RACCARE
		0 "IAP"
		1 "VERY CONCERNED"
		2 "SOMEWHAT CONCERNED"
		3 "NOT VERY CONCERNED"
		4 "NOT CONCERNED AT ALL"
		8 "DK"
		9 "NA";

	label define RACTHINK
		0 "IAP"
		1 "VERY OFTEN"
		2 "FAIRLY OFTEN"
		3 "OCCASIONALLY"
		4 "ALMOST NEVER"
		8 "DK"
		9 "NA";

	label define AFFRMACT
		0 "IAP"
		1 "STRONGLY SUPPORT PREF"
		2 "SUPPORT PREF"
		3 "OPPOSE PREF"
		4 "STRONGLY OPPOSE PREF"
		8 "DK"
		9 "NA";

	label define WRKWAYUP
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE SOMEWHAT"
		3 "NEITHER AGREE NOR DISAGREE"
		4 "DISAGREE SOMEWHAT"
		5 "DISAGREE STRONGLY"
		8 "DK"
		9 "NA";

	label define BLKSIMP
		0 "IAP"
		1 "IMPROVED"
		2 "GOTTEN WORSE"
		3 "ABOUT THE SAME"
		8 "DK"
		9 "NA";

	label define CLOSEBLK
		0 "IAP"
		1 "NOT AT ALL CLOSE"
		5 "NEITHER ONE OR THE OTHER"
		9 "VERY CLOSE"
		98 "DK"
		99 "NA";

	label define ALIENAT1
		0 "IAP"
		1 "FEEL"
		2 "NOT FEEL"
		8 "DK"
		9 "NA";

	label define HAPPY
		0 "IAP"
		1 "VERY HAPPY"
		2 "PRETTY HAPPY"
		3 "NOT TOO HAPPY"
		8 "DK"
		9 "NA";

	label define HAPCOHAB
		0 "IAP"
		1 "Very happy"
		2 "Pretty happy"
		3 "Not too happy"
		8 "DON'T KNOW"
		9 "No answer";

	label define HEALTH
		0 "IAP"
		1 "EXCELLENT"
		2 "GOOD"
		3 "FAIR"
		4 "POOR"
		8 "DK"
		9 "NA";

	label define LIFE
		0 "IAP"
		1 "EXCITING"
		2 "ROUTINE"
		3 "DULL"
		8 "DK"
		9 "NA";

	label define HELPFUL
		0 "IAP"
		1 "HELPFUL"
		2 "LOOKOUT FOR SELF"
		3 "DEPENDS"
		8 "DK"
		9 "NA";

	label define FAIR
		0 "IAP"
		1 "TAKE ADVANTAGE"
		2 "FAIR"
		3 "DEPENDS"
		8 "DK"
		9 "NA";

	label define TRUST
		0 "IAP"
		1 "CAN TRUST"
		2 "CANNOT TRUST"
		3 "DEPENDS"
		8 "DK"
		9 "NA";

	label define SATCITY
		0 "IAP"
		1 "VERY GREAT DEAL"
		2 "GREAT DEAL"
		3 "QUITE A BIT"
		4 "A FAIR AMOUNT"
		5 "SOME"
		6 "A LITTLE"
		7 "NONE"
		8 "DK"
		9 "NA";

	label define CONFINAN
		0 "IAP"
		1 "A GREAT DEAL"
		2 "ONLY SOME"
		3 "HARDLY ANY"
		8 "DK"
		9 "NA";

	label define CONFINAY
		0 "IAP"
		1 "COMPLETE CONFIDENCE"
		7 "NO CONFIDENCE"
		8 "DK"
		9 "NA";

	label define MANNERS
		0 "IAP"
		1 "1 MOST DESIRABLE"
		2 "3 MOST DESIRABLE"
		3 "NOT MENTIONED"
		4 "3 LEAST DESIRABLE"
		5 "1 LEAST DESIRABLE"
		8 "DK"
		9 "NA";

	label define MANNERSZ
		0 "IAP"
		1 "EXTREMELY IMPT"
		2 "VERY IMPT"
		3 "FAIRLY IMPT"
		4 "NOT TOO IMPT"
		5 "NOT AT ALL IMPT"
		8 "DK"
		9 "NA";

	label define OBEY
		0 "IAP"
		1 "MOST IMPORTANT"
		2 "2ND IMPORTANT"
		3 "3RD IMPORTANT"
		4 "4TH IMPORTANT"
		5 "LEAST IMPORTANT"
		8 "DK"
		9 "NA";

	label define CHLDSEX
		0 "IAP"
		1 "MOSTLY BOYS"
		2 "MOSTLY GIRLS"
		3 "BOTH EQUALLY"
		8 "DK"
		9 "NA";

	label define YOUNGEN
		0 "IAP"
		1 "WHAT ELDERS THINK"
		2 "THINK FOR SELVES"
		8 "DK"
		9 "NA";

	label define SOCREL
		0 "IAP"
		1 "ALMOST DAILY"
		2 "SEV TIMES A WEEK"
		3 "SEV TIMES A MNTH"
		4 "ONCE A MONTH"
		5 "SEV TIMES A YEAR"
		6 "ONCE A YEAR"
		7 "NEVER"
		8 "DK"
		9 "NA";

	label define SOCPARS
		0 "NO SUCH PEOPLE"
		1 "ALMOST DAILY"
		2 "SEV TIMES A WEEK"
		3 "SEV TIMES A MNTH"
		4 "ONCE A MONTH"
		5 "SEV TIMES A YEAR"
		6 "ONCE A YEAR"
		7 "NEVER"
		8 "DK"
		9 "NA";

	label define AGED
		0 "IAP"
		1 "A GOOD IDEA"
		2 "A BAD IDEA"
		3 "DEPENDS"
		8 "DK"
		9 "NA";

	label define PARTFULL
		0 "IAP"
		1 "FULL-TIME"
		2 "PART-TIME"
		8 "DK"
		9 "NA";

	label define ANOMIA1
		0 "IAP"
		1 "AGREE"
		2 "DISAGREE"
		8 "DK"
		9 "NA";

	label define JOBLOSE
		0 "IAP"
		1 "VERY LIKELY"
		2 "FAIRLY LIKELY"
		3 "NOT TOO LIKELY"
		4 "NOT LIKELY"
		5 "LEAVING LABOR FORCE"
		8 "DK"
		9 "NA";

	label define JOBFIND
		0 "IAP"
		1 "VERY EASY"
		2 "SOMEWHAT EASY"
		3 "NOT EASY"
		8 "DK"
		9 "NA";

	label define SATJOB
		0 "IAP"
		1 "VERY SATISFIED"
		2 "MOD. SATISFIED"
		3 "A LITTLE DISSAT"
		4 "VERY DISSATISFIED"
		8 "DK"
		9 "NA";

	label define RICHWORK
		0 "IAP"
		1 "CONTINUE WORKING"
		2 "STOP WORKING"
		8 "DK"
		9 "NA";

	label define JOBINC
		0 "IAP"
		1 "MOST IMPT"
		2 "SECOND"
		3 "THIRD"
		4 "FOURTH"
		5 "FIFTH"
		8 "DK"
		9 "NA";

	label define JOBKEEP
		0 "IAP"
		1 "UNIMPORTANT"
		7 "VERY IMPORTANT"
		8 "DK"
		9 "NA";

	label define CLASS
		0 "IAP"
		1 "LOWER CLASS"
		2 "WORKING CLASS"
		3 "MIDDLE CLASS"
		4 "UPPER CLASS"
		5 "NO CLASS"
		8 "DK"
		9 "NA";

	label define CLASSY
		0 "IAP"
		1 "LOWER CLASS"
		2 "WORKING CLASS"
		3 "MIDDLE CLASS"
		4 "UPPER MIDDLE CLASS"
		5 "UPPER CLASS"
		8 "DK"
		9 "NA";

	label define RANK
		0 "IAP"
		1 "TOP"
		10 "BOTTOM"
		98 "DK"
		99 "NA";

	label define SATFIN
		0 "IAP"
		1 "SATISFIED"
		2 "MORE OR LESS"
		3 "NOT AT ALL SAT"
		8 "DK"
		9 "NA";

	label define FINALTER
		0 "IAP"
		1 "BETTER"
		2 "WORSE"
		3 "STAYED SAME"
		8 "DK"
		9 "NA";

	label define FINRELA
		0 "IAP"
		1 "FAR BELOW AVERAGE"
		2 "BELOW AVERAGE"
		3 "AVERAGE"
		4 "ABOVE AVERAGE"
		5 "FAR ABOVE AVERAGE"
		8 "DK"
		9 "NA";

	label define INCNEED
		99997 "DEPENDS"
		99998 "DK"
		99999 "NA"
		999997 "DEPENDS"
		999998 "DK"
		999999 "NA";

	label define MININC
		997 "$997+ PER WEEK"
		998 "DK"
		999 "NA";

	label define WKSUBS
		0 "IAP"
		3 "YES"
		4 "NO"
		8 "DK"
		9 "NA";

	label define UNION
		0 "IAP"
		1 "R BELONGS"
		2 "SPOUSE BELONGS"
		3 "R AND SPOUSE BELONG"
		4 "NEITHER BELONGS"
		8 "DK"
		9 "NA";

	label define GETAHEAD
		0 "IAP"
		1 "HARD WORK"
		2 "BOTH EQUALLY"
		3 "LUCK OR HELP"
		4 "OTHER"
		8 "DK"
		9 "NA";

	label define PARSOL
		0 "IAP"
		1 "MUCH BETTER"
		2 "SOMEWHAT BETTER"
		3 "ABOUT THE SAME"
		4 "SOMEWHAT WORSE"
		5 "MUCH WORSE"
		8 "DK"
		9 "NA";

	label define KIDSSOL
		0 "IAP"
		1 "MUCH BETTER"
		2 "SOMEWHAT BETTER"
		3 "ABOUT THE SAME"
		4 "SOMEWHAT WORSE"
		5 "MUCH WORSE"
		6 "NO CHILDREN -VOLUNTEERED-"
		8 "DK"
		9 "NA";

	label define FEHOME
		0 "IAP"
		1 "AGREE"
		2 "DISAGREE"
		8 "NOT SURE"
		9 "NA";

	label define FEPRES
		0 "IAP"
		1 "YES"
		2 "NO"
		5 "WOULDNT VOTE"
		8 "DK"
		9 "NA";

	label define FEPOLY
		0 "IAP"
		1 "MEN"
		2 "EQUAL"
		3 "WOMEN"
		8 "DK"
		9 "NA";

	label define ABPRO1
		0 "IAP"
		96 "None"
		99 "NA";

	label define ABPRO2
		0 "IAP"
		99 "NA";

	label define CHLDIDEL
		7 "SEVEN+"
		8 "AS MANY AS WANT"
		9 "DK,NA";

	label define CHLDMORE
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "UNCERTAIN"
		4 "INAPPROPRIATE"
		9 "NA";

	label define CHLDNUM
		0 "IAP"
		8 "8 OR MORE"
		9 "DK,NA";

	label define CHLDSOON
		8 "DK"
		9 "NA";

	label define PILL
		0 "IAP"
		1 "AVAILABLE"
		2 "NOT AVAILABLE"
		8 "DK"
		9 "NA";

	label define TEENPILL
		0 "IAP"
		1 "AVAILABLE"
		2 "NOT AVAILABLE"
		3 "DEPENDS ON AGE"
		8 "DK"
		9 "NA";

	label define PILLOK
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "DISAGREE"
		4 "STRONGLY DISAGREE"
		8 "DK"
		9 "NA";

	label define SEXEDUC
		0 "IAP"
		1 "FAVOR"
		2 "OPPOSE"
		3 "DEPENDS"
		8 "DK"
		9 "NA";

	label define DIVLAW
		0 "IAP"
		1 "EASIER"
		2 "MORE DIFFICULT"
		3 "STAY SAME"
		8 "DK"
		9 "NA";

	label define SPPAID
		0 "IAP"
		1 "REGULAR BASIS"
		2 "OCCASIONALLY"
		3 "NOT AT ALL"
		8 "DK"
		9 "NA";

	label define PREMARSX
		0 "IAP"
		1 "ALWAYS WRONG"
		2 "ALMST ALWAYS WRG"
		3 "SOMETIMES WRONG"
		4 "NOT WRONG AT ALL"
		5 "OTHER"
		8 "DK"
		9 "NA";

	label define HOMOCHNG
		0 "IAP"
		1 "SOMETHING PEOPLE CHOOSE TO BE"
		2 "SOMETHING THEY CANNOT CHANGE"
		8 "DK"
		9 "NA";

	label define PORNLAW
		0 "IAP"
		1 "ILLEGAL TO ALL"
		2 "ILLEGAL UNDER 18"
		3 "LEGAL"
		8 "DK"
		9 "NA";

	label define HITAGE
		0 "IAP"
		1 "CHILD"
		2 "ADULT"
		3 "BOTH"
		8 "DK"
		9 "NA";

	label define HITNUM
		0 "IAP"
		1 "ONCE"
		2 "2-3 TIMES"
		3 "4+ TIMES"
		8 "NOT SURE"
		9 "NA";

	label define OWNGUN
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "REFUSED"
		8 "DK"
		9 "NA";

	label define CONVICTD
		0 "IAP"
		1 "Yes"
		2 "No"
		8 "DON'T KNOW"
		9 "No answer";

	label define HUNT
		0 "IAP"
		1 "RESP"
		2 "SPOUSE"
		3 "BOTH"
		4 "NEITHER"
		8 "DK"
		9 "NA";

	label define NEWS
		0 "IAP"
		1 "EVERYDAY"
		2 "FEW TIMES A WEEK"
		3 "ONCE A WEEK"
		4 "LESS THAN ONCE WK"
		5 "NEVER"
		8 "DK"
		9 "NA";

	label define PHONE
		0 "IAP"
		1 "NO PHONE"
		2 "REFUSED"
		3 "PHONE IN HOME"
		4 "PHONE ELSEWHERE"
		5 "PHONE,DK WHERE"
		6 "CELLPHONE"
		9 "NA";

	label define COOP2
		0 "IAP"
		1 "FRIENDLY AND EAGER"
		2 "COOPERATIVE"
		3 "INDIFFERENT"
		4 "HOSTILE"
		8 "DK"
		9 "NA";

	label define COOP
		0 "IAP"
		1 "FRIENDLY,INTERESTED"
		2 "COOPERATIVE"
		3 "RESTLESS,IMPATIENT"
		4 "HOSTILE"
		8 "DK"
		9 "NA";

	label define COMPREND
		1 "GOOD"
		2 "FAIR"
		3 "POOR"
		8 "DK"
		9 "NA";

	label define FORM
		0 "NO SPLIT QUES"
		1 "STANDARD <X>"
		2 "ALTERNATE <Y>"
		3 "ALTERNATE <Z>";

	label define ABLEGAL
		0 "IAP"
		1 "ALWAYS"
		2 "SOMETIMES"
		3 "NEVER"
		8 "DK"
		9 "NA";

	label define ERA
		0 "IAP"
		1 "STRONGLY FAVOR"
		2 "FAVOR"
		3 "OPPOSE"
		4 "STRONGLY OPPOSE"
		8 "DK"
		9 "NA";

	label define ERATELL
		0 "IAP"
		1 "STRONGLY FAVOR"
		2 "SOMEWHAT FAVOR"
		3 "SOMEWHT OPPOSE"
		4 "STRONGLY OPPOSE"
		8 "DK"
		9 "NA";

	label define RACSUBGV
		0 "IAP"
		1 "ENCOURAGE"
		2 "DISCOURAGE"
		3 "LEAVE ALONE"
		8 "DK"
		9 "NA";

	label define RACMAREL
		0 "IAP"
		1 "VERY UNEASY"
		2 "SOMEWHAT UNEASY"
		3 "NOT UNEASY"
		8 "DK"
		9 "NA";

	label define RACCHNG
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "WDNT BELONG"
		8 "DK"
		9 "NA";

	label define SALFERGT
		0 "IAP"
		1 "VERY OFTEN"
		2 "SOMETIMES"
		3 "ALMOST NEVER"
		8 "DK"
		9 "NA";

	label define DIVORCE5
		0 "NONE"
		1 "PRIOR 4 YEARS"
		2 "LAST YEAR"
		3 "BOTH"
		9 "NA";

	label define UNEMP5
		0 "NO"
		1 "4 PRIOR YRS"
		2 "4 PRIOR YRS, EARNER"
		3 "LAST YR"
		4 "BOTH,NOT EARNER"
		5 "BOTH,EARNER PRIOR 4"
		6 "LAST YR, EARNER"
		7 "BOTH,EARNER LAST YR"
		8 "BOTH,EARNER BOTH"
		9 "NA";

	label define DEATH5
		0 "NONE"
		1 "1 IN PRIOR 4 YRS"
		2 "2+ IN PRIOR 4 YRS"
		3 "1 LAST YR"
		4 "1 LAST,1 IN PRIOR 4"
		5 "1 IN LAST,2+ PRIOR 4"
		6 "2+ LAST YR"
		7 "2+ LAST, 1 PRIOR 4"
		8 "2+ LAST, 2+ PRIOR 4"
		9 "NA";

	label define PADEATH
		0 "NO DEATH REPORTED"
		1 "DIED BEFORE R 16"
		2 "DIED 6+ YRS AGO"
		3 "DIED  1-5 YRS AGO"
		4 "DIED LAST YEAR"
		8 "CANT TELL"
		9 "NA";

	label define CHLDDTH
		0 "NO DEATH REPORTED"
		1 "DIED 6+ YRS AGO"
		2 "DIED 1-5 YRS AGO"
		3 "DIED LAST YEAR"
		9 "NA";

	label define TRAUMA1
		9 "NA";

	label define DEFSPDR
		0 "HAVENT THOUGHT MUCH"
		1 "GREATLY DECREASE"
		7 "GREATLY INCREASE"
		8 "DK"
		9 "NA";

	label define HLPMINR
		0 "HAVENT THOUGHT MUCH"
		1 "GOVT HELP"
		7 "HELP SELVES"
		8 "DK"
		9 "NA";

	label define CUTSPDR
		0 "HAVENT THOUGHT MUCH"
		1 "CUT SPENDING"
		7 "MAINTAIN SERVICES"
		8 "DK"
		9 "NA";

	label define PRIVACY
		0 "IAP"
		1 "VERY CONCERNED"
		2 "SOMEWHAT"
		3 "ONLY A LITTLE"
		4 "NOT CONCERNED"
		8 "DK"
		9 "NA";

	label define CIVIC
		0 "IAP"
		1 "MOST OF THE TIME"
		2 "SOME OF THE TIME"
		3 "NOW AND THEN"
		4 "HARDLY AT ALL"
		8 "DK"
		9 "NA";

	label define RUSHED
		0 "IAP"
		1 "ALWAYS"
		2 "SOMETIMES"
		3 "ALMOST NEVER"
		8 "DK"
		9 "NA";

	label define BORED
		0 "IAP"
		1 "QUITE OFTEN"
		2 "NOW AND THEN"
		3 "ALMOST NEVER"
		8 "DK"
		9 "NA";

	label define POLLGOOD
		0 "IAP"
		1 "GOOD PURPOSE"
		2 "DEPENDS"
		3 "WASTE OF TIME AND $"
		8 "DK"
		9 "NA";

	label define POLLTRUE
		0 "IAP"
		1 "ALMOST ALWAYS"
		2 "MOST OF THE TIME"
		3 "SOME OF THE TIME"
		4 "HARDLY EVER"
		8 "DK"
		9 "NA";

	label define FESERVE
		0 "IAP"
		1 "STRONGLY FAVOR"
		2 "PROBABLY FAVOR"
		3 "PROBABLY OPPOSE"
		4 "STRONGLY OPPOSE"
		8 "DK"
		9 "NA";

	label define MILQUAL
		0 "IAP"
		1 "EXCELLENT"
		2 "GOOD"
		3 "NOT SO GOOD"
		4 "POOR"
		8 "DK"
		9 "NA";

	label define MILPAY
		0 "IAP"
		1 "SHOULD BE LARGER"
		2 "ABOUT RIGHT"
		3 "SHOULD BE SMALLER"
		8 "DK"
		9 "NA";

	label define FENUMOK
		0 "IAP"
		1 "TOO MANY"
		2 "ABOUT RIGHT NUMBER"
		3 "SHOULD BE MORE"
		8 "DK"
		9 "NA";

	label define MILVOLOK
		0 "IAP"
		1 "VERY WELL"
		2 "FAIRLY WELL"
		3 "NOT WELL"
		8 "DK"
		9 "NA";

	label define FIGHTAIR
		0 "IAP"
		1 "SHOULD"
		2 "SHOULD NOT"
		8 "DK"
		9 "NA";

	label define FEFIGHT
		0 "IAP"
		1 "YES, THEY ARE"
		2 "NO THEY ARENT"
		8 "DK"
		9 "NA";

	label define FEHLPMIL
		0 "IAP"
		1 "RAISED EFFECTIVENESS"
		2 "NO DIFFERENCE"
		3 "LOWERED EFFCTIVENESS"
		8 "DK"
		9 "NA";

	label define DRAFT
		0 "IAP"
		1 "DRAFT"
		2 "VOLUNTEERS"
		8 "DK"
		9 "NA";

	label define DRAFTCOL
		0 "IAP"
		1 "YES"
		2 "NO, NOT EXEMPT"
		8 "DK"
		9 "NA";

	label define MINMILOP
		0 "IAP"
		1 "MILITARY BETTER"
		2 "CIVILIAN BETTER"
		3 "NO DIFFERENCE"
		8 "DK"
		9 "NA";

	label define MILOKME
		0 "IAP"
		1 "DEFINITELY GOOD"
		2 "PROBABLY GOOD"
		3 "PROB NOT GOOD"
		4 "DEF NOT GOOD"
		8 "DK"
		9 "NA";

	label define UPGRADE
		0 "IAP"
		1 "REFUSE TO ACCEPT"
		2 "ACCEPT & EDUCATE"
		8 "DK"
		9 "NA";

	label define JOBTRAIN
		0 "IAP"
		1 "YES,OBLIGATION"
		2 "NOT OBLIGATION"
		8 "DK"
		9 "NA";

	label define NUKEWAR
		0 "IAP"
		1 "WONT HAPPEN"
		7 "CERTAIN TO HAPPEN"
		8 "DK"
		9 "NA";

	label define RESDEFWK
		0 "IAP"
		1 "VERY DEPENDENT"
		2 "SOMEWHAT DEPENDENT"
		3 "NOT AT ALL"
		8 "DK"
		9 "NA";

	label define OBVOTE
		0 "IAP"
		1 "VERY IMPORTANT"
		2 "SOMEWHAT IMPORTANT"
		3 "NOT OBLIGATION"
		8 "DK"
		9 "NA";

	label define HELPPOOR
		0 "IAP"
		1 "GOVT ACTION"
		3 "AGREE WITH BOTH"
		5 "PEOPLE HELP SELVES"
		8 "DK"
		9 "NA";

	label define HELPNOT
		0 "IAP"
		1 "GOVT DO MORE"
		3 "AGREE WITH BOTH"
		5 "GOVT DOES TOO MUCH"
		8 "DK"
		9 "NA";

	label define HELPSICK
		0 "IAP"
		1 "GOVT SHOULD HELP"
		3 "AGREE WITH BOTH"
		5 "PEOPLE HELP SELVES"
		8 "DK"
		9 "NA";

	label define HELPBLK
		0 "IAP"
		1 "GOVT HELP BLKS"
		3 "AGREE WITH BOTH"
		5 "NO SPECIAL TREATMENT"
		8 "DK"
		9 "NA";

	label define EQCLOSE
		0 "IAP"
		1 "YES"
		2 "NO"
		7 "REFUSED"
		8 "DK"
		9 "NA";

	label define RCLOSE1
		0 "IAP"
		1 "ESPECIALLY CLOSE"
		2 "NOT ESP. CLOSE"
		7 "REFUSED"
		8 "DK"
		9 "NA";

	label define CLOSE12
		0 "IAP"
		1 "ESPECIALLY CLOSE"
		2 "KNOW EACH OTHER"
		3 "TOTAL STRANGERS"
		7 "REFUSED"
		8 "DK"
		9 "NA";

	label define SEX1
		0 "IAP"
		1 "MALE"
		2 "FEMALE"
		7 "REFUSED"
		8 "DK"
		9 "NA";

	label define RACE1
		0 "IAP"
		1 "ASIAN"
		2 "BLACK"
		3 "HISPANIC"
		4 "WHITE"
		5 "OTHER"
		7 "REFUSED"
		8 "DK"
		9 "NA";

	label define SPOUSE1
		0 "IAP"
		1 "MENTIONED"
		2 "NOT MENTIONED"
		8 "DK"
		9 "NA";

	label define TALKTO1
		0 "IAP"
		1 "ALMOST DAILY"
		2 "ONCE A WEEK"
		3 "ONCE A MONTH"
		4 "LT ONCE A MONTH"
		8 "DK"
		9 "NA";

	label define KNOWN1
		0 "IAP"
		1 "LT 3 YEARS"
		2 "3-6 YEARS"
		3 "6 YEARS +"
		8 "DK"
		9 "NA";

	label define EDUC1
		0 "1-6 YEARS"
		1 "7-9 YEARS"
		2 "10-12 YEARS"
		3 "H.S. GRAD"
		4 "SOME COLLEGE"
		5 "ASSO. DEGREE"
		6 "BACH. DEGREE"
		7 "GRAD OR PROF"
		8 "DK"
		9 "NA";

	label define RELIG1
		0 "IAP"
		1 "PROTESTANT"
		2 "CATHOLIC"
		3 "JEWISH"
		4 "NONE"
		5 "OTHER"
		8 "DK"
		9 "NA";

	label define PARTYID1
		0 "IAP"
		1 "DEMOCRAT"
		2 "REPUBLICAN"
		3 "INDEPENDENT"
		4 "OTHER"
		8 "DK"
		9 "NA";

	label define TALKPOL1
		0 "IAP"
		1 "ALMOST DAILY"
		2 "AT LEAST WEEKLY"
		3 "AT LEAST MONTHLY"
		4 "AT LEAST YEARLY"
		5 "LESS THAN YEARLY"
		6 "NEVER"
		8 "DK"
		9 "NA";

	label define TALKPOL
		0 "IAP"
		1 "ALMOST ALWAYS"
		2 "MOST OF THE TIME"
		3 "OCCASIONALLY"
		4 "ALMOST NEVER"
		8 "DK"
		9 "NA";

	label define FRNDKNOW
		0 "IAP"
		1 "ALL KNOW EACH OTHER"
		2 "MOST KNOW EACH OTHER"
		3 "FEW KNOW EACH OTHER"
		4 "NONE KNOW EACH OTHER"
		5 "NO FRIENDS<VOL.>"
		8 "DK"
		9 "NA";

	label define CHURHGRP
		0 "IAP"
		1 "CHURCH"
		2 "RELATED GROUP"
		3 "BOTH"
		8 "DK"
		9 "NA";

	label define MOSTACT
		0 "IAP"
		1 "FRATERNAL GROUPS"
		2 "SERVICE CLUBS"
		3 "VETERANS GROUPS"
		4 "POLITICAL CLUBS"
		5 "LABOR UNIONS"
		6 "SPORTS GROUPS"
		7 "YOUTH GROUPS"
		8 "SCHOOL SERVICE"
		9 "HOBBY CLUBS"
		10 "SCHOOL FRATS"
		11 "NATIONALITY GRPS"
		12 "FARM ORGS"
		13 "LIT OR ART GRPS"
		14 "PROF SOCIETIES"
		15 "CHURCH REL GRPS"
		16 "ANY OTHER GRPS"
		98 "DK"
		99 "NA";

	label define CAREGRP
		0 "IAP"
		1 "NOT COMMITTED"
		2 "SLIGHTLY COMM"
		3 "MODERATELY COMM"
		4 "STRONGLY COMM"
		5 "VERY STRONGLY COMM"
		8 "DK"
		9 "NA";

	label define LOCLIVED
		0 "IAP"
		1 "LT 1 YEAR"
		2 "1-3 YEARS"
		3 "4-10 YEARS"
		4 "GT 10 BUT LT LIFE"
		5 "ENTIRE LIFE"
		8 "DK"
		9 "NA";

	label define LOCTRUST
		0 "IAP"
		1 "ALMOST ALWAYS"
		2 "MOST OF TIME"
		3 "SOME OF TIME"
		4 "ALMOST NEVER"
		8 "DK"
		9 "NA";

	label define LOCINFLU
		0 "IAP"
		1 "A LOT"
		2 "MODERATE AMOUNT"
		3 "A LITTLE"
		4 "NONE"
		8 "DK"
		9 "NA";

	label define LOCCARE
		0 "IAP"
		1 "LOT OF ATTENTION"
		2 "SOME"
		3 "VERY LITTLE"
		4 "NONE"
		8 "DK"
		9 "NA";

	label define INTPOL
		0 "IAP"
		1 "VERY INTERESTED"
		2 "SOMEWHAT INT"
		3 "SLIGHTLY INT"
		4 "NOT INTERESTED"
		8 "DK"
		9 "NA";

	label define SWAYVOTE
		0 "IAP"
		1 "OFTEN"
		2 "SOMETIMES"
		3 "RARELY"
		4 "NEVER"
		8 "DK"
		9 "NA";

	label define WORKPOL
		0 "IAP"
		1 "MOST ELECTIONS"
		2 "SOME ELECTIONS"
		3 "ONLY A FEW"
		4 "NEVER"
		8 "DK"
		9 "NA";

	label define LOCSELF
		0 "IAP"
		1 "SELF FRNDS FAMLY"
		2 "BOTH"
		3 "WIDER CONCERN"
		8 "DK"
		9 "NA";

	label define GOVERNOR
		0 "IAP"
		1 "CORRECT"
		2 "INCORRECT"
		8 "DK"
		9 "NA";

	label define LOCVOTE
		0 "IAP"
		1 "VOTE IN ALL"
		2 "SOMETIMES MISS"
		3 "RARELY VOTE"
		4 "NEVER VOTE"
		8 "DK"
		9 "NA";

	label define BLKINFLU
		0 "IAP"
		1 "FAR TOO MUCH"
		2 "TOO MUCH"
		3 "RIGHT AMOUNT"
		4 "TOO LITTLE"
		5 "FAR TOO LITTLE"
		8 "DK"
		9 "NA";

	label define BLKGAINS
		0 "IAP"
		1 "CIVIL RIGHTS GRPS"
		7 "BETTER TRAINED INDS"
		8 "DK"
		9 "NA";

	label define FEGAINS
		0 "IAP"
		1 "WOMENS RIGHTS GRPS"
		7 "BETTER TRAINED INDS"
		8 "DK"
		9 "NA";

	label define SWITCH1
		110000 "AMER BAPTIST ASSOC"
		111000 "AMER BAPT CH IN US"
		112000 "NATL BAPT CON OF AM"
		113000 "NATL BAPT CON, USA"
		114000 "SOUTHERN BAPT CON"
		115000 "OTHER BAPTIST CHURCH"
		118000 "BAPTIST, DK WHICH"
		120000 "AFRCN METH EPIS CH"
		121000 "AFRCN METH EPIS ZION"
		122000 "UNITED METHODIST CH"
		123000 "OTHER METHODIST CH"
		128000 "METHODIST, DK WHICH"
		130000 "AMER LUTHERAN CHURCH"
		131000 "LUTHERAN CH IN AMER"
		132000 "LUTH CH-MISSOURI SYN"
		133000 "WISCONSIN EV LUTH SN"
		134000 "OTHER LUTHERAN CHURC"
		135000 "EVANGELICAL LUTHERAN"
		138000 "LUTHERAN, DK WHICH"
		140000 "PRESBYTERIAN CH N US"
		141000 "UNITED PRES CH IN US"
		142000 "OTHER PRESBYTERIAN"
		148000 "PRESBYTERIAN, DK WHI"
		150000 "EPISCOPAL CHURCH"
		160000 "OTHER PROTESTANT"
		170000 "NO DENOMINATION"
		200000 "CATHOLIC"
		300000 "JEWISH"
		400000 "NONE"
		500000 "OTHER RELIGION"
		999999 "MISSING";

	label define SWITNUM
		4 "FOUR OR MORE"
		9 "NA";

	label define SWITWHY1
		0 "NA"
		10 "MARRIAGE"
		14 "MARR & LOCATION"
		15 "MARR & THEOLOGY"
		16 "MARR. & CLERGY"
		17 "MARR & POSITIVE BLF"
		20 "FRIENDS"
		23 "FRNDS & FAMILY"
		24 "FRNDS & LOCATION"
		25 "FRNDS & THEO DIS"
		26 "FRNDS & CLERGY"
		28 "FRNDS & OTHER POS"
		30 "FAMILY"
		34 "FAM & LOCATION"
		35 "FAM & THEO DISS"
		37 "FAM & POSITIVE BLF"
		39 "FAM & MISC"
		40 "LOCATION"
		41 "LOC & TO CHANGE"
		45 "LOC & THEO DISSAT"
		46 "LOC AND CLERGY"
		47 "LOC & POSITIVE BLF"
		50 "THEOLOGICAL DISS"
		56 "THEO DISS & CLERGY"
		60 "CLERGY"
		68 "CLERGY & OTH POS"
		69 "CLERGY & MISSING"
		70 "TO CHANGE"
		71 "OTHER, TO CHANGE"
		76 "OTHER, MISC"
		77 "OTHER, POS BLFS"
		78 "OTHER,  POS OTHER"
		79 "OTHER,  MISSING"
		85 "LOC, THEO & CLRGY"
		86 "FRNDS,FAM,LOCATION"
		87 "MARR,LOC,THEO DIS"
		99 "MISSING VALUES";

	label define MADEN
		0 "IAP"
		10 "AM BAPTIST ASSO"
		11 "AM BAPT CH IN USA"
		12 "NAT BAPT CONV OF AM"
		13 "NAT BAPT CONV USA"
		14 "SOUTHERN BAPTIST"
		15 "OTHER BAPTISTS"
		18 "BAPTIST-DK WHICH"
		20 "AFR METH EPISCOPAL"
		21 "AFR METH EP ZION"
		22 "UNITED METHODIST"
		23 "OTHER METHODIST"
		28 "METHODIST-DK WHICH"
		30 "AM LUTHERAN"
		31 "LUTH CH IN AMERICA"
		32 "LUTHERAN-MO SYNOD"
		33 "WI EVAN LUTH SYNOD"
		34 "OTHER LUTHERAN"
		35 "EVANGELICAL LUTH"
		38 "LUTHERAN-DK WHICH"
		40 "PRESBYTERIAN C IN US"
		41 "UNITED PRES CH IN US"
		42 "OTHER PRESBYTERIAN"
		48 "PRESBYTERIAN-DK WH"
		50 "EPISCOPAL"
		60 "OTHER"
		70 "NO DENOMINATION"
		98 "DK"
		99 "NA";

	label define MAOTH
		0 "IAP"
		149 "Polish Catholic"
		196 "Empowerment Temple"
		197 "Grace Independent Baptist Church"
		198 "New Life"
		199 "Follower of Christ"
		201 "Pathways Christian Church"
		204 "Renia de Deus"
		998 "DK"
		999 "NA";

	label define MAJEW
		0 "IAP"
		1 "Orthodox"
		2 "Conservative"
		3 "Reform"
		4 "None of these"
		5 "OTHER"
		8 "DONT KNOW"
		9 "NA";

	label define PADEN
		0 "IAP"
		10 "AM BAPTIST ASSO"
		11 "AM BAPT CH IN USA"
		12 "NAT BAPT CONV OF AM"
		13 "NAT BAPT CONV USA"
		14 "SOUTHERN BAPTIST"
		15 "OTHER BAPTISTS"
		18 "BAPTIST-DK WHICH"
		20 "AFR METH EPISCOPAL"
		21 "AFR METH EP ZION"
		22 "UNITED METHODIST"
		23 "OTHER METHODIST"
		28 "METHODIST-DK WHICH"
		30 "AM LUTHERAN"
		31 "LUTH CH IN AMERICA"
		32 "LUTHERAN-MO SYNOD"
		33 "WI EVAN LUTH SYNOD"
		34 "OTHER LUTHERAN"
		35 "EVANGELICAL LUTH"
		38 "LUTHERAN-DK WHICH"
		40 "PRESBYTERIAN C IN US"
		41 "UNITED PRES CH IN USA"
		42 "OTHER PRESBYTERIAN"
		48 "PRESBYTERIAN-DK WH"
		50 "EPISCOPAL"
		60 "OTHER"
		70 "NO DENOMINATION"
		98 "DK"
		99 "NA";

	label define CHURHSCH
		0 "NEVER WENT OR LESS THAN HALF YEAR"
		95 "ONE OR MORE YEAR"
		98 "DK"
		99 "NA";

	label define SUNSCH16
		0 "IAP"
		1 "REGULARLY"
		2 "MOST OF THE TIME"
		3 "SOME OF THE TIME"
		4 "NEVER"
		5 "ATT PAROCHIAL SCH"
		8 "DK"
		9 "NA";

	label define GOD
		0 "IAP"
		1 "DONT BELIEVE"
		2 "NO WAY TO FIND OUT"
		3 "SOME HIGHER POWER"
		4 "BELIEVE SOMETIMES"
		5 "BELIEVE BUT DOUBTS"
		6 "KNOW GOD EXISTS"
		8 "DK"
		9 "NA";

	label define READWORD
		0 "IAP"
		1 "SEVERAL X DAY"
		2 "ONCE A DAY"
		3 "SEVERAL X WEEK"
		4 "ONCE A WEEK"
		5 "LT ONCE A WEEK"
		6 "DIDNT READ LAST YEAR"
		8 "DK"
		9 "NA";

	label define PUNSIN
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE SOMEWHAT"
		3 "DISAGREE SOMEWHAT"
		4 "DISAGREE STRONGLY"
		8 "DK"
		9 "NA";

	label define DECBIBLE
		0 "IAP"
		1 "VERY IMPORTANT"
		5 "NOT VERY IMPORTANT"
		8 "DK"
		9 "NA";

	label define MYFAITH
		0 "IAP"
		1 "FAITH FREE OF DOUBT"
		7 "FAITH MIXED W DOUBT"
		8 "DK"
		9 "NA";

	label define MADATGOD
		0 "IAP"
		1 "OFTEN ANGRY AT GOD"
		7 "NEVER ANGRY AT GOD"
		8 "DK"
		9 "NA";

	label define DOUBTS1
		0 "IAP"
		1 "OFTEN"
		2 "SOMETIMES"
		3 "NEVER"
		8 "DK"
		9 "NA";

	label define FRNDCON1
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "R ISNT IN CONGREGTN"
		4 "FRIEND, NO INFO"
		8 "DK"
		9 "NA";

	label define FRNDDEN1
		0 "IAP"
		10 "AM BAPTIST ASSO"
		11 "AM BAPT CH IN USA"
		12 "NAT BAPT CONV OF AM"
		13 "NAT BAPT CONV USA"
		14 "SOUTHERN BAPTIST"
		15 "OTHER BAPTISTS"
		18 "BAPTIST-DK WHICH"
		20 "AFR METH EPISCOPAL"
		21 "AFR METH EP ZION"
		22 "UNITED METHODIST"
		23 "OTHER METHODIST"
		28 "METHODIST-DK WHICH"
		30 "AM LUTHERAN"
		31 "LUTH CH IN AMERICA"
		32 "LUTHERAN-MO SYNOD"
		33 "WI EVAN LUTH SYNOD"
		34 "OTHER LUTHERAN"
		35 "EVANGELICAL LUTHERAN"
		38 "LUTHERAN-DK WHICH"
		40 "PRESBYTERIAN C IN US"
		41 "UNITED PRES CH IN USA"
		42 "OTHER PRESBYTERIAN"
		43 "PRESBYT CH USA"
		48 "PRESBYTERIAN-DK WH"
		50 "EPISCOPAL"
		60 "OTHER"
		70 "NO DENOMINATION"
		98 "DK"
		99 "NA";

	label define FRNDOTH1
		0 "IAP"
		998 "DK"
		999 "NA";

	label define FRNDFND1
		0 "IAP"
		1 "FUND"
		2 "MODERATE"
		3 "LIBERAL"
		8 "DK"
		9 "NA-EXCLUDED";

	label define FRNDRAC1
		0 "IAP"
		1 "ASIAN"
		2 "BLACK"
		3 "HISPANIC"
		4 "WHITE"
		5 "SOMETHING ELSE"
		8 "DONT KNOW"
		9 "NA";

	label define NUMFREND
		94 "NO NUMUBER GIVEN"
		95 "MANY"
		96 "96+"
		98 "DK"
		99 "NA";

	label define GODSELLS
		0 "IAP"
		1 "STRONGLY APPROVE"
		2 "SOMEWHAT APPROVE"
		3 "NOT APPRVE/OPPSE"
		4 "SOMEWHAT OPPOSE"
		5 "STRONGLY OPPOSE"
		8 "DONT KNOW"
		9 "NA";

	label define GIVECONG
		99997 "REFUSED"
		99998 "DK"
		99999 "NA";

	label define GIVEARTS
		0 "IAP"
		1 "YES"
		2 "NO"
		8 "DONT KNOW"
		9 "NA";

	label define NUMCONG
		9996 "9996 or more"
		9998 "DK"
		9999 "NA";

	label define DENOMSCH
		0 "IAP"
		1 "Baptist"
		2 "Christian Reform"
		3 "Christian Science"
		4 "Episcopal"
		5 "Inter Denominational"
		6 "Lutheran"
		7 "Missouri Synod Lutheran"
		8 "Non-Denominational"
		9 "Southern Baptist"
		10 "Seventh Day Adventist"
		11 "Valley Christian"
		12 "Congregational"
		13 "Mormon"
		98 "Don't know"
		99 "No answer";

	label define SHOPNUM
		98 "DONT KNOW"
		99 "NA";

	label define PREACH
		0 "IAP"
		1 "EXCELLENT"
		2 "VERY GOOD"
		3 "GOOD"
		4 "FAIR"
		5 "POOR"
		8 "DK"
		9 "NA";

	label define OWNTHING
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "DISAGREE"
		4 "STRONGLY DISAGREE"
		8 "DONT KNOW"
		9 "NA";

	label define WHYPOOR1
		0 "IAP"
		1 "VERY IMPORTANT"
		2 "SOMEWHAT IMPORTANT"
		3 "NOT IMPORTANT"
		8 "DONT KNOW"
		9 "NA";

	label define SOCDIF1
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE"
		3 "DISAGREE"
		4 "DISAGREE STRONGLY"
		8 "DONT KNOW"
		9 "NA";

	label define WLTHWHTS
		0 "IAP"
		1 "RICH"
		7 "POOR"
		8 "DONT KNOW"
		9 "NA";

	label define WORKWHTS
		0 "IAP"
		1 "HARDWORKING"
		7 "LAZY"
		8 "DONT KNOW"
		9 "NA";

	label define VIOLWHTS
		0 "IAP"
		1 "VIOLENCE-PRONE"
		7 "NOT VIOLENCE-PRONE"
		8 "DONT KNOW"
		9 "NA";

	label define INTLWHTS
		0 "IAP"
		1 "UNINTELLIGENT"
		7 "INTELLIGENT"
		8 "DONT KNOW"
		9 "NA";

	label define FAREWHTS
		0 "IAP"
		1 "SELF-SUPPORTING"
		7 "LIVE OFF WELFARE"
		8 "DONT KNOW"
		9 "NA";

	label define PATRWHTS
		0 "IAP"
		1 "PATRIOTIC"
		7 "UNPATRIOTIC"
		8 "DONT KNOW"
		9 "NA";

	label define LIVEJEWS
		0 "IAP"
		1 "STRONGLY FAVOR"
		2 "FAVOR"
		3 "NEITHER FAVOR NOR OPPOSE"
		4 "OPPOSE"
		5 "STRONGLY OPPOSE"
		8 "DONT KNOW"
		9 "NA";

	label define INFLUWHT
		0 "IAP"
		1 "TOO MUCH INFLUENCE"
		2 "RIGHT AMOUNT"
		3 "TOO LITTLE INFLUENCE"
		8 "DONT KNOW"
		9 "NA";

	label define HSPJOBS
		0 "IAP"
		1 "A LOT"
		2 "SOME"
		3 "ONLY A LITTLE"
		4 "NONE AT ALL"
		8 "DONT KNOW"
		9 "NA";

	label define RACWORK
		0 "IAP"
		1 "ALL WHITE"
		2 "MOSTLY WHITE"
		3 "HALF WHITE-BLACK"
		4 "MOSTLY BLACK"
		5 "ALL BLACK"
		6 "WORKS ALONE"
		8 "DON'T KNOW"
		9 "NA";

	label define DISCAFF
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "NOT VERY LIKELY"
		8 "DONT KNOW"
		9 "NA";

	label define DISCWHY1
		0 "IAP"
		1 "MENTIONED"
		2 "NOT MENTIONED"
		8 "DONT KNOW"
		9 "NA";

	label define DISCWHY6
		0 "IAP"
		1 "GENERAL,NO SOURCE"
		2 "ALL OF THE ABOVE"
		3 "THE LAW"
		8 "DONT KNOW"
		9 "NA";

	label define GENEGETS
		0 "IAP"
		1 "EMPLOYER SHOULD"
		2 "WORKER SHOULD"
		3 "BOTH - VOLUNTARY"
		8 "DK"
		9 "NA";

	label define OUTOFBIZ
		0 "IAP"
		1 "YES"
		2 "NO"
		9 "NA";

	label define ORGFIN
		0 "IAP"
		1 "MUCH BETTER"
		2 "BETTER"
		3 "WORSE"
		4 "MUCH WORSE"
		5 "NO EFFECT"
		8 "DK"
		9 "NA";

	label define EVUNEMP
		0 "IAP"
		1 "YES"
		2 "NO"
		7 "NEVER FULL-TIME"
		9 "NA";

	label define NUMUNEMP
		0 "IAP"
		96 "96 OR MORE"
		98 "DK"
		99 "NA";

	label define TOTUNEMP
		0 "IAP"
		1 "2-8 WEEKS"
		2 "8 WEEK - 6 MON"
		3 "6-12 MON"
		4 "> 1 YEAR"
		8 "DK"
		9 "NA";

	label define FNDJOB9
		0 "IAP"
		1 "UNION"
		2 "SCHOOL"
		3 "SELF-EMPLOYED,CREATED JOB"
		4 "ANNOUNCEMENT,NEWSPAPER"
		7 "OTHER"
		9 "NA";

	label define SAMEJOB
		0 "IAP"
		1 "JOB HAVE NOW"
		2 "DIFFERENT JOB"
		9 "NA";

	label define THISJOB7
		0 "IAP"
		1 "RELATIVE"
		2 "FRIEND"
		3 "PERSONNEL"
		7 "OTHER"
		9 "NA";

	label define NUMPROMO
		0 "IAP"
		7 "7 or more"
		8 "DK"
		9 "NA";

	label define IMPPROMO
		0 "IAP"
		1 "VERY IMPORTANT"
		2 "IMPORTANT"
		3 "SOMEWHAT IMPORTANT"
		4 "NOT AT ALL IMPORTANT"
		5 "DOES NOT APPLY, VOLUNTEERED"
		8 "DK"
		9 "NA";

	label define FUTPROMO
		0 "IAP"
		1 "VERY LIKELY"
		2 "LIKELY"
		3 "NOT VERY LIKELY"
		4 "NOT LIKELY AT ALL"
		8 "DK"
		9 "NA";

	label define SEXPROMO
		0 "IAP"
		1 "BETTER"
		2 "WORSE"
		3 "NO EFFECT"
		8 "DK"
		9 "NA";

	label define ADVANCES
		0 "IAP"
		1 "ADVANCED RAPIDLY"
		2 "STEADY ADVANCE"
		3 "SAMELEVEL"
		4 "LOST SOME GROUND"
		7 "1ST JOB WITH ORG"
		9 "NA";

	label define JOBCNTRL
		0 "IAP"
		1 "OTHER DECIDE WHAT AND HOW I DO"
		2 "OTHER DECIDE WHAT BUT NOT HOW"
		3 "I DECIDE SOME WHAT AND HOW I DO"
		4 "I AM MY OWN BOSS"
		9 "NA";

	label define WRKINDEP
		0 "IAP"
		1 "VERY TRUE"
		2 "TRUE"
		3 "SOMEWHAT TRUE"
		4 "NOT TRUE AT ALL"
		8 "DK"
		9 "NA";

	label define YOUSUP
		0 "IAP"
		999 "NA";

	label define TOTMONEY
		0 "IAP"
		9999996 "$9999996 OR MORE"
		9999998 "DK"
		9999999 "NA";

	label define QUANTITY
		0 "IAP"
		1 "VERY EASY"
		2 "SOMEWHAT EASY"
		3 "SOMEWHAT HARD"
		4 "VERY HARD"
		8 "DK"
		9 "NA";

	label define WRKWELL
		0 "IAP"
		1 "MUCH BETTER"
		2 "SOMEWHAT BETTER"
		3 "ABOUT SAME"
		4 "SOMEWHAT WORSE"
		5 "MUCH WORSE"
		8 "DK"
		9 "NA";

	label define WRKMUCH
		0 "IAP"
		1 "MUCH MORE"
		2 "SOMEWHAT MORE"
		3 "ABOUT SAME"
		4 "SOMEWHAT LESS"
		5 "MUCH LESS"
		8 "DK"
		9 "NA";

	label define CHNGEORG
		0 "IAP"
		1 "NOT AT ALL LIKELY"
		2 "SOMEWAHT LIKELY"
		3 "VERY LIKELY"
		8 "DK"
		9 "NA";

	label define JOBVSHME
		0 "IAP"
		1 "FREQUENTLY"
		2 "SOMETIMES"
		3 "SELDOM"
		4 "NEVER"
		9 "NA";

	label define UNVOTE
		0 "IAP"
		1 "FOR"
		2 "AGAINST"
		8 "DK"
		9 "NA";

	label define UNMANREL
		0 "IAP"
		1 "VERY"
		2 "QUITE GOOD"
		3 "NEITHER GOOD NOR BAD"
		4 "QUITE BAD"
		5 "VERY BAD"
		8 "DK"
		9 "NA";

	label define SCHOOLNG
		0 "IAP"
		1 "VERY IMPORTANT"
		2 "IMPORTANT"
		3 "SOMEWHAT IMPORTANT"
		4 "NOT AT ALL IMPORTANT"
		8 "DK"
		9 "NA";

	label define WHEREWRK
		0 "IAP"
		1 "SOME PLACE"
		2 "DIFFERENT"
		9 "NA";

	label define SPLOCNUM
		0 "IAP"
		1 "1-9"
		2 "10-49"
		3 "50-99"
		4 "100-499"
		5 "500-999"
		6 "1,000-1,999"
		7 "2,000+"
		8 "DONT KNOW"
		9 "NA";

	label define STANDUP
		0 "IAP"
		1 "SHOULD STAND UP REGARDLESS"
		2 "KEEP IT YOURSELF IF OFFEND OTHERS"
		3 "NEITHER"
		8 "DK"
		9 "NA";

	label define SELFIRST
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NEITHER AGREE NOR DISAGREE"
		4 "DISAGREE"
		5 "STRONGLY DISAGREE"
		8 "DK"
		9 "NA";

	label define OPOUTCME
		0 "IAP"
		1 "PROMOTE EQUAL OPPOTUNITY"
		2 "PROMOTE EQUAL OUTCOMES"
		3 "OTHER"
		8 "DK"
		9 "NA";

	label define UNITED
		0 "IAP"
		1 "AMERICAN ARE UNITED"
		2 "AMERICAN ARE DIVIDED"
		8 "DK"
		9 "NA";

	label define OBTOHELP
		0 "IAP"
		1 "IT IS OBLGATION"
		2 "ONLY IF THEY WANT TO"
		3 "OTHER"
		8 "DK"
		9 "NA";

	label define BIGBAND
		0 "IAP"
		1 "LIKE VERY MUCH"
		2 "LIKE IT"
		3 "MIXED FEELINGS"
		4 "DISLIKE IT"
		5 "DISLIKE VERY MUCH"
		8 "DK MUCH ABOUT IT"
		9 "NA";

	label define TVSHOWS
		0 "IAP"
		1 "DAILY"
		2 "SEVRL DAYS IN WEEK"
		3 "SEVRL DAYS IN MONTH"
		4 "RARELY"
		5 "NEVER"
		8 "DK"
		9 "NA";

	label define FRDCREAT
		0 "IAP"
		1 "EXTREMELY IMPORTANT"
		2 "VERY IMPORTANT"
		3 "FAIRLY IMPORTANT"
		4 "NOT TOO IMPORTANT"
		5 "NOT AT ALL IMPORTANT"
		8 "DK"
		9 "NA";

	label define IMPFINAN
		0 "IAP"
		1 "ONE OF MOST IMPORTANT"
		2 "VERY IMPORTANT"
		3 "SOMEWHAT IMPORTANT"
		4 "NOT TOO IMPORTANT"
		5 "NOT AT ALL IMPORTANT"
		8 "DK"
		9 "NA";

	label define IMPTHNGS
		0 "IAP"
		1 "Strongly Disagree"
		2 "Disagree"
		3 "Neither agree nor disagree"
		4 "Agree"
		5 "Strongly disagree"
		8 "DON'T KNOW"
		9 "No answer";

	label define MOSTIMP1
		0 "IAP"
		990 "OTHER"
		995 "PERSONAL"
		996 "NONE, NO EVENT"
		998 "DK"
		999 "NA";

	label define COLMAJR1
		0 "NONE"
		1 "ENGLISH, LITERATURE"
		2 "FOREIGN LANGUAGE"
		3 "FINE ARTS"
		4 "OTHER HUMANITIES"
		5 "ECONOMICS"
		6 "PSYCHOLOGY"
		7 "GOVERNMENT-CIVICS"
		8 "SOCIAL SCIENCE-OTHER SOCIAL STUDY"
		9 "MATHEMATICS"
		10 "SCIENCE"
		11 "OTHER"
		12 "BUSINESS"
		13 "EDUCATION"
		14 "ENGINEERING"
		15 "OTHER VOCATIONAL"
		99 "NA";

	label define COLMAJR2
		0 "NONE"
		1 "ENGLISH, LITERATURE"
		2 "FOREIGN LANGUAGE"
		3 "FINE ARTS"
		4 "OTHER HUMANITIES"
		5 "ECONOMICS"
		6 "PSYCHOLOGY"
		7 "GOVERNMENT-CIVICS"
		8 "SOCIAL SCIENCE-OTHER SOCIAL STUDY"
		9 "MATHEMATICS"
		10 "SCIENCE"
		11 "OTHER"
		12 "BUSINESS"
		13 "EDUCATION"
		14 "ENGINEERING"
		15 "OTHER VOCATIONAL"
		99 "NA";

	label define NEVERWK
		0 "IAP"
		1 "NEVER WORKED"
		2 "WORKED"
		8 "DK"
		9 "NA";

	label define WRKSLFST
		0 "IAP"
		1 "SELF EMPLOYED"
		2 "SOMEONE ELSE"
		8 "DK"
		9 "NA";

	label define ALIKE1
		0 "COMPLETELY WRONG"
		1 "PARTIALLY RIGHT"
		2 "COMPLETELY RIGHT"
		8 "DK"
		9 "NA";

	label define SPFAM16
		0 "OTHER"
		1 "BOTH OWN MOTHER AND FATHER"
		2 "FATHER AND STEPMOTHER"
		3 "MOTHER AND STEPFATHER"
		4 "FATHER-NO MOTHER OR STEPMOTHER"
		5 "MOTHER-NO FATHER OR STEPFATHER"
		6 "SOME OTHER MALE RELATIVE -NO FEMALE HEAD-"
		7 "SOME OTHER FEMALE RELATIVE -NO MALE HEAD-"
		8 "OTHER, WITH BOTH MALE AND FEMALE RELATIVES"
		9 "NA";

	label define SPSIBS
		98 "DON'T KNOW"
		99 "NA";

	label define KDSEX1
		0 "IAP"
		1 "MALE"
		2 "FEMALE"
		8 "DK"
		9 "NA";

	label define KDYRBRN1
		0 "IAP"
		9996 "BEFORE 1976"
		9998 "DK"
		9999 "NA";

	label define KDREL1
		0 "IAP"
		1 "BIOLOGICAL"
		2 "ADOPTED"
		3 "STEP"
		8 "DK"
		9 "NA";

	label define SBREL1
		0 "IAP"
		1 "FULL"
		2 "ADOPTED"
		3 "STEP"
		4 "HALF"
		8 "DK"
		9 "NA";

	label define ETHID
		0 "IAP"
		1 "JUST AN AMERICAN"
		2 "SOME PART. ETHNIC GRP"
		3 "2 OR MORE ETHNIC GRPS"
		4 "AMER AND ETHNIC GRPS"
		5 "IT DEPENDS"
		8 "DK"
		9 "NA";

	label define AMISSUE
		0 "IAP"
		1 "ALL ISSUES"
		2 "MOST ISSUES"
		3 "SOME ISSUES"
		4 "JUST A FEW ISSUES"
		8 "DK"
		9 "NA";

	label define ETHID1
		0 "IAP"
		1 "JUST AN AMERICAN"
		2 "SOME PART. ETHNIC GRP"
		3 "2 OR MORE ETHNIC GRPS"
		4 "IT DEPENDS"
		8 "DK"
		9 "NA";

	label define AMRANK
		0 "IAP"
		1 "BETTER IN AMERICA"
		2 "ABOUT THE SAME"
		3 "BETTER IN OTH ADV CNTRY"
		8 "DK"
		9 "NA";

	label define AMPROUD
		0 "IAP"
		1 "EXTREMELY PROUD"
		2 "VERY PROUD"
		3 "SOMEWHAT PROUD"
		4 "NOT VERY PROUD"
		8 "DK"
		9 "NA";

	label define MELTPOT
		0 "IAP"
		1 "MAINTAIN DISTINCT CULTURES"
		7 "BLEND IN TO LARGER SOCIETY"
		8 "DK"
		9 "NA";

	label define GVTAPART
		0 "IAP"
		1 "GOVT TO HELP"
		2 "LEFT UP TO GROUPS"
		8 "DK"
		9 "NA";

	label define SYMPTBLK
		0 "IAP"
		1 "VERY OFTEN"
		2 "FAIRLY OFTEN"
		3 "NOT TOO OFTEN"
		4 "NEVER"
		8 "DK"
		9 "NA";

	label define BILINGED
		0 "IAP"
		1 "STRONGLY FAVOR"
		2 "SOMEWHAT FAVOR"
		3 "SOMEWHAT OPPOSED"
		4 "STRONGLY OPPOSED"
		8 "DK"
		9 "NA";

	label define ENGTEACH
		0 "IAP"
		1 "ALL CLASSES IN ENGLISH"
		2 "1-2 YRS IN NATIVE LANG"
		3 "NATIVE LANG THRU HS"
		8 "DK"
		9 "NA";

	label define ENGBALLT
		0 "IAP"
		1 "ONLY IN ENGLISH"
		2 "IN OTHER LANGS"
		8 "DK"
		9 "NA";

	label define ENGOFFCL
		0 "IAP"
		1 "FAVOR"
		3 "NEITHER FAVOR NOR OPPOSE"
		5 "OPPOSE"
		8 "DK"
		9 "NA";

	label define LETIN
		0 "IAP"
		1 "INCREASED A LOT"
		2 "INCREASED A LITTLE"
		3 "SAME AS NOW"
		4 "DECREASED A LITTLE"
		5 "DECREASED A LOT"
		8 "DK"
		9 "NA";

	label define HSPASN10
		0 "IAP"
		1 "LARGER SHARE"
		2 "SAME SHARE"
		3 "SMALLER SHARE"
		8 "DK"
		9 "NA";

	label define IMMECON
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "NOT SO LIKELY"
		4 "NOT AT ALL LIKELY"
		8 "DK"
		9 "NA";

	label define IMMFARE
		0 "IAP"
		1 "ELIGIBLE"
		2 "NOT ELIGIBLE"
		8 "DK"
		9 "NA";

	label define UNDOCWRK
		0 "IAP"
		1 "YES, ENTITLED"
		2 "NO, NOT ENTITLED"
		8 "DK"
		9 "NA";

	label define UNDOCKID
		0 "IAP"
		1 "YES, QUALIFY"
		2 "NO, NOT QUALIFY"
		8 "DK"
		9 "NA";

	label define COLAFF
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "NOT LIKELY"
		8 "DK"
		9 "NA";

	label define JOBAFF
		0 "IAP"
		1 "STRONGLY FOR PREF"
		2 "FOR PREFERENCE"
		3 "AGAINST PREFERENCE"
		4 "STRONGLY AGAINST PREF"
		8 "DK"
		9 "NA";

	label define OWNETH
		0 "IAP"
		1 "LEADERS FROM OWN BACKGROUND"
		2 "LEADERS BACKGROUND NO MATTER"
		8 "DK"
		9 "NA";

	label define CONGETH
		0 "IAP"
		1 "CONSIDER ETHNIC BACKGROUND"
		2 "ABILITY, NOT BACKGROUND"
		8 "DK"
		9 "NA";

	label define ETHHIST
		0 "IAP"
		1 "TOO MUCH ATTENTION NOW"
		2 "TOO LITTLE ATTENTION"
		3 "ABOUT THE RIGHT AMOUNT"
		8 "DK"
		9 "NA";

	label define WHTGOVT
		0 "IAP"
		1 "MUCH MORE"
		2 "MORE"
		3 "ABOUT RIGHT"
		4 "LESS"
		5 "MUCH LESS"
		8 "DK"
		9 "NA";

	label define WLTHIMM
		0 "IAP"
		1 "RICH"
		7 "POOR"
		8 "DK"
		9 "NA";

	label define WORKIMM
		0 "IAP"
		1 "HARD-WORKING"
		7 "LAZY"
		8 "DK"
		9 "NA";

	label define ECONPAST
		0 "IAP"
		1 "GOTTEN BETTER"
		2 "STAYED THE SAME"
		3 "GOTTEN WORSE"
		8 "DK"
		9 "NA";

	label define PASTUP
		0 "IAP"
		1 "MUCH BETTER"
		2 "SOMEWHAT BETTER"
		8 "DK"
		9 "NA";

	label define PASTDOWN
		0 "IAP"
		1 "MUCH WORSE"
		2 "SOMEWHAT WORSE"
		8 "DK"
		9 "NA";

	label define ECONFUTR
		0 "IAP"
		1 "GET BETTER"
		2 "STAY THE SAME"
		3 "GET WORSE"
		8 "DK"
		9 "NA";

	label define RDISCAFF
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "SOMEWHAT UNLIKELY"
		4 "VERY UNLIKELY"
		8 "DK"
		9 "NA";

	label define ROMANCE
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "HAS SAME GENDER PARTNER"
		8 "DK"
		9 "NA";

	label define HAPROM
		0 "IAP"
		1 "VERY HAPPY"
		2 "PRETTY HAPPY"
		3 "NOT TOO HAPPY"
		8 "DONT KNOW"
		9 "NA";

	label define HAPGIRLS
		0 "IAP"
		1 "BETTER"
		2 "ABOUT THE SAME"
		3 "WORSE"
		8 "DONT KNOW"
		9 "NA";

	label define FEJOBAFF
		0 "IAP"
		1 "STRONGLY FOR"
		2 "FOR"
		3 "AGAINST"
		4 "STRONGLY AGAINST"
		8 "DK"
		9 "NA";

	label define TRADMOD
		0 "IAP"
		1 "MAN ALONE RESPONSIBLE"
		2 "BOTH RESPONSIBLE"
		8 "DK"
		9 "NA";

	label define SHARESEP
		0 "IAP"
		1 "MAN WOMAN DO THINGS TOGETHER"
		2 "MAN WOMAN DO THINGS SEPARATE"
		8 "DK"
		9 "NA";

	label define EMOTEOTH
		0 "IAP"
		1 "MAN WOMAN EMOTIONALLY DEPENDENT"
		2 "MAN WOMAN EMOTIONALLY INDEPENDENT"
		8 "DK"
		9 "NA";

	label define RHMEWRK
		0 "IAP"
		1 "ALL"
		2 "MOST"
		3 "ABOUT HALF"
		4 "SOME"
		5 "VERY LITTLE OR NONE"
		6 "NOT MARRIED-LIVING WITH PARTNER"
		8 "DK"
		9 "NA";

	label define FAIRHWRK
		0 "IAP"
		1 "FAIR TO BOTH"
		2 "UNFAIR TO ME"
		3 "UNFAIR TO MY SPOUSE OR PARTNER"
		8 "DONT KNOW"
		9 "NA";

	label define EARNMORE
		0 "IAP"
		1 "I EARN MUCH MORE THAN MY SPOUSE"
		2 "I EARN SOMEWHAT MORE THAN MY SPOUSE"
		3 "WE EARN ABOUT THE SAME AMOUNT"
		4 "MY SPOUSER-PARTNER EARNS SOMEWHAT MORE"
		5 "MY SPOUSE-PARTNER EARNS MUCH MORE"
		8 "DK"
		9 "NA";

	label define FAMLIFE
		0 "IAP"
		1 "NOT AT ALL SUCCESSFUL"
		2 "NOT VERY SUCCESSFUL"
		3 "SOMEWHAT SUCCESSFUL"
		4 "VERY SUCCESSFUL"
		5 "COMPLETELY SUCCESSFUL"
		8 "DONT KNOW"
		9 "NA";

	label define DISCAFFM
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "SOMEWHAT UNLIKELY"
		4 "VERY UNLIKELY"
		8 "DONT KNOW"
		9 "NA";

	label define FLEXTIME
		0 "IAP"
		1 "YES, SHOULD OFFER THIS OPTION"
		2 "NO, SHOULD NOT OFFER THIS OPTION"
		8 "DONT KNOW"
		9 "NA";

	label define PARLEAVE
		0 "IAP"
		1 "YES, SHOULD OFFER THIS OPTION"
		2 "NO,  SHOULD NOT OFFER THIS OPTION"
		8 "DONT KNOW"
		9 "NA";

	label define FELESS1
		0 "IAP"
		1 "VERY IMPORTANT"
		2 "IMPORTANT"
		3 "SOMEWHAT IMPORTANT"
		4 "NOT AT ALL IMPORTANT"
		8 "DONT KNOW"
		9 "NA";

	label define FEHIRE
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NEITHER AGREE NOR DISAGREE"
		4 "DISAGREE"
		5 "STRONGLY DISAGREE"
		8 "DONT KNOW"
		9 "NA";

	label define FEMINIST
		0 "IAP"
		1 "YES, A FEMINIST"
		2 "NO, NOT A FEMINIST"
		8 "DONT KNOW"
		9 "NA";

	label define HMEMAKER
		0 "IAP"
		1 "IMPROVED THEIR LIFE"
		2 "MADE THEIR LIFE WORSE"
		3 "HAD NO EFFECT ON THEIR LIFE"
		8 "DONT KNOW"
		9 "NA";

	label define YOURSELF
		0 "IAP"
		1 "IMPROVED MY LIFE"
		2 "MADE MY LIFE WORSE"
		3 "HAD NO EFFECT ON MY LIFE"
		8 "DONT KNOW"
		9 "NA";

	label define NOPLAN
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NEITHER AGREE OR DISAGREE-IT DEPENDS"
		4 "DISAGREE"
		5 "STRONGLY DISAGREE"
		8 "DONT KNOW"
		9 "NA";

	label define WHNANGRY
		0 "IAP"
		1 "TODAY"
		2 "YESTERDAY"
		3 "UP TO A WEEK AGO"
		4 "UP TO A MONTH AGO"
		5 "MONTHS AGO"
		8 "DONT KNOW"
		9 "NA";

	label define MADAT23
		0 "IAP"
		1 "EX-SPOUSE"
		2 "OTHER EX-FAMILY"
		3 "HEALTH CARE PERSONNEL"
		4 "TEACHER"
		5 "LANDLORD"
		6 "COMPANY"
		7 "CRIMINAL"
		8 "OTHER"
		9 "NA";

	label define HOWANGRY
		0 "WEAKEST"
		10 "MOST INTENSE"
		98 "DK"
		99 "NA";

	label define ANGRLAST
		0 "IAP"
		1 "SECONDS"
		2 "MINUTES"
		3 "HOURS"
		4 "ALL THAT DAY"
		5 "SEVERAL DAYS, OR"
		6 "FELT CONTINUOUSLY"
		9 "NA";

	label define THNKANGR
		0 "IAP"
		1 "VERY OFTEN"
		2 "EVERY ONCE IN A WHILE"
		3 "JUST ONCE OR TWICE"
		4 "NEVER-NOT ONCE UNTIL NOW"
		8 "DK"
		9 "NA";

	label define CHNANG1
		0 "IAP"
		1 "DID"
		2 "DIDNT"
		8 "DK"
		9 "NA";

	label define REACTOK
		0 "COMPLETELY RIGHT"
		10 "COMPLETELY WRONG"
		98 "DK"
		99 "NA";

	label define OTHRESP
		0 "NOT AT ALL RESPONSIBLE"
		10 "COMPLETELY RESPONSIBLE"
		98 "DK"
		99 "NA";

	label define LIKEOTH
		0 "IAP"
		1 "LIKE HIM-HER-THEM A GREAT DEAL"
		2 "LIKE HIM-HER-THEM A LITTLE"
		3 "FEEL NEUTRAL TOWARD HIM-HER-THEM"
		4 "DISLIKE HIM OR HER-THEM A LITTLE"
		5 "DISLIKE HIM OR HER-THEM A LOT"
		6 "IF VOLUNTEERED - LOVE"
		7 "IF VOLUNTEERED - DONT KNOW"
		8 "DK"
		9 "NA";

	label define AMIMP
		0 "NOT AT ALL"
		10 "MOST"
		98 "DK"
		99 "NA";

	label define NOTAM
		0 "IAP"
		1 "COMPLETELY DIFFERENT"
		2 "QUITE DIFFERENT"
		3 "SOMEWHAT DIFFERENT"
		4 "JUST SLIGHTLY DIFFERENT"
		5 "NOT AT ALL DIFFERENT"
		7 "CITIZEN OF ANOTHER COUNTRY"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define USWORRY
		0 "IAP"
		1 "ALWAYS"
		2 "MOST OF THE TIME"
		3 "SOME OF THE TIME"
		4 "RARELY"
		5 "NEVER"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define RELPRIVT
		0 "IAP"
		1 "A RELATIVE,INCLUDING IN-LAWS"
		2 "A FRIEND OR ACQUAINTANCE"
		3 "A FRIEND OF A FRIEND-RELATIVE"
		4 "PREVIOUS BUSINESS DEALINGS"
		5 "NO PRIOR RELATIONSHIP"
		8 "DK"
		9 "NA";

	label define WARRNTYC
		0 "IAP"
		1 "YES -- INFORMAL ASSURANCE"
		2 "YES -- WRITTEN GUARANTEE"
		3 "NO"
		8 "DONT KNOW"
		9 "NA";

	label define NEWUSED
		0 "IAP"
		1 "NEW"
		2 "USED"
		9 "NA";

	label define TYPDEALR
		0 "IAP"
		1 "NEW CAR DEALERSHIP"
		2 "USED CAR DEALERSHIP"
		9 "NA";

	label define CARBUY1
		0 "IAP"
		9 "NA";

	label define RELDEALR
		0 "IAP"
		1 "A RELATIVE , INCLUDING IN-LAWS"
		2 "A FRIEND OR ACQUAINTANCE"
		3 "A FRIEND OF A FRIEND-RELATIVE"
		4 "PREVIOUS BUSINESS DEALINGS"
		5 "NO PRIOR RELATIONSHIP"
		8 "DK"
		9 "NA";

	label define SATCAR
		0 "IAP"
		1 "NOT TOO SATISFIED"
		2 "PRETTY SATISFIED"
		3 "EXTREMELY SATISFIED"
		8 "DK"
		9 "NA";

	label define LEARNHME
		0 "IAP"
		1 "FROM A RELATIVE, INCLUDING IN-LAWS"
		2 "A FRIEND OR ACQUAINTANCE"
		3 "A FRIEND OF A FRIEND OR RELATIVE, ETC"
		4 "FROM AN ADVERTISEMENT OR SIGN"
		5 "FROM A REAL ESTATE AGENT"
		6 "I BUILT IT MYSELF"
		8 "DK"
		9 "NA";

	label define NEWOWNED
		0 "IAP"
		1 "NEW"
		2 "PREVIOUSLY OWNED"
		9 "NA";

	label define RELHOME
		0 "IAP"
		1 "A RELATIVE INCLUDING IN-LAWS"
		2 "A FRIEND OR ACQUAINTANCE"
		3 "A FRIEND OF A FRIEND-RELATIVE"
		4 "HAD PREVIOUS BUSINESS DEALINGS"
		5 "NO PRIOR RELATIONSHIP"
		8 "DK"
		9 "NA";

	label define WHOSOLD
		0 "IAP"
		1 "DIRECTLY FROM BUILDER"
		2 "DIRECTLY FROM PREVIOUS OWNER"
		3 "THROUGH A REAL ESTATE AGENT"
		4 "OTHER"
		9 "NA";

	label define LAWYER1
		0 "IAP"
		8 "DK"
		9 "NA";

	label define RELLAW
		0 "IAP"
		1 "A RELATIVE INCLUDING IN-LAWS"
		2 "A FRIEND OR ACQUAINTANCE"
		3 "A FRIEND OF A FRIEND OR RELATIVE ETC"
		4 "PREVIOUS BUSINESS DEALINGS"
		5 "NO PRIOR RELATIONSHIP"
		8 "DK"
		9 "NA";

	label define RELFIXER
		0 "IAP"
		1 "A RELATIVE INCLUDING IN-LAWS"
		2 "A FRIEND OR ACQUAINTANCE"
		3 "A FRIEND OF A FRIEND-RELATIVE, ETC"
		4 "PREVIOUS BUSINESS DEALINGS"
		5 "NO PRIOR RELATIONSHIP"
		8 "DK"
		9 "NA";

	label define WHOLOAND
		0 "IAP"
		1 "PARENTS OR GRANDPARENTS"
		2 "CHILDREN"
		3 "OTHER RELATIVE"
		4 "FRIEND"
		5 "CO-WORKER OR BUS. ASSOCIATE"
		6 "OTHER-SPECIFY"
		8 "DK"
		9 "NA";

	label define SELLBED
		0 "IAP"
		1 "STRONG PREFERENCE NO CONTACT"
		3 "DONT CARE"
		5 "STRONG PREFERENCE CONTACT"
		8 "DK"
		9 "NA";

	label define TRANSOTH
		0 "IAP"
		1 "DEFINITELY WOULD NOT MENTION IT"
		2 "PROBABLY WOULD NOT"
		3 "PROBABLY WOULD"
		4 "DEFINITELY WOULD MENTION IT"
		8 "DONT KNOW"
		9 "NA";

	label define LOANEDTO
		0 "IAP"
		1 "PARENTS OF GRANDPARENTS"
		2 "CHILDREN"
		3 "OTHER RELATIVE"
		4 "FRIEND"
		5 "CO-WORKER OR BUS. ASSOCIATE"
		6 "OTHER SPECIFY"
		8 "DK"
		9 "NA";

	label define TABLPRCE
		0 "IAP"
		1 "ACCEPTABLE"
		2 "UNFAIR"
		8 "DONT KNOW"
		9 "NA";

	label define ORGANSB
		0 "IAP"
		1 "AUCTION"
		2 "FIRST COME-FIRST SERVED"
		3 "LOTTERY"
		4 "MERIT"
		8 "DONT KNOW"
		9 "NA";

	label define SELLORGN
		0 "IAP"
		1 "DEFINITELY NOT"
		2 "PROBABLY NOT"
		3 "PERHAPS"
		4 "PROBABLY"
		5 "DEFINITELY"
		8 "DONT KNOW"
		9 "NA";

	label define ADOPTION
		0 "IAP"
		1 "A SOCIAL SERVICE AGENCY"
		2 "GO TO THE HIGHEST BIDDERS"
		3 "BY LOTTERY"
		4 "BIRTH MOTHERS SHOULD DECIDE"
		8 "DONT KNOW"
		9 "NA";

	label define SELLBABY
		0 "IAP"
		1 "FORBID IT"
		2 "PERMIT IT"
		8 "DONT KNOW"
		9 "NA";

	label define SELLSEX
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE SOMEWHAT"
		3 "DISAGREE SOMEWHAT"
		4 "DISAGREE STRONGLY"
		8 "DONT KNOW"
		9 "NA";

	label define TAGSALES
		0 "IAP"
		1 "NEVER"
		2 "RARELY"
		3 "OCCASIONALLY 1-3 TIMES A YR"
		4 "REGULARLY"
		5 "ALMOST EVERY WEEKEND"
		8 "DK"
		9 "NA";

	label define HAGGLE
		0 "IAP"
		1 "EXPECT TO PAY POSTED PRICE"
		2 "NEGOTIATE FOR LOWER PRICE"
		8 "DONT KNOW"
		9 "NA";

	label define HRFAMBIZ
		0 "IAP"
		1 "ONLY ESPECIALLY BUSY SEASONS"
		2 "LESS THAN 10 HOURS A WEEK"
		3 "BETWEEN 10 AND 30 HOURS A WEEK"
		4 "MORE THAN 30 HOURS A WEEK"
		8 "DK"
		9 "NA";

	label define FAMBIZ
		0 "IAP"
		1 "MANUFACTURING"
		2 "RETAIL SALES"
		3 "WHOLESALE SALES"
		4 "SERVICES"
		5 "TRANSPORTATION"
		6 "CONSTRUCTION"
		7 "FINANCE, INSRNCE OR REAL EST"
		8 "FARMING"
		9 "OTHER SPECIFY"
		98 "DK"
		99 "NA";

	label define ECONSYS
		0 "IAP"
		1 "THE BEST POSSIBLE"
		2 "OK BUT NEED SOME TINKERING"
		3 "NEED FUNDAMENTAL CHANGES"
		4 "NEED TO BE REPLACED"
		8 "DONT KNOW"
		9 "NA";

	label define FAMFINAN
		0 "IAP"
		1 "WIFE MANAGES ALL THE MONEY"
		2 "HUSBAND MANAGES ALL THE MONEY"
		3 "WIFE HAS A HOUSEKEEPING ALLOWANCE"
		4 "ALL THE MONEY IS POOLED"
		5 "SOME OF THE MONEY IS POOLED"
		6 "KEEP FINANCES COMPLETELY SEPARATE"
		8 "DK"
		9 "NA";

	label define DECAUTO
		0 "IAP"
		1 "HUSBAND ALONE"
		2 "HUSBAND AFTER CONSULTING WITH WIFE"
		3 "HUSBAND AND WIFE TOGETHER"
		4 "WIFE AFTER CONSULTING HUSBAND"
		5 "WIFE ALONE"
		6 "OTHER"
		8 "NOT APPLICABLE"
		9 "NA";

	label define LAYOFFS
		0 "IAP"
		1 "THOSE WHO HAVE WORKED  LONGEST"
		2 "THOSE WHO HAVE THE GREATEST NEEDS"
		3 "THOSE WHO ARE THE BEST WORKERS"
		4 "DIFFICULTY IN FINDING A NEW JOB"
		5 "UNION MEMBERS"
		6 "OLDER EMPLOYEES"
		7 "YOUNGER EMPLOYEES"
		8 "MEN"
		9 "WOMEN"
		10 "WHITES"
		11 "MINORITIES-NON-WHITES"
		12 "OTHER -PLEASE SPECIFY"
		13 "OWNERS,BOSSES"
		14 "ESSENTIAL EMPLOYEES"
		15 "NEWEST EMPLOYEES"
		16 "MOST LOYAL EMPLOYEES"
		17 "PRODUCTION. HANDS-ON EMPLOYEES"
		98 "DONT KNOW"
		99 "NA";

	label define TOTHLTH
		99998 "DK"
		99999 "NA";

	label define VIGVERSN
		0 "IAP";

	label define SERIOUSP
		0 "IAP"
		1 "VERY SERIOUS"
		2 "SOMEWHAT SERIOUS"
		3 "NOT VERY SERIOUS"
		4 "NOT AT ALL SERIOUS"
		8 "DONT KNOW"
		9 "NA";

	label define CHARACTR
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "NOT VERY LIKELY"
		4 "NOT AT ALL LIKELY"
		8 "DONT KNOW"
		9 "NA";

	label define DECTREAT
		0 "IAP"
		1 "VERY ABLE"
		2 "SOMEWHAT ABLE"
		3 "NOT VERY ABLE"
		4 "NOT ABLE AT ALL"
		8 "DONT KNOW"
		9 "NA";

	label define IMPRVOWN
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "SOMEWHAT UNLIKELY"
		4 "NOT LIKELY AT ALL"
		8 "DONT KNOW"
		9 "NA";

	label define VIGNEI
		0 "IAP"
		1 "DEFINITELY WILLING"
		2 "PROBABLY WILLING"
		3 "PROBABLY UNWILLING"
		4 "DEFINITELY UNWILLING"
		8 "DONT KNOW"
		9 "NA";

	label define HURTOTH
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "NOT VERY LIKELY"
		4 "NOT LIKELY AT ALL"
		8 "DONT KNOW"
		9 "NA";

	label define MEDCARE1
		0 "IAP"
		1 "NAME, HIM-HERSELF"
		2 "HIS-HER FAMILY"
		3 "GOVERNMENT"
		4 "INSURANCE"
		5 "PRIVATE CHARITY"
		8 "DONT KNOW"
		9 "NA";

	label define MEDCARE2
		0 "IAP"
		1 "HIS-HER FAMILY"
		2 "GOVERNMENT"
		3 "INSURANCE"
		4 "PRIVATE CHARITY"
		8 "DONT KNOW"
		9 "NA";

	label define SPMENTL
		0 "IAP"
		1 "SPEND MUCH MORE"
		2 "SPEND MORE"
		3 "SPEND THE SAME AS NOW"
		4 "SPEND LESS"
		5 "SPEND MUCH LESS"
		8 "CANT CHOOSE"
		9 "NA";

	label define GOVMENTL
		0 "IAP"
		1 "DEFINITELY SHOULD BE"
		2 "PROBABLY SHOULD BE"
		3 "PROBABLY SHOULD NOT BE"
		4 "DEFINITELY SHOULD NOT BE"
		8 "CANT CHOOSE"
		9 "NA";

	label define MNTLOTH
		0 "IAP"
		9999 "NA";

	label define KNWMHOSP
		0 "IAP"
		1 "YES"
		2 "NO"
		8 "NOT SURE"
		9 "NA";

	label define RELMHSP1
		0 "IAP"
		1 "SELF"
		2 "NOT SELF"
		8 "DONT KNOW"
		9 "NA";

	label define RELMHSP2
		0 "IAP"
		1 "IMM. FAM"
		2 "NOT IMM. FAM"
		8 "DONT KNOW"
		9 "NA";

	label define RELMHSP3
		0 "IAP"
		1 "OTH RELATIVE"
		2 "NOT OTH RELATIVE"
		8 "DONT KNOW"
		9 "NA";

	label define RELMHSP4
		0 "IAP"
		1 "CLOSE FRIEND"
		2 "NOT CLOSE FRIEND"
		8 "DONT KNOW"
		9 "NA";

	label define RELMHSP5
		0 "IAP"
		1 "ACQUAINTANCE"
		2 "NOT ACQUAINTANCE"
		8 "DONT KNOW"
		9 "NA";

	label define RELMHSP6
		0 "IAP"
		1 "OTHER"
		2 "NOT OTHER"
		8 "DONT KNOW"
		9 "NA";

	label define PRIVPRAY
		0 "IAP"
		1 "MRE THN ONCE/DAY"
		2 "ONCE A DAY"
		3 "A FEW TIMES/WEEK"
		4 "ONCE A WEEK"
		5 "FEW TIMES/MONTH"
		6 "ONCE A MONTH"
		7 "LESS ONCE/MNTH"
		8 "NEVER"
		98 "DK"
		99 "NA";

	label define CONGHLP1
		0 "IAP"
		1 "A GREAT DEAL"
		2 "SOME"
		3 "A LITTLE"
		4 "NONE"
		8 "DONT KNOW"
		9 "NA";

	label define CONGHRM1
		0 "IAP"
		1 "VERY OFTEN"
		2 "FAIRLY OFTEN"
		3 "ONCE IN A WHILE"
		4 "NEVER"
		8 "DONT KNOW"
		9 "NA";

	label define COPE1
		0 "IAP"
		1 "A GREAT DEAL"
		2 "QUITE A BIT"
		3 "SOMEWHAT"
		4 "NOT AT ALL"
		8 "DONT KNOW"
		9 "NA";

	label define GODWATCH
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "DISAGREE"
		4 "STRONG DISAGREE"
		8 "DONT KNOW"
		9 "NA";

	label define FORGIVE1
		0 "IAP"
		1 "ALWYS/ALMST ALWY"
		2 "OFTEN"
		3 "SELDOM"
		4 "NEVER"
		8 "DONT KNOW"
		9 "NA";

	label define FEELGOD
		0 "IAP"
		1 "MANY TIMES A DAY"
		2 "EVERY DAY"
		3 "MOST DAYS"
		4 "SOME DAYS"
		5 "ONCE IN A WHILE"
		6 "NEVER/ALMST NEVR"
		8 "DONT KNOW"
		9 "NA";

	label define NOCHEER
		0 "IAP"
		1 "ALL OF THE TIME"
		2 "MOST OF THE TIME"
		3 "SOME OF THE TIME"
		4 "LITTLE OF TIME"
		5 "NONE OF THE TIME"
		8 "DONT KNOW"
		9 "NA";

	label define RELPERSN
		0 "IAP"
		1 "VERY RELIGIOUS"
		2 "MODRTE RELIGIOUS"
		3 "SLIGHT RELIGIOUS"
		4 "NOT RELIGIOUS"
		8 "DONT KNOW"
		9 "NA";

	label define SPRTPRSN
		0 "IAP"
		1 "VERY SPIRITUAL"
		2 "MODEATE SPIRTUAL"
		3 "SLIGHT SPIRITUAL"
		4 "NOT SPIRITUAL"
		8 "DONT KNOW"
		9 "NA";

	label define NATARTS
		0 "IAP"
		1 "TOO LITTLE"
		2 "ABOUT RIGHT"
		3 "TOO MUCH"
		8 "DONT KNOW"
		9 "NA";

	label define IRRELART
		0 "IAP"
		1 "ALLOWED"
		2 "NOT ALLOWED"
		8 "DONT KNOW"
		9 "NA";

	label define IRRELOFF
		0 "IAP"
		1 "OFFENDED"
		2 "NOT OFFENDED"
		8 "DONT KNOW"
		9 "NA";

	label define AIMOFART
		0 "IAP"
		1 "ART HUMAN SPIRIT"
		2 "ART XPRSS ARTIST"
		8 "DONT KNOW"
		9 "NA";

	label define TRAINSCH
		0 "IAP"
		1 "LESS THAN ONE YEAR"
		2 "TWO YEARS OR LESS"
		3 "FOUR YEARS OR LESS"
		4 "SIX YEARS OR LESS"
		5 "EIGHT YEARS OR LESS"
		6 "OVER EIGHT YEARS"
		8 "DONT KNOW"
		9 "NA";

	label define TYPEORG
		0 "IAP"
		1 "LARGER ORGANIZTN"
		2 "CMPLTE INDPNDENT"
		8 "NOT SURE"
		9 "NA";

	label define PARTORG
		0 "IAP"
		1 "BRANCH/SUBSDIARY"
		2 "ORG HEADQUARTERS"
		3 "GOVERNMNT AGENCY"
		4 "PUBLIC SCH SYS"
		5 "SOMETHING ELSE"
		8 "NOT SURE"
		9 "NA";

	label define ORGSIZE
		0 "IAP"
		1 "1-9"
		2 "10-49"
		3 "50-99"
		4 "100-499"
		5 "500-999"
		6 "1 000-1 999"
		7 "2 000-9 999"
		8 "10 000 OR MORE"
		98 "NOT SURE"
		99 "NA";

	label define GENDERWK
		0 "IAP"
		1 "ALL WOMEN"
		2 "ALMOST ALL WOMEN"
		3 "MOSTLY WOMEN"
		4 "HALF MEN/WOMEN"
		5 "MOSTLY MEN"
		6 "ALMOST ALL MEN"
		7 "ALL MEN"
		8 "NOT SURE"
		9 "NA";

	label define OTJTRAIN
		0 "IAP"
		1 "YES"
		2 "NO/PRCTICLY NONE"
		8 "DONT KNOW"
		9 "NA";

	label define FORMLFIN
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "NEVER ENDS"
		8 "DONT KNOW"
		9 "NA";

	label define FORMLDYS
		0 "IAP"
		1 "A MONTH OR LESS"
		2 "1-3 MONTHS"
		3 "3-6 MONTHS"
		4 "6 MONTHS-1 YR"
		5 "OVER A YEAR"
		8 "DONT KNOW"
		9 "NA";

	label define FORMLHRS
		0 "IAP"
		1 "35 HOURS OR LESS"
		2 "35 HOURS-70 HRS"
		3 "OVER 70 HOURS"
		8 "DONT KNOW"
		9 "NA";

	label define DOINGFIN
		0 "IAP"
		1 "YES"
		2 "NOT YET/EVENTUAL"
		3 "NEVER ENDS"
		8 "DONT KNOW"
		9 "NA";

	label define DOINGDYS
		0 "IAP"
		1 "A MONTH OR LESS"
		2 "MONTH TO THREE"
		3 "3 MONTHS TO 6"
		4 "6 MONTHS TO YEAR"
		5 "OVER A YEAR"
		8 "DONT KNOW"
		9 "NA";

	label define WOJOBYRS
		0 "IAP"
		1 "LESS ONE YEAR"
		2 "ONE TO 3 YEARS"
		3 "3 TO 5 YEARS"
		4 "FIVE - TEN YEARS"
		5 "TEN YEARS/OVER"
		8 "DONT KNOW"
		9 "NA";

	label define NUMEMP
		0 "IAP"
		1 "ONE"
		2 "TWO"
		3 "THREE TO FIVE"
		4 "SIX TO TEN"
		5 "MORE THAN TEN"
		8 "DONT KNOW"
		9 "NA";

	label define HOWPAID
		0 "IAP"
		1 "HOURLY WAGE"
		2 "DAILY WAGE"
		3 "WEEKLY WAGE"
		4 "MONTHLY SALARY"
		5 "ANNUAL SALARY"
		6 "OTHER PAY RATE"
		8 "DONT KNOW"
		9 "NA";

	label define HOURLY
		0 "IAP"
		998 "DONT KNOW"
		999 "NA";

	label define DAILY
		0 "IAP"
		9998 "DONT KNOW"
		9999 "NA";

	label define MONTHLY
		0 "IAP"
		99998 "DONT KNOW"
		99999 "NA";

	label define YEARLY
		0 "IAP"
		999998 "DONT KNOW"
		999999 "NA";

	label define TRUSTING
		0 "IAP"
		1 "VERY TRUSTING"
		2 "SOMEWHT TRUSTING"
		3 "SOMWHT DSTRUSTNG"
		4 "VERY DISTRUSTING"
		8 "DONT KNOW"
		9 "NA";

	label define PSYCMED1
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NOT AGREE/DSAGRE"
		4 "DISAGREE"
		5 "STRONG DISAGREE"
		8 "DONT KNOW"
		9 "NA";

	label define USEPSYC1
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "MIXED"
		4 "SOMEWHT UNLIKELY"
		5 "VERY UNLIKELY"
		8 "DONT KNOW"
		9 "NA";

	label define HLTHINSR
		0 "IAP"
		1 "YES COVERED"
		2 "NO NOT COVERED"
		8 "DONT KNOW"
		9 "NA";

	label define DOCLIST
		0 "IAP"
		1 "YES"
		2 "NO"
		8 "KNOW KNOW"
		9 "NA";

	label define SWITHLTH
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "CANT SWITCH"
		8 "DONT KNOW"
		9 "NA";

	label define MNTLDIF
		0 "IAP"
		1 "VERY DIFFICULT"
		2 "SOMEWHAT DIFFCLT"
		3 "NOT DIFFICULT"
		8 "KNOW KNOW"
		9 "NA";

	label define HMO1
		0 "IAP"
		1 "STRONG DISAGREE"
		2 "DISAGREE"
		3 "NOT AGREE/DSAGRE"
		4 "AGREE"
		5 "STRONGLY AGREE"
		8 "DONT KNOW"
		9 "NA";

	label define DOC1
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "UNCERTAIN"
		4 "DISAGREE"
		5 "STRONG DISAGREE"
		8 "DK"
		9 "NA";

	label define DOC15
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NEITHER AGREE NOR DISAGREE"
		4 "DISAGREE"
		5 "STRONG DISAGREE"
		8 "DK"
		9 "NA";

	label define PROZFOR1
		0 "IAP"
		98 "DONT KNOW"
		99 "NA";

	label define PROZ1
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NOT AGREE/DSAGRE"
		4 "DISAGREE"
		5 "STRONG DISAGREE"
		8 "CANT CHOOSE"
		9 "NA";

	label define PROZSLF1
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "MIXED"
		4 "SOMEWHT UNLIKELY"
		5 "VERY UNLIKELY"
		8 "DK"
		9 "NA";

	label define SOCSECFX
		0 "IAP"
		1 "NO PROBLEMS"
		2 "MINOR PROBS"
		3 "SERIOUS PROB"
		4 "BE REPLACED"
		8 "DK"
		9 "NA";

	label define SOCSECNU
		0 "IAP"
		1 "PHASE OUT SOCIAL SECURITY+"
		2 "CONTINUE AS IS"
		8 "DK"
		9 "NA";

	label define TERMINAL
		0 "IAP"
		1 "YES MYSELF"
		2 "YES FRIEND"
		3 "YES IMMED RELTVE"
		4 "YES OTHR RELATVE"
		5 "NO"
		6 "SELF AND ONE"
		7 "TWO OR MORE"
		8 "DK"
		9 "NA";

	label define TERMECON
		0 "IAP"
		1 "STONGLY AGREE"
		2 "AGREE"
		3 "NOT AGREE/DSAGRE"
		4 "DISAGREE"
		5 "STRONG DISAGREE"
		8 "DK"
		9 "NA";

	label define TRUSTFAM
		0 "IAP"
		1 "COMPLETELY"
		2 "A GREAT DEAL"
		3 "SOMEWHAT"
		4 "ONLY A LITTLE"
		5 "NOT AT ALL"
		8 "DONT KNOW"
		9 "NA";

	label define TERMVIG
		0 "IAP"
		1 "VIGNETTE A"
		2 "VIGNETTE B"
		3 "VIGNETTE C"
		4 "VIGNETTE D"
		5 "VIGNETTE E"
		6 "VIGNETTE F"
		8 "DONT KNOW"
		9 "NA";

	label define RIGHTREF
		0 "IAP"
		1 "STONGLY AGREE"
		2 "AGREE"
		3 "NOT AGREE/DSAGRE"
		4 "DISAGREE"
		5 "STRONG DISAGREE"
		8 "DONT KNOW"
		9 "NA";

	label define FAMWHTS
		0 "IAP"
		1 "COMMITMENT TO STRONG FAMILIES"
		7 "LACKS COMMITMENT TO STRONG FAMILIES"
		8 "DK"
		9 "NA";

	label define FAIRWHTS
		0 "IAP"
		1 "COMMITMENT TO FAIR AND EQUAL TREATMENT"
		7 "LACKS COMMITMENT TO FAIR AND EQUAL TREATMENT"
		8 "DK"
		9 "NA";

	label define CONTENG
		0 "IAP"
		1 "MOST IMPORTANT CONTRIBUTION"
		2 "IMPORTANT CONTRIBUTION"
		3 "SOME CONTRIBUTION"
		4 "LITTLE POSITIVE CONTRIBUTION"
		8 "DK"
		9 "NA";

	label define OTHLANG1
		0 "IAP"
		1 "ENGLISH"
		2 "SPANISH"
		3 "POLISH"
		4 "FRENCH"
		5 "HEBREW"
		6 "RUSSIAN"
		7 "TAGALOG"
		8 "CHINESE"
		9 "URDU"
		10 "ITALIAN"
		11 "ROMANIAN"
		12 "GERMAN"
		13 "PASHTU"
		14 "CHAMORRO"
		15 "UKRANIAN"
		16 "HUNGARIAN"
		17 "TURKISH"
		18 "KHMER"
		19 "KOREAN"
		20 "NAVAJO"
		21 "MALAYAM"
		22 "ARABIC"
		23 "FARSI-PERSIAN"
		24 "SERBIAN"
		25 "LITHUANIAN"
		27 "THAI"
		28 "GUJARATI"
		30 "DARI"
		31 "SLOVAK"
		32 "JAPANESE"
		33 "PORTUGUESE"
		34 "VAJUN"
		35 "YIDDDISH"
		36 "CREOLE"
		37 "VIETNAMESE"
		38 "NORWEGIAN"
		39 "MALAYSIAN"
		40 "LATIN"
		41 "CZECH"
		42 "HINDU"
		43 "HAKKA"
		44 "SWEDISH"
		45 "VESAYA"
		46 "SIGN LANGUAGE"
		47 "TONGAN"
		48 "ARMENIAN"
		49 "IBO"
		50 "DUTCH"
		51 "CHEROKEE"
		52 "SAMOAN"
		53 "YORUBA"
		54 "GREEK"
		55 "LAKOTA"
		56 "AFRICAN"
		57 "ANISHNABEE"
		58 "ILOKAND"
		59 "ASSYRIAN"
		60 "DANISH"
		61 "LAOTIAN"
		62 "FINNISH"
		63 "MOHAWK"
		64 "AMHARIC"
		65 "BANGLADESH"
		66 "ORIYA"
		67 "HAWAIIAN"
		68 "Albanian"
		69 "HMONG"
		70 "INDONESIAN"
		71 "SWAHILI"
		72 "TELUGU"
		73 "KANNADA"
		74 "BULGARIAN"
		75 "GUARANI"
		76 "BOSNIAN"
		77 "PUNJABI"
		78 "LATAVAIN"
		79 "BASQUE"
		80 "BICOL"
		81 "CROATIAN"
		82 "TIGAN GYPSY"
		83 "SLOVENIAN"
		84 "BELGIAN"
		85 "MANDINGO"
		86 "JAMACA"
		87 "SOMALI"
		88 "NATIVE AMERIAN"
		89 "TAGRINGA"
		90 "KRIO"
		91 "INDIAN"
		92 "CEBUANO"
		93 "Macedonian"
		94 "PATOIS"
		95 "PANGASINAN"
		96 "Ilocano"
		97 "MARATHI"
		98 "KASHMIRI/CASHMIRI"
		99 "TAMIL"
		100 "Akan"
		101 "Ethiopian"
		102 "Georgian"
		103 "Yugoslavian"
		104 "Irish"
		105 "Catalan"
		106 "Mixtec"
		107 "Garifuna"
		108 "Fang"
		109 "Apache"
		110 "Bassa"
		111 "Efik"
		112 "Twi"
		113 "Maltese"
		114 "Zuni"
		115 "Ga"
		116 "Mina"
		117 "Surinamese"
		118 "Yaqui"
		119 "Quichoa"
		120 "Tok Pisin"
		121 "Pima"
		122 "Lingala"
		123 "Otomi"
		124 "Chindali"
		125 "Tibetan"
		126 "Oromo"
		127 "Nepali"
		128 "Eskimo"
		129 "Mam"
		130 "Choctaw"
		131 "Ashanti"
		132 "Burmese"
		133 "Hewa"
		134 "Sango"
		135 "Chitumbuka"
		136 "Maratsi"
		137 "Yemba"
		998 "DK"
		999 "NA";

	label define OTHBEST
		0 "IAP"
		1 "ENGLISH"
		2 "SPANISH"
		3 "POLISH"
		4 "FRENCH"
		5 "HEBREW"
		6 "RUSSIAN"
		7 "TAGALOG"
		8 "CHINESE"
		9 "URDU"
		10 "ITALIAN"
		11 "ROMANIAN"
		12 "GERMAN"
		13 "PASHTU"
		14 "CHAMORRO"
		15 "UKRANIAN"
		16 "HUNGARIAN"
		17 "TURKISH"
		18 "KHMER"
		19 "KOREAN"
		20 "NAVAJO"
		21 "MALAYAM"
		22 "ARABIC"
		23 "FARSI-PERSIAN"
		24 "SERBIAN"
		25 "LITHUANIAN"
		27 "THAI"
		28 "GUJARATI"
		30 "DARI"
		31 "SLOVAK"
		32 "JAPANESE"
		33 "PORTUGUESE"
		34 "VAJUN"
		35 "YIDDDISH"
		36 "CREOLE"
		37 "VIETNAMESE"
		38 "NORWEGIAN"
		39 "MALAYSIAN"
		40 "LATIN"
		41 "CZECH"
		42 "HINDU"
		43 "HAKKA"
		44 "SWEDISH"
		45 "VESAYA"
		46 "SIGN LANGUAGE"
		47 "TONGAN"
		48 "ARMENIAN"
		49 "IBO"
		50 "DUTCH"
		51 "CHEROKEE"
		52 "SAMOAN"
		53 "YORUBA"
		54 "GREEK"
		55 "LAKOTA"
		56 "AFRICAN"
		57 "ANISHNABEE"
		58 "ILOKAND"
		59 "ASSYRIAN"
		60 "DANISH"
		61 "LAOTIAN"
		62 "FINNISH"
		63 "MOHAWK"
		64 "AMHARIC"
		65 "BANGLADESH"
		66 "ORIYA"
		67 "HAWAIIAN"
		69 "HMONG"
		70 "INDONESIAN"
		71 "SWAHILI"
		72 "TELUGU"
		73 "KANNADA"
		74 "BULGARIAN"
		75 "GUARANI"
		76 "BOSNIAN"
		77 "PUNJABI"
		78 "LATAVAIN"
		79 "BASQUE"
		80 "BICOL"
		81 "CROATIAN"
		82 "TIGAN GYPSY"
		83 "SLOVENIAN"
		84 "BELGIAN"
		85 "MANDINGO"
		86 "JAMACA"
		87 "SOMALI"
		88 "NATIVE AMERIAN"
		89 "TAGRINGA"
		90 "KRIO"
		91 "INDIAN"
		92 "CEBUANO"
		93 "Macedonian"
		94 "PATOIS"
		95 "PANGASINAN"
		96 "Ilocano"
		97 "MARATHI"
		98 "KASHMIRI/CASHMIRI"
		99 "TAMIL"
		998 "DK"
		999 "NA";

	label define SPKLANG
		0 "IAP"
		1 "VERY WELL"
		2 "WELL"
		3 "NOT WELL"
		4 "POORLY/HARDLY AT ALL"
		8 "DK"
		9 "NA";

	label define USELANG
		0 "IAP"
		1 "NEVER"
		2 "LESS THAN ONCE A WEEK"
		3 "ONCE A WEEK"
		4 "SEVERAL TIMES A WEEK"
		5 "ONCE A DAY"
		6 "SEVERAL TIMES A DAY"
		8 "DK"
		9 "NA";

	label define GETLANG
		0 "IAP"
		1 "CHILDHOOD HOME"
		2 "SCHOOL"
		3 "ELSEWHERE"
		8 "DK"
		9 "NA";

	label define LANGWRK
		0 "IAP"
		1 "NEVER"
		2 "ONCE A DAY"
		3 "SEVERAL TIMES A DAY"
		4 "LESS THAN ONCE A WEEK"
		5 "ONCE A WEEK"
		6 "SEVERAL TIMES A WEEK"
		8 "DK"
		9 "NA";

	label define OTHHOME
		0 "IAP"
		1 "Yes"
		2 "No"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define BETRLANG
		0 "IAP"
		1 "LANGUAGE 1"
		2 "LANGUAGE 2"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SPKLANGW
		0 "IAP"
		1 "Very well"
		2 "Well"
		3 "Not well"
		4 "Poor or hardly at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define LETINHSP
		0 "IAP"
		1 "INCREASED A LOT"
		2 "INCREASED A LITTLE"
		3 "LEFT THE SAME AS IT IS NOW"
		4 "DECREASED A LITTLE"
		5 "DECREASED A LOT"
		8 "DK"
		9 "NA";

	label define WHTCHNG
		0 "IAP"
		1 "INCREASE A LOT"
		2 "INCREASE BY A LITTLE"
		3 "STAY THE SAME"
		4 "DECREASE BY A LITTLE"
		5 "DECREASE BY A LOT"
		8 "DK"
		9 "NA";

	label define ETHCHNG
		0 "IAP"
		1 "VERY GOOD THING"
		2 "GOOD THING"
		3 "NEITHER GOOD NOR BAD"
		4 "BAD THING"
		5 "VERY BAD THING"
		8 "DK"
		9 "NA";

	label define HISPWORK
		0 "IAP"
		1 "ALL HISPANIC"
		2 "ALMOST ALL HISPANIC"
		3 "MOST HISPANIC"
		4 "ABOUT HALF HISPANIC"
		5 "MOST NOT HISPANIC"
		6 "ALMOST NON HISPANIC"
		7 "NONE HISPANIC"
		8 "DK"
		9 "NA";

	label define MOSTCOM
		0 "IAP"
		1 "WHITES"
		2 "BLACKS/AFRICAN-AMERICANS"
		3 "JEWS"
		4 "HISPANICS"
		5 "ASIANS"
		6 "EQUAL IN COMMON TO ALL"
		7 "NOTHING IN COMMON WITH ANY"
		8 "DK"
		9 "NA";

	label define NEIETH1
		0 "IAP"
		1 "ASIAN"
		2 "BLACK"
		3 "HISPANIC"
		4 "WHITE"
		5 "DOESNT MATTER-DONT CARE-RACE NOT IMPORTANT"
		6 "RURAL-WANTS NO NEIGHBORS"
		7 "MIXED RACE, 2 OR MORE RACES IN 1 HH"
		8 "DK"
		9 "NA";

	label define HSWHT
		0 "IAP"
		1 "ALL WHITE"
		2 "MOSTLY WHITE"
		3 "ABOUT HALF WHITE AND HALF OTHER RACES"
		4 "MOSTLY OTHER RACES"
		5 "ALL OTHER RACES"
		6 "NOT ALL WHITE"
		8 "DK"
		9 "NA";

	label define HSETH
		0 "IAP"
		1 "BLACKS/AFRICAN-AMERICANS"
		2 "HISPANICS"
		3 "ASIANS"
		4 "AMERICAN INDIANS"
		5 "ALL, MIXED"
		6 "2 OR MORE GROUPS"
		8 "DK"
		9 "NA";

	label define DRCTLINK
		0 "IAP"
		1 "NEVER"
		2 "LESS THAN HALF OF THE TIME"
		3 "ABOUT HALF OF THE TIME"
		4 "MORE THAN HALF OF THE TIME"
		5 "ALMOST ALWAYS"
		8 "DK"
		9 "NA";

	label define EMAILLNK
		0 "IAP"
		1 "Never"
		2 "Less than half of the time"
		3 "About half of the time"
		4 "More than half of the time"
		5 "Almost always"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define FIN30
		0 "IAP"
		1 "NEVER"
		2 "1-2 TIMES"
		3 "3-5 TIMES"
		4 "MORE THAN 5 TIMES"
		8 "DK"
		9 "NA";

	label define POLAGREE
		0 "IAP"
		1 "Very true"
		2 "Somewhat true"
		3 "Not true"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define POLNEUTL
		0 "IAP"
		1 "VERY TRUE"
		2 "SOMEWHAT TRUE"
		3 "NOT TRUE"
		8 "DK"
		9 "NA";

	label define POLNEW
		0 "IAP"
		1 "YES"
		2 "NO"
		8 "CANT RECALL"
		9 "NA";

	label define WWWCLASS
		0 "IAP"
		1 "NEVER"
		2 "1-2 TIMES"
		3 "MORE THAN 2 TIMES"
		8 "DK"
		9 "NA";

	label define SRCHENG2
		0 "IAP"
		1 "YAHOO"
		2 "LYCOS"
		3 "SEARCH.COM"
		4 "GOPHER"
		5 "ALL THE WEB"
		6 "MSN"
		7 "EBAY"
		8 "INFOSEEK"
		9 "ALTAVISTA"
		10 "EXPLORER"
		11 "NETSCAPE"
		12 "ISEARCH"
		13 "EXCITE"
		14 "AOL"
		15 "JAVA"
		16 "WEBCRAWLER"
		17 "HOTBOT"
		18 "GOOGLE"
		19 "COPERNIC"
		20 "ASK JEEVES"
		21 "IWON"
		22 "DOGPILE"
		23 "STREETVIOLENCE.COM"
		24 "BROWSER"
		25 "NORTHERN LIGHTS"
		26 "WWW.IRS.COM"
		27 "NETFIND"
		28 "KEYSEARCH"
		29 "METACRAWLER"
		30 "UPROAR.COM"
		31 "SIAP"
		32 "GO"
		33 "MYWAY"
		34 "FUSE"
		35 "ESPN"
		36 "USWEST"
		37 "TERRA.COM"
		38 "GOTO.COM"
		39 "BIZRATE"
		40 "FASTSEARCH"
		41 "SHERLOCK"
		42 "LYNCO"
		43 "INFERENCE"
		44 "4ANYTHING"
		45 "NAVISTAR"
		98 "DK"
		99 "NA";

	label define HLTHINFO
		0 "NOT AT ALL"
		1 "1 OR 2 TIMES"
		2 "3-5 TIMES"
		3 "6 OR MORE TIMES"
		8 "DK"
		9 "NA";

	label define POLINFO
		0 "NOT AT ALL"
		1 "1 OR 2 TIMES"
		2 "3 OR MORE TIMES"
		8 "DK"
		9 "NA";

	label define NUMCNTCT
		995 "UNSPECIFIED, 1 OR MORE"
		996 "TOO MANY TO LIST"
		998 "DK"
		999 "NA";

	label define INPERSON
		0 "IAP"
		1 "0"
		2 "1-2"
		3 "3-5"
		4 "6-10"
		5 "11-15"
		6 "16-25"
		7 "26-50"
		8 "50+"
		98 "DK"
		99 "NA";

	label define NUMHOME
		0 "IAP"
		8 "DK"
		9 "NA";

	label define PAYWWW
		0 "IAP"
		1 "EMPLOYER PROVIDES INTERNET CONNECTION AT NO CHARGE"
		2 "COVERS SOME BUT NOT ALL OF COST"
		3 "DOES NOT CONTRIBUTE TO COST OF USING INTERNET"
		8 "DK"
		9 "NA";

	label define WWWLINE1
		0 "IAP"
		1 "REGULAR TELEPHONE LINE"
		2 "OTHER MEANS"
		8 "DK"
		9 "NA";

	label define WWWLINE2
		0 "IAP"
		1 "SPECIAL HIGH-SPEED TELE LINE (ISDN) CNCTED TO CMPTR"
		2 "CABLE SERVICE LINE CNCTD TO COMPUTER"
		3 "WEB TV LINE, CNCTD TO TV SET"
		4 "MORE THAN ONE TYPE OF CNCTION"
		5 "OTHER, NOT NAMED ABOVE"
		6 "WIRELESS CONNECTION(e.g.FROM A SATELLITE)"
		8 "DK"
		9 "NA";

	label define MOSTLOC
		0 "IAP"
		1 "SCHOOL"
		2 "LIBRARY"
		3 "FRIENDS HOUSE"
		4 "OTHER"
		8 "DK"
		9 "NA";

	label define NUMPROBS
		96 "96 OR HIGHER"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define JOBINFO
		0 "NO"
		1 "1 OR 2 TIMES"
		2 "3-5 TIMES"
		3 "6 OR MORE TIMES"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define JOBPAPER
		0 "NOT AT ALL"
		1 "1 OR 2 TIMES"
		2 "3-5 TIMES"
		3 "6 OR MORE TIMES"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define EMAILYR
		0 "IAP"
		1 "This year (2002)"
		2 "In the last year (2001)"
		3 "1-2 years ago (2000)"
		4 "2-3 years ago (1999)"
		5 "3-4 years ago (1998)"
		6 "4-5 years ago (1997)"
		7 "5 or more years ago (1990-1996)"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define WEBYR
		0 "IAP"
		1 "This year"
		2 "In the last year"
		3 "1-2 years ago"
		4 "2-3 years ago"
		5 "3-4 years ago"
		6 "4-5 years ago"
		7 "5 or more years ago"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define WEBABLE
		0 "IAP"
		1 "Excellent"
		2 "Good"
		3 "Fair"
		4 "Poor"
		5 "Very poor"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define PROCESSR
		0 "IAP"
		1 "The size of the hard drive"
		2 "The speed of the hard drive"
		3 "The type of microprocessor"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define BROWSER3
		0 "IAP"
		1 "EXPLORER"
		2 "NETSCAPE"
		3 "EXCITE"
		4 "MSN"
		5 "AOL"
		6 "GOOGLE"
		7 "YAHOO"
		8 "EARTHLINK"
		9 "LYCOS"
		10 "COMPUSERVE"
		11 "BONZI"
		12 "GOTO"
		13 "ALTAVISTA"
		14 "HOTBOT"
		15 "SIAP"
		16 "MINDSPRING"
		17 "DOGPILE"
		18 "PRODIGY"
		19 "ASK JEEVES"
		20 "DSL"
		21 "NETRAX"
		22 "WEBCORNER"
		23 "MOZILLA"
		24 "EVERYONESINTERNET"
		25 "MAMMA"
		26 "DOGPATCH"
		27 "OTHER"
		98 "DK"
		99 "NA";

	label define ADVSRCH
		0 "IAP"
		1 "Very familiar"
		2 "Somewhat familiar"
		3 "Not familiar"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define TIMEKID1
		0 "IAP"
		1 "TOO MUCH"
		2 "ABOUT THE RIGHT AMOUNT"
		3 "TOO LITTLE"
		8 "DK"
		9 "NA";

	label define KNOWKID1
		0 "IAP"
		1 "ALMOST ALL OF THE TIME"
		2 "MOST OF THE TIME"
		3 "ABOUT HALF OF THE TIME"
		4 "SOME OF THE TIME"
		5 "HARDLY ANY OF THE TIME"
		8 "DK"
		9 "NA";

	label define HUCLEAN
		0 "IAP"
		1 "VERY CLEAN"
		2 "CLEAN"
		3 "SO-SO"
		4 "NOT VERY CLEAN"
		5 "DIRTY"
		8 "DK"
		9 "NA";

	label define HOMEBAND
		0 "IAP"
		1 "TELEPHONE LINE"
		2 "DSL"
		3 "CABLE"
		4 "SATELLITE"
		5 "WIRELESS"
		6 "CELLPHONE"
		7 "OTHER"
		8 "NOT AT ALL"
		9 "DK NA";

	label define FREEMNS1
		0 "IAP"
		1 "WANT:DOING WHAT I WANT"
		2 "AUTONOMY:SELF-REALIZATION"
		3 "CHOICES:MAKING DECISION"
		4 "RIGHTS:RELIGION AND SPEECH"
		5 "MOVEMENT:MOVEMENT AND TRAVEL"
		6 "NEGATIVE:SLAVE SURBORDINATE DISCRIMINATION"
		7 "CITIZEN:POLITICAL PARTICIPATION"
		8 "SECURITY:ECONOMIC INDEPENDENCE"
		9 "OTHER"
		98 "DONT KNOW";

	label define FREEEXP1
		0 "IAP"
		1 "MOVING:DRIVING TRAVEL"
		2 "LEISURE:RECREATION ENJOYABLE ACTIVITY"
		3 "SOCIAL:ENGAGEMENT WITH FAMILY OR INSTITUTIONS"
		4 "NEGATIVE:NO OBIGATION, DIVORCED, BEING ALONE"
		5 "INNER:SPIRITUAL AND RELIGIOUS FREEDOM"
		6 "CHOICES:VARIANT OF MAKING CHOICES"
		7 "CITIZEN:POLITICAL PARTICIPATION"
		8 "SECURITY:ECONOMIC SECURITY AND INDEPENDENCE"
		9 "OTHER"
		98 "NO ANSWER DONT KNOW";

	label define HOWFREE
		0 "IAP"
		1 "COMPLETE FREEDOM"
		2 "A GREAT DEAL OF FREEDOM"
		3 "A MODERATE DEGREE OF FREEDOM"
		4 "NOT MUCH FREEDOM"
		5 "NO FREEDOM AT ALL"
		8 "DK"
		9 "NA";

	label define FREENOW
		0 "IAP"
		1 "MORE FREEDOM"
		2 "ABOUT THE SAME AMOUNT OF FREEDOM"
		3 "LESS FREEDOM"
		8 "DK"
		9 "NA";

	label define SATDEMOC
		0 "IAP"
		1 "VERY SATISFIED"
		2 "FAIRLY SATISFIED"
		3 "NOT VERY SATISFIED"
		4 "NOT AT ALL SATISFIED"
		8 "DK"
		9 "NA";

	label define LEFTLONE
		0 "IAP"
		1 "ONE OF THE MOST IMPORTANT"
		2 "EXTREMELY IMPORTANT"
		3 "VERY IMPORTANT"
		4 "MODERATELY IMPORTANT"
		5 "SOMEWHAT IMPORTANT"
		6 "NOT TOO IMPORTANT"
		8 "DK"
		9 "NA";

	label define FREEPRSS
		0 "IAP"
		1 "THERE SHOULD BE COMPLETE FREEDOM OF THE PRESS, EVEN IF"
		2 "THE PRESS SHOULD DEVELOP A CODE OF ETHICS TO KEEP IT"
		3 "THE GOVERNMENT SHOULD KEEP THE PRESS FROM PRINTING"
		8 "DK"
		9 "NA";

	label define WLTHPOV
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NEITHER AGREE NOR DISAGREE"
		4 "DISAGREE"
		5 "STRONGLY DISAGREE"
		8 "CANT CHOOSE"
		9 "NA";

	label define CNTRLIFE
		0 "IAP"
		1 "NO CHOICE AND CONTROL"
		4 "SOME CHOICE AND CONTROL"
		7 "A GREAT DEAL OF CHOICE AND CONTROL"
		8 "DK"
		9 "NA";

	label define MODACT
		0 "IAP"
		1 "YES, LIMITED A LOT"
		2 "YES, LIMITED A LITTLE"
		3 "NO, NOT LIMITED AT ALL"
		8 "DK"
		9 "NA";

	label define PAIN
		0 "IAP"
		1 "NOT AT ALL"
		2 "A LITTLE BIT"
		3 "MODERATELY"
		4 "QUITE A BIT"
		5 "EXTREMELY"
		8 "DK"
		9 "NA";

	label define PEACEFUL
		0 "IAP"
		1 "ALL OF THE TIME"
		2 "MOST OF THE TIME"
		3 "A GOOD BIT OF THE TIME"
		4 "SOME OF THE TIME"
		5 "A LITTLE BIT OF THE TIME"
		6 "NON OF THE TIME"
		8 "DK"
		9 "NA";

	label define TREAT1
		0 "IAP"
		1 "DEFINITELY GO"
		2 "PROBABLY GO"
		3 "PROBABLY NOT GO"
		4 "DEFINITELY NOT GO"
		8 "DK"
		9 "NA";

	label define WAIT1
		0 "ZERO DAYS"
		991 "SOME DAYS"
		992 "SOME WEEKS"
		993 "SOME MONTHS"
		998 "DK"
		999 "NA";

	label define DOWNQOL
		0 "IAP"
		1 "DEFINITELY EXPECT"
		2 "PROBABLY EXPECT"
		3 "PROBABLY NOT EXPECT"
		4 "DEFINITELY NOT EXPECT"
		8 "DK"
		9 "NO ANSWER";

	label define ETHIMP
		0 "IAP"
		1 "Very Important"
		2 "Moderately Important"
		3 "Slightly Important"
		4 "Not at All Important"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define ETHIGNOR
		0 "IAP"
		1 "Strongly Agree"
		2 "Agree"
		3 "Neither Agree nor Disagree"
		4 "Disagree"
		5 "Strongly Disagree"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define FEELBLKS
		0 "IAP"
		1 "Very Warm"
		9 "Very Cool"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define DOCVIG
		0 "IAP"
		1 "Our physcian s group...(c4)"
		2 "It use to be that physicans...(c5)"
		3 "I can understand...(c6)"
		4 "I understand that...(c7)"
		5 "I have had a lot...(c8)"
		6 "I usually don t order...(c9)";

	label define DOCASKME
		0 "IAP"
		1 "Strongly agree"
		2 "Moderately agree"
		3 "Slightly agree"
		4 "Slightly disagree"
		5 "Moderately disagree"
		6 "Strongly disagree"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define FININC1
		0 "IAP"
		1 "Very important"
		2 "Somewhat important"
		3 "Neither important nor unimportant"
		4 "Somewhat unimportant"
		5 "Very unimportant"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define FININC2
		0 "IAP"
		1 "When you enroll in a health plan"
		2 "When you first see your doctor"
		3 "When you need a test or specialist"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define FININC3
		0 "IAP"
		1 "Your doctor"
		2 "A representative of your health plan"
		3 "Both your doctor and a representative of health plan"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define FININC4
		0 "IAP"
		1 "Very likely"
		2 "Somewhat likely"
		3 "Neither likely nor unlikely"
		4 "Somewhat unlikely"
		5 "Very unlikely"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define BELVEDOC
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "MAYBE"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define DOCSAT
		0 "IAP"
		1 "Excellent"
		2 "Very good"
		3 "Good"
		4 "Fair"
		5 "Poor"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define DOCCOSTS
		0 "IAP"
		1 "Completely"
		2 "Mostly"
		3 "Somewhat"
		4 "A little"
		5 "Not at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define WRKTYPE
		0 "IAP"
		1 "INDEPENDENT CONTRACTOR/CONSULTANT/FREELANCE WORKER"
		2 "ON-CALL, WORK ONLY WHEN CALLED TO WORK"
		3 "PAID BY A TEMPORARY AGENCY"
		4 "WORK FOR CONTRACTOR WHO PROVIDES WORKERS/SERVICES"
		5 "REGULAR, PERMANENT EMPLOYEE"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define YEARSJOB
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define WAYPAID
		0 "IAP"
		1 "Salaried"
		2 "Paid by the hour"
		3 "Other"
		4 "Commission"
		5 "Self-employed"
		6 "Paid by the job"
		7 "Salary and bonus/commission"
		8 "Tips"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define WRKSCHED
		0 "IAP"
		1 "Day shift"
		2 "Afternoon shift"
		3 "Night shift"
		4 "Split shift"
		5 "Irregular shift/on-call"
		6 "Rotating shifts"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MOREDAYS
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define CHNGTME
		0 "IAP"
		1 "Often"
		2 "Sometimes"
		3 "Rarely"
		4 "Never"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define WRKHOME
		0 "IAP"
		1 "Never"
		2 "A few times a year"
		3 "About once a month"
		4 "About once a week"
		5 "More than once a week"
		6 "Worker works mainly at home"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define WHYWKHME
		0 "IAP"
		1 "Worker wants to work at home"
		2 "Worker has to work at home to keep up with job"
		3 "Other combinations and other reasons"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define FAMWKOFF
		0 "IAP"
		1 "Not at all hard"
		2 "Not too hard"
		3 "Somewhat hard"
		4 "Very hard"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define LEARNNEW
		0 "IAP"
		1 "Strongly Agree"
		2 "Agree"
		3 "Disagree"
		4 "Strongly Disagree"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define PARTTEAM
		0 "IAP"
		1 "Yes, I work as part of a team"
		2 "No, I work mostly on my own"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define PROMTEOK
		0 "IAP"
		1 "Very true"
		2 "Somewhat true"
		3 "Not too true"
		4 "Not at all true"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MANVSEMP
		0 "IAP"
		1 "Very good"
		2 "Quite good"
		3 "Neither good nor bad"
		4 "Quite bad"
		5 "Very bad"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define WKPRAISE
		0 "IAP"
		1 "Yes"
		2 "Maybe"
		3 "No"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define FAIREARN
		0 "IAP"
		1 "Much less than you deserve"
		2 "Somewhat less than you deserve"
		3 "About as much as you deserve"
		4 "Somewhat more than you deserve"
		5 "Much more than you deserve"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define JOBFIND1
		0 "IAP"
		1 "Very easy to find similar job"
		2 "Somewhat easy to find similar job"
		3 "Not easy at all to find similar job"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define TRYNEWJB
		0 "IAP"
		1 "Very likely"
		2 "Somewhat likely"
		3 "Not at all likely"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define USEDUP
		0 "IAP"
		1 "Very often"
		2 "Often"
		3 "Sometimes"
		4 "Rarely"
		5 "Never"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define HURTATWK
		7 "7 OR MORE"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SPVTRFAI
		0 "IAP"
		1 "Very true"
		2 "Somewhat true"
		3 "Not too true"
		4 "Not at all true"
		8 "DON'T KNOW"
		9 "No answer";

	label define PHYEFFRT
		0 "IAP"
		1 "Very hard"
		2 "Hard"
		3 "Somewhat hard"
		4 "Fairly light"
		5 "Very light"
		8 "DON’T KNOW"
		9 "No answer";

	label define SLPPRBLM
		0 "IAP"
		1 "Often"
		2 "Sometimes"
		3 "Rarely"
		4 "Never"
		8 "DON’T KNOW"
		9 "No answer";

	label define SATJOB1
		0 "IAP"
		1 "Very satisfied"
		2 "Somewhat satisfied"
		3 "Not too satisfied"
		4 "Not at all satisfied"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define KNOWSCHD
		0 "IAP"
		1 "One week or less"
		2 "Between 1 and 2 weeks"
		3 "Between 3 and 4 weeks"
		4 "4 weeks or more"
		8 "Don't know"
		9 "No answer";

	label define WEIGHT
		0 "IAP"
		998 "Don't know"
		999 "No answer";

	label define HEIGHT
		0 "IAP"
		98 "Don't know"
		99 "No answer";

	label define WORKFOR
		0 "IAP"
		1 "Private company"
		2 "Non-profit organization"
		3 "Government or government agency"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define WORKFOR1
		0 "IAP"
		1 "For-profit company"
		2 "Non-profit or not-for-profit organization"
		3 "Government or government agency"
		8 "DON'T KNOW"
		9 "No answer";

	label define OWNSTOCK
		0 "IAP"
		1 "Yes"
		2 "No, I work for a company that does not have stock"
		3 "No, my company has stock but I do not own any"
		4 "No, I do not own and do not know if my company has stock"
		5 "I do not know if I own stock in my company"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define STOCKVAL
		9999995 "OTHER"
		9999998 "DONT KNOW"
		9999999 "NO ANSWER";

	label define EXTRAYR
		0 "IAP"
		9998 "DONT KNOW"
		9999 "NO ANSWER";

	label define SEECOWRK
		0 "Not at all easy to see"
		10 "Very easy to see"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define COWRKHRD
		0 "Not at all hard"
		10 "Very hard"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define TALKEMP
		0 "IAP"
		1 "Not at all likely"
		2 "Not very likely"
		3 "Somewhat likely"
		4 "Very likely"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define TALKSUP
		0 "I do not have a supervisor or manager"
		1 "Not at all likely"
		2 "Not very likely"
		3 "Somewhat likely"
		4 "Very likely"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define LASTWKMO
		0 "IAP"
		1 "JANUARY"
		2 "FEBRUARY"
		3 "MARCH"
		4 "APRIL"
		5 "MAY"
		6 "JUNE"
		7 "JULY"
		8 "AUGUST"
		9 "SEPTEMBER"
		10 "OCTOBER"
		11 "NOVEMBER"
		12 "DECEMBER"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define EMPATHY1
		0 "IAP"
		1 "Does not describe very well"
		5 "Describes very well"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define GIVBLOOD
		0 "IAP"
		1 "More than once a week"
		2 "Once a week"
		3 "Once a month"
		4 "At least 2 or 3 times in the past year"
		5 "Once in the past year"
		6 "Not at all in the past year"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SELFLESS
		0 "IAP"
		1 "Many times a day"
		2 "Every day"
		3 "Most days"
		4 "Some days"
		5 "Once in a while"
		6 "Never or almost never"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define VALGIVEN
		999998 "DK"
		999999 "NA";

	label define FININD
		0 "IAP"
		1 "Extremely important"
		2 "Quite important"
		3 "Somewhat important"
		4 "Not too important"
		5 "Not at all important"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define CHLDPRB
		0 "IAP"
		1 "ADHD or ADD"
		2 "Depression"
		3 "Normal"
		4 "Asthma"
		5 "Developmental Puberty"
		6 "Illicit drugs"
		7 "ADHD Symptoms"
		8 "Psychiatric Personality Problems"
		9 "Medical Problems Symptoms"
		10 "Environment Social"
		11 "Other characteristic miscellaneous"
		97 " "
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define CHLDPROB
		0 "IAP"
		1 "Very serious"
		2 "Somewhat serious"
		3 "Not very serious"
		4 "Not at all serious"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define CHLDHLP
		0 "IAP"
		10 "Nothing"
		20 "Medical General"
		21 "Doctor"
		22 "Specialist"
		30 "Mental Health General"
		31 "Psychiatrist"
		32 "Social Worker"
		33 "Counselor Therapist"
		34 "Psychologist"
		40 "Family Friends General"
		41 "Negative blaming parenting"
		42 "Positive parenting"
		50 "Assistance from school General"
		51 "Involve teacher"
		52 "Involve school counselor"
		60 "Religion"
		80 "Social extracurricular activity"
		90 "Other help Miscellaneous"
		97 "DK REF"
		99 "NO ANSWER";

	label define BADCHAR
		0 "IAP"
		1 "Very Likely"
		2 "Somewhat Likely"
		3 "Not Very Likely"
		4 "Not at all Likely"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NEXTDOOR
		0 "IAP"
		1 "Definitely Willing"
		2 "Probably Willing"
		3 "Probably Unwilling"
		4 "Definitely Unwilling"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define GRWINGUP
		0 "IAP"
		1 "Very Likely"
		2 "Somewhat Likely"
		3 "Not very Likely"
		4 "Not Likely at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define OUTSIDER
		0 "IAP"
		1 "Strongly Agree"
		2 "Agree Somewhat"
		3 "Disagree Somewhat"
		4 "Strongly Disagree"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define ADHDKNOW
		0 "IAP"
		1 "Never heard of it"
		2 "Not sure/DONT KNOW"
		3 "No answer"
		4 "OTHER"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define ADHDKNW
		0 "IAP"
		1 "Nothing Don t know"
		2 "Had herad of it Unspecified"
		4 "Medication Ritalin"
		5 "Chemical Biological cause"
		6 "Environment Social Cause"
		7 "Describing symptoms"
		8 "Other"
		30 "Someone else I know has it"
		31 "My child has it"
		32 "I have(had) it"
		81 "Diet based too much sugar"
		82 "Anti-ADHD"
		99 "NO ANSWER";

	label define MNTLREL
		0 "IAP"
		1 "became stronger"
		2 "was unchanged"
		3 "became worse"
		4 "ended as a result of the problem"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SOLVEOWN
		0 "IAP"
		1 "On own"
		2 "Get advice"
		3 "Both(on own and get advice) depending on problem"
		4 "Religious"
		5 "Research the Problem"
		6 "Talk to a doctor other professional"
		7 "Talk with older people"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define DOC15A
		0 "IAP"
		1 "strongly agree"
		2 "agree somewhat"
		3 "neither agree nor disagree"
		4 "disgree somewhat"
		5 "strongly disagree"
		8 "dont know"
		9 "no answer";

	label define CANINF1
		0 "NO"
		1 "YES"
		2 "Yes, at least one URL is not a .com"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define CANINF14
		0 "NO SPECIFIC SEARCH ENGINE MENTIONED"
		1 "YAHOO"
		2 "AOL"
		3 "CNN"
		4 "MSN"
		5 "EXCITE"
		6 "GOOGLE"
		7 "WEBFERRET"
		8 "LYCOS"
		9 "ALTAVISTA"
		10 "USATODAY"
		11 "COPERNIC"
		12 "ASKJEEVES"
		13 "PEOPLEFIND.COM"
		14 "ABC"
		15 "MSNBC"
		16 "INFOSEEK GO"
		17 "DOGPILE"
		18 "SNAP"
		19 "METACRAWLER"
		20 "WEBCRAWLER"
		21 "NETSCAPE"
		22 "IWON"
		23 "POLITICS.COM"
		24 "HOMP PAGE SEARCH ENGINE"
		25 "NBC"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define DIFSTAND
		0 "IAP"
		1 "OFTEN"
		2 "SOMETIMES"
		3 "RARELY"
		4 "NEVER"
		8 "DONT KNOW"
		9 "NA";

	label define RELIEDON
		0 "IAP"
		1 "VERY TRUE"
		2 "SOMEWHAT TRUE"
		3 "NOT TOO TRUE"
		4 "NOT AT ALL TRUE"
		8 "DONT KNOW"
		9 "NA";

	label define IGNORWK
		0 "IAP"
		1 "Often"
		2 "Sometimes"
		3 "Rarely"
		4 "Never"
		8 "DON'T KNOW"
		9 "No answer";

	label define WKBHVRS
		0 "IAP"
		1 "A co-worker"
		2 "Your supervisor or boss"
		3 "A customer/client/patient"
		8 "DON'T KNOW"
		9 "No answer";

	label define WKRSPNS
		0 "IAP"
		1 "Did nothing (ignored it)"
		2 "Talked to co-workers or other people at work"
		3 "Talked to family or friends"
		4 "Reported the incident to management or those higher up"
		5 "Reported the incident to the union"
		6 "Confronted the person (s) engaging in the behaviors"
		7 "Filed a formal complaint or grievance about the behavior or experiences"
		8 "Did not know what to do"
		98 "DON'T KNOW"
		99 "No answer";

	label define NATBORN
		0 "IAP"
		1 "Mexico"
		2 "Canada"
		3 "China"
		4 "Colombia"
		5 "Cuba"
		6 "Germany"
		7 "Guatemala"
		8 "Haiti"
		9 "Honduras"
		10 "India"
		11 "Jamaica"
		12 "Korea"
		13 "Philippines"
		14 "Poland"
		15 "OTHER"
		16 "Trinidad"
		17 "Antigua"
		18 "Pakistan"
		19 "Belize"
		20 "Guyana"
		21 "Egypt"
		22 "Moldovia"
		23 "Brazil"
		24 "Portugal"
		25 "Panama"
		26 "Iran"
		27 "Ghana"
		28 "Bangladesh"
		29 "Puerto Rico"
		30 "Turkey"
		31 "Italy"
		32 "El Salvidor"
		33 "Greece"
		34 "Ecuador"
		35 "England"
		36 "Thailand"
		37 "Peru"
		38 "Australia"
		39 "Israel"
		40 "Netherlands"
		41 "Macedonia"
		42 "France"
		43 "Argentina"
		44 "Lebanon"
		45 "Russia"
		46 "Cambodia"
		47 "Venezuela"
		48 "Iraq"
		49 "ROMANIA"
		50 "Czech Republic"
		51 "Nicaragua"
		52 "Arabic"
		53 "Gambia"
		54 "West Africa"
		55 "Barbados"
		56 "South Africa"
		57 "Ukraine"
		58 "Hungary"
		59 "Eritrea"
		60 "Ireland"
		61 "Laos"
		62 "Vietnam"
		63 "Senegal"
		64 "Sudan"
		65 "Nigeria"
		66 "Bosnia"
		67 "Uruguay"
		68 "Malaysia"
		69 "Armenia"
		70 "Congo"
		71 "Japan"
		72 "Dutch East Indies"
		73 "Indonesia"
		74 "Africa"
		75 "JORDAN"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define BORNHOME
		0 "IAP"
		1 "BOX A"
		2 "BOX B"
		3 "BOX C"
		4 "OTHER"
		8 "DONT KNOW"
		9 "NA";

	label define RUNDRSTD
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "OTHER"
		8 "DONT KNOW"
		9 "NA";

	label define ROBJECT
		0 "IAP"
		1 "YES, OBJECTED VERBALLY"
		2 "YES, DELAYED, KEPT SILENT FOR A WHILE"
		3 "NO"
		4 "OTHER"
		8 "DONT KNOW"
		9 "NA";

	label define GENENVO1
		0 "IAP"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define OWNDOING
		0 "IAP"
		1 "I HAVE LITTLE INFLUENCE OVER THINGS THAT HAPPENS TO ME"
		2 "WHAT HAPPENS TO ME IS LARGELY MY OWN DOING"
		8 "DONT KNOW"
		9 "REFUSED";

	label define GENEEXPS
		0 "IAP"
		1 "GENES PLAY MAJOR ROLE IN DETERMINING PERSONALITY"
		2 "IT IS EXPERIENCE THAT DETERMINE PERSONALITY"
		8 "DONT KNOW"
		9 "REFUSED";

	label define DEPNDABL
		0 "IAP"
		1 "a very good description"
		2 "a good description"
		3 "a fair description"
		4 "not a very good description"
		5 "not a good description at all"
		8 "DONT KNOW"
		9 "REFUSED";

	label define INTRWGHT
		0 "IAP"
		1 "BELOW AVERAGE"
		2 "AVERAGE"
		3 "SOMEWHAT ABOVE AVERAGE"
		4 "CONSIDERABLY ABOVE AVERAGE"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define AGAPE1
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE SOMEWHAT"
		3 "NEITHER AGREE NOR DISAGREE"
		4 "DISAGREE SOMEWHAT"
		5 "DISAGREE STRONGLY"
		8 "DONT KNOW"
		9 "NA";

	label define HGUNLAW
		0 "IAP"
		1 "AGREE"
		2 "DISAGREE"
		8 "DONT KNOW"
		9 "NA";

	label define HGUNCRIM
		0 "IAP"
		1 "MORE RESTRICTION WOULD DECREASE CRIME"
		2 "MORE RESTRICTION WOULD INCREASE CRIME"
		3 "UNSURE"
		8 "DONT KNOW"
		9 "NA";

	label define CRIMUP
		0 "IAP"
		1 "WOULD CHANGE MIND AND OPPOSE MORE RESTRICTIONS"
		2 "WOULD STILL SUPPORT MORE RESTRICTIONS"
		8 "DONT KNOW"
		9 "NA";

	label define CRIMDOWN
		0 "IAP"
		1 "WOULD CHANGE MIND AND SUPPORT MORE RESTRICTIONS"
		2 "WOULD STILL OPPOSE MORE RESTRICTIONS"
		8 "DONT KNOW"
		9 "NA";

	label define NUMRELEX
		7 "Seven or more"
		8 "1 or more experience, DK"
		9 "No Answer";

	label define NUMRBORN
		0 "IAP"
		8 "1 or more experience, DK"
		9 "NO ANSWER";

	label define ENTITY
		0 "IAP"
		96 "NO MENTION"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define EXPCHNG1
		0 "IAP"
		96 "NO MENTION"
		97 "NOTHING SPECIAL HAPPENED"
		98 "DONT KNOW"
		99 "NO ASNWER";

	label define RELALT1
		0 "IAP"
		1 "NOT AT ALL"
		7 "A GREAT DEAL"
		8 "DONT KNOW"
		9 "REFUSED";

	label define GODCLOSE
		0 "IAP"
		1 "NOT AT ALL CLOSE"
		2 "SOMEWHAT CLOSE"
		3 "VERY CLOSE"
		4 "AS CLOSE AS POSSIBLE"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define DRINKYR
		0 "IAP"
		1 "Never in those 12 months"
		2 "1 to 3 times in 12 months"
		3 "4 to 7 times in 12 months"
		4 "8 to 11 times in 12 months"
		5 "1 to 3 times a month"
		6 "Once or twice a week"
		7 "3 to 4 times a week"
		8 "5 times a week or more"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define DRINKMAX
		0 "DID NOT DRINK AT ALL IN THE LAST 12 MONTHS"
		1 "at least a sip, but less than one full drink"
		2 "at least 1, but less than 3 drinks"
		3 "at least 3, but less than 5 drinks"
		4 "at least 5, but less than 8 drinks"
		5 "at least 8, but less than 12 drinks"
		6 "at least 12, but less than 20 drinks"
		7 "20 or more drinks in a single day"
		98 "DONT KNOW"
		99 "NA";

	label define DRINK12
		0 "IAP"
		1 "Never in the last 12 months"
		2 "Once in the last 12 months"
		3 "Twice in the last 12 months"
		4 "Three to six times in the last 12 months"
		5 "Seven to eleven times in the last 12 months"
		6 "One to three times a month"
		7 "Once or twice a week"
		8 "Three or four times a week"
		9 "Every day or nearly every day"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define NUMFRAT
		7 "SEVEN OR MORE"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define FRSTMET1
		0 "IAP"
		1 "YES, ONE OF THESE GROUPS"
		2 "NO, SOMEWHERE ELSE"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NEWSFROM
		0 "IAP"
		1 "Newspapers"
		2 "Magazines"
		3 "The Internet"
		4 "Books Other printed material"
		5 "TV"
		6 "Radio"
		7 "Government agencies"
		8 "Family"
		9 "Friends Colleagues"
		10 "Other"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define SEEKSCI
		0 "IAP"
		1 "Newspapers"
		2 "Magazines"
		3 "The Internet"
		4 "Books Other printed material"
		5 "TV"
		6 "Radio"
		7 "Government agencies"
		8 "Family"
		9 "Friends Colleagues"
		10 "Library"
		11 "Other"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define ASTROSCI
		0 "IAP"
		1 "Very scientific"
		2 "Sort of scientific"
		3 "Not at all scientific"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SCIBNFTS
		0 "IAP"
		1 "Benefits greater"
		2 "ABOUT EQUAL IF VOLUNTEERED"
		3 "Harmful results greater"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define BALPOS
		0 "IAP"
		1 "Strongly in favor"
		2 "Slightly in favor"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SCISTUDY
		0 "IAP"
		1 "Clear understanding"
		2 "General sense"
		3 "Little understanding"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SCITEXT
		0 "IAP"
		1 "Formulation of Theories Test Hypotheses"
		2 "Do experiments Control Group"
		3 "Rigorous Systematic Comparison"
		4 "Measurement"
		5 "Classification"
		6 "Redundancies Incorrect"
		8 "Don t Know Uncodeable"
		9 "No Answer Blank";

	label define EXPDESGN
		0 "IAP"
		1 "All 1000 get the drug"
		2 "500 get the drug 500 dont"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define EXPTEXT
		0 "IAP"
		1 "Correct Control Group"
		2 "Correct Vague Reason"
		3 "Correct Wrong Reason"
		4 "Correct Don t Know"
		5 "Wrong Reservations about Control Group"
		6 "Wrong Reservations about Sample"
		7 "Wrong Other Reason"
		8 "Wrong Don t Know"
		9 "No Answer to Closed ended Question"
		98 "Uncodeable"
		99 "Blank";

	label define HOTCORE
		0 "IAP"
		1 "True"
		2 "False"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define EARTHSUN
		0 "IAP"
		1 "Earth around sun"
		2 "Sun around earth"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SOLARREV
		0 "IAP"
		1 "One day"
		2 "One month"
		3 "One year"
		4 "OTHER TIME PERIOD IF VOLUNTEERED"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define TOMATOES
		0 "IAP"
		1 "True"
		2 "False"
		8 "DON'T KNOW"
		9 "No answer";

	label define COLDEG1
		0 "IAP"
		1 "ASSOCIATE'S"
		2 "BACHELOR'S"
		3 "MASTER'S"
		4 "MBA"
		5 "LAW"
		6 "PHD"
		7 "MD"
		8 "OTHER"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define MAJORCOL
		0 "IAP"
		1 "ACCOUNTING/BOOKKEEPING"
		2 "ADVERTISING"
		3 "AGRICULTURE"
		4 "ALLIED HEALTH"
		5 "ANTHROPOLGY"
		6 "ARCHITECTURE"
		7 "ART"
		8 "BIOLOGY"
		9 "BUSINESS ADMINISTRATION"
		11 "CHEMISTRY"
		12 "COMMUNICATIONS/SPEECH"
		13 "COMM. DISORDERS"
		14 "COMPUTER SCIENCE"
		15 "DENTISTRY"
		16 "EDUCATION"
		17 "ECONOMICS"
		18 "ENGINEERING"
		19 "ENGLISH"
		20 "FINANCE"
		21 "FOREIGN LANGUAGE"
		22 "FORESTRY"
		23 "GEOGRAPHY"
		24 "GEOLOGY"
		25 "HISTORY"
		26 "HOME ECONOMICS"
		27 "INDUSTRY & TECHN"
		28 "JOURNALISM"
		29 "LAW"
		30 "LAW ENFORCEMENT"
		31 "LIBRARY SCIENCE"
		32 "MARKETING"
		33 "MATHMATICS"
		34 "MEDICINE"
		35 "MUSIC"
		36 "NURSING"
		37 "OPTOMETRY"
		38 "PHARMACY"
		39 "PHILOSOPHY"
		40 "PHYSICAL EDUCATION"
		41 "PHYSICS"
		42 "PSYCHOLOGY"
		43 "POLITICAL SCIENCE"
		44 "SOCOLOGY"
		45 "SPECIAL EDUCATION"
		46 "THEATER ARTS"
		47 "THEOLOGY"
		48 "VETERINARY MEDICINE"
		49 "LIBERAL ARTS"
		50 "OTHER"
		51 "GENERAL SCIENCES"
		52 "SOCIAL WORK"
		53 "GENERAL SUTDIES"
		54 "OTHER VOCATIONAL"
		55 "HEALTH"
		56 "Industrial relations"
		57 "Child development"
		58 "Food science/nutrition/culinary arts"
		59 "Environment science/studies"
		60 "Social sciences"
		61 "Human services"
		62 "Visual arts/graphic design"
		63 "Fine arts"
		64 "Humanities"
		65 "Ethnic studies"
		66 "Educational administration"
		67 "TV, film"
		68 "Aviation, aeronatics"
		69 "Statistics"
		70 "Criminology/Criminal Justice"
		71 "Administrative Science/Public Administration"
		72 "Electronics"
		73 "Urban and Regional Planning"
		74 "Mechanics/Machine Trade"
		75 "Dance"
		76 "Gerontology"
		77 "Public Relations"
		78 "Textiles/Cloth"
		79 "Parks and Recreation"
		80 "Information technology"
		98 "DK/UNCODED"
		99 "No answer";

	label define HSMATH
		0 "NO MATH IN HS DIDN'T GO TO HS"
		1 "GENERAL MATH, BUSINESS, OR VOCATIONAL MATH"
		2 "PRE-ALGEBRA"
		3 "ONE YEAR OF ALGEBRA"
		4 "TWO YEARS OF ALGEBRA"
		5 "GEOMETRY PLANE OR SOLID OR BOTH"
		6 "TRIGONOMETRY LINEAR PROGRAMMING ANALYSIS"
		7 "PRE-CALCULUS"
		8 "CALCULUS"
		9 "STATISTICS PROBABILITY"
		10 "OTHER"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define GWSCI
		0 "IAP"
		1 "Very well"
		5 "Not at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SCIAGRGW
		0 "IAP"
		1 "Near Complete agreement"
		5 "No agreement at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SCIINFGW
		0 "IAP"
		1 "A great deal of influence"
		2 "A fair amount"
		3 "A little influence"
		4 "None at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SCIBSTGW
		0 "IAP"
		1 "What is best for the country"
		5 "Own narrow interests"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define GASREGS
		0 "IAP"
		1 "Strongly favor"
		2 "Favor"
		3 "Neither favor nor oppose"
		4 "Oppose"
		5 "Strongly oppose"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SCRESRCH
		0 "IAP"
		1 "Definitely should fund such research"
		2 "Probably should fund such research"
		3 "Probably should not fund such research"
		4 "Definitely should not fund such research"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define EATGM
		0 "IAP"
		1 "Dont care whether or not food has been genetically modified"
		2 "Willing to eat but would prefer unmodified foods"
		3 "Will not eat genetically modified food"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SCIIMP1
		0 "IAP"
		1 "Very important"
		2 "Pretty important"
		3 "Not too important"
		4 "Not important at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SOCSCI
		0 "IAP"
		1 "Very scientific"
		2 "Pretty scientific"
		3 "Not too scientific"
		4 "Not scientific at all"
		5 "HAVENT HEARD OF IT VOLUNTEERED"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define KNWFORGN
		0 "IAP"
		1 "Very informed"
		2 "Somewhat informed"
		3 "Neither informed nor uninformed"
		4 "Somewhat uninformed"
		5 "Very uninformed"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define TVBEARS
		0 "IAP"
		1 "Very likely"
		2 "Somewhat likely"
		3 "Somewhat unlikely"
		4 "Very unlikely"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define ICECAPS
		0 "IAP"
		1 "Larger"
		2 "Smaller"
		3 "STAYED THE SAME:VOLUNTEERED"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define COMORSCI
		0 "IAP"
		1 "Strongly support reserving Antarctica"
		2 "Somewhat support reserving Antarctica"
		3 "Dont lean one way or the other on this issue"
		4 "Somewhat support opening Antarctica"
		5 "Strongly support opening Antarctica"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define EXTINCT
		0 "IAP"
		1 "A great deal"
		2 "Some"
		3 "A little"
		4 "Not at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define PENGUINS
		0 "IAP"
		1 "A great deal"
		2 "Some"
		3 "A little"
		4 "Not at all"
		8 "DON'T KNOW"
		9 "No answer";

	label define CAREMOST
		0 "IAP"
		1 "The extinction of the polar bears"
		2 "The rise in sea level"
		3 "The threat to the Arctic seals"
		4 "The threat to the Inuit way of life"
		5 "The melting of the northern ice cap"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NANOTECH
		0 "IAP"
		1 "A lot"
		2 "Some"
		3 "Just a little"
		4 "Nothing at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NANOWILL
		0 "IAP"
		1 "Benefits greater"
		2 "ABOUT EQUAL:IF VOLUNTEERED"
		3 "Harmful results greater"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NANOBEN
		0 "IAP"
		1 "Strongly in favor"
		2 "Slightly in favor"
		8 "DONT KNOW"
		9 "NA";

	label define SCIMODE
		0 "IAP"
		1 "Assigned and done as Interviewed"
		2 "Assigned and done as SAQ"
		3 "Assigned as SAQ, done in interview due to R's request/inability to do as SAQ"
		4 "Assigned as SAQ, done as interview on phone";

	label define INTINTL
		0 "IAP"
		1 "Very interested"
		2 "Moderately interested"
		3 "Not at all interested"
		8 "DONT KNOW"
		9 "NA";

	label define SCIINTRO
		0 "IAP"
		1 "Intro Version 1"
		2 "Intro Version 2";

	label define VISART
		998 "DONT KNOW"
		999 "NA";

	label define MABOYGRL
		0 "IAP"
		1 "TRUE"
		2 "FALSE"
		8 "DONT KNOW"
		9 "NA";

	label define H2OLIFE
		0 "IAP"
		1 "It is odorless"
		2 "It does not conduct electricity"
		3 "It is tasteless"
		4 "It is liquid at most temperatures on Earth"
		8 "DONT KNOW"
		9 "NA";

	label define ANHEAT
		0 "IAP"
		1 "Long ears and a long body"
		2 "Small ears and a short tail"
		3 "A long nose and a long tail"
		4 "A short nose and large ears"
		5 "A long tail and a short nose"
		8 "DONT KNOW"
		9 "NA";

	label define LFTPLANE
		0 "IAP"
		1 "Air pressure beneath the wing is greater than that above the wing"
		2 "Pressure within the airplane is greater than that of the outside"
		3 "Engine power is greater than that of friction"
		4 "The plane's wing is lighter than air"
		8 "DONT KNOW"
		9 "NA";

	label define STORMTXT
		0 "IAP"
		1 "COMPLETE"
		2 "PARTIAL"
		3 "UNSATISFACTORY/INCORRECT"
		8 "DONT KNOW"
		9 "NA";

	label define GOLDFISH
		0 "IAP"
		1 "Experiment A"
		2 "Experiment B"
		3 "Experiment C"
		4 "Experiment D"
		8 "DONT KNOW"
		9 "NA";

	label define SALTH2O
		0 "IAP"
		1 "Yes, because there is plenty of ocean water"
		2 "Yes, because ocean water has many natural fertilizers"
		3 "No, because ocean water is too salty for plants grown on land"
		4 "No, because ocean water is much more polluted than rainwater"
		8 "DONT KNOW"
		9 "NA";

	label define EROSION
		0 "IAP"
		1 "The wind in the desert blows sand against a rock"
		2 "A glacier picks up boulders as it moves"
		3 "A flood washes over a riverbank, and the water carries small soil particles downstream"
		4 "An icy winter causes the pavement in a road to crack"
		8 "DONT KNOW"
		9 "NA";

	label define GENES
		0 "IAP"
		1 "Sperm only"
		2 "Egg only"
		3 "Sperm and egg"
		4 "Testes"
		8 "DONT KNOW"
		9 "NA";

	label define GILLS
		0 "IAP"
		1 "They take in water and break it down into hydrogen and oxygen"
		2 "Using their gills, they take in oxygen that is dissolved in water"
		3 "They get their oxygen from the food they eat"
		4 "They come to the surface every few minutes to breathe air into their lungs"
		8 "DONT KNOW"
		9 "NA";

	label define UPBREATH
		0 "IAP"
		1 "A slower pulse rate"
		2 "A greater gravitational force on the body"
		3 "A lower percent of oxygen in the blood"
		4 "A faster heartbeat"
		5 "A slower circulation of blood"
		8 "DONT KNOW"
		9 "NA";

	label define DAYNIGHT
		0 "IAP"
		1 "2 A.M. to 4 A.M."
		2 "8 A.M. to 10 A.M."
		3 "12 P.M. to 2 P.M."
		4 "2 P.M. to 4 P.M."
		5 "8 P.M. to 10 P.M."
		8 "DONT KNOW"
		9 "NA";

	label define WEIGHING
		0 "IAP"
		1 "Ask the teacher to weigh the leaf"
		2 "Report the first measurement"
		3 "Average all of the weights that were recorded"
		4 "Average the highest and lowest weights recorded"
		5 "Discard the lowest five weights"
		8 "DONT KNOW"
		9 "NA";

	label define SEESAND
		0 "IAP"
		1 "Sunlight. Sand and water"
		2 "Dark cupboard. Sand, soil, and water"
		3 "Dark cupboard. Soil and water"
		4 "Sunlight. Sand and soil"
		5 "Sunlight. Soil and water"
		8 "DONT KNOW"
		9 "NA";

	label define FISHEXP1
		0 "IAP"
		1 "If the number of fish in the fish bowl affects the behavior of the fish"
		2 "If the temperature of the fish bowl affects the behavior of the fish"
		3 "If the temperature and the amount of light affect the behavior of the fish"
		4 "If the number of fish, the temperature, and the amount of light affect the behavior of the fish"
		8 "DONT KNOW"
		9 "NA";

	label define FISHEXP2
		0 "IAP"
		1 "Because I already know what affects the behavior of fish"
		2 "Because that is what is allowed to change in this experiment"
		3 "Because that is what stays the same in this experiment"
		4 "Because that is what the scientist decided to include in this experiment"
		8 "DONT KNOW"
		9 "NA";

	label define MOREMPG
		0 "IAP"
		1 "Strongly favor"
		2 "Favor"
		3 "Neither favor nor oppose"
		4 "Oppose"
		5 "Strongly oppose"
		8 "DON'T KNOW"
		9 "No answer";

	label define ENGNUKE
		0 "IAP"
		1 "Very well"
		5 "Not at all"
		8 "DON'T KNOW"
		9 "No answer";

	label define ENGAGRNK
		0 "IAP"
		1 "Near complete agreement"
		5 "No agreement at all"
		8 "DON'T KNOW"
		9 "No answer";

	label define ENHINFNK
		0 "IAP"
		1 "A great deal of influence"
		2 "A fair amount"
		3 "A little influence"
		4 "None at all"
		8 "DON'T KNOW"
		9 "No answer";

	label define ENGBSTNK
		0 "IAP"
		1 "What is best for the country"
		5 "Own narrow interests"
		8 "DON'T KNOW"
		9 "No answer";

	label define NUKEELEC
		0 "IAP"
		1 "Strongly favor"
		2 "Favor"
		3 "Oppose"
		4 "Strongly oppose"
		8 "DON'T KNOW"
		9 "No answer";

	label define SCINEWS1
		0 "IAP"
		1 "Printed newspapers"
		2 "Online newspapers"
		3 "OTHER SPECIFY"
		8 "DON'T KNOW"
		9 "No answer";

	label define SCINEWS2
		0 "IAP"
		1 "Printed magazines"
		2 "Online magazines"
		3 "OTHER SPECIFY"
		8 "DON'T KNOW"
		9 "No answer";

	label define SCINEWS3
		0 "IAP"
		1 "Online newspapers"
		2 "Online magazines"
		3 "Science site"
		4 "News site"
		5 "Electronic books & reports"
		6 "Wikipedia"
		7 "Government site"
		8 "Social media (Facebook, Twitter, YouTube)"
		10 "Other"
		11 "Search engine (Google, Bing)"
		98 "DON'T KNOW"
		99 "No answer";

	label define NEWSFRMY
		0 "IAP"
		1 "Print newspapers"
		2 "Online newspapers"
		3 "Print magazines"
		4 "Online magazines"
		5 "Other places on the Internet"
		6 "Books/Other printed material"
		7 "TV"
		8 "Radio"
		9 "Family"
		10 "Friends/Colleagues"
		11 "Other"
		98 "DON’T KNOW"
		99 "No answer";

	label define SCIINFGO
		0 "IAP"
		1 "Search engine (Google, Yahoo, Bing, etc)"
		2 "Wikipedia"
		3 "Science site"
		4 "News site"
		5 "Other specific site"
		8 "DK"
		9 "NA";

	label define SCIENTDA
		0 "IAP"
		1 "Happy"
		2 "Not care"
		3 "Unhappy"
		8 "DON'T KNOW"
		9 "No answer";

	label define SCIENTDO
		0 "IAP"
		1 "Excellent"
		2 "Good"
		3 "Fair"
		4 "Poor"
		5 "Very Poor"
		8 "DON'T KNOW"
		9 "No answer";

	label define SCIENTAL
		0 "IAP"
		1 "Strongly agree"
		2 "Agree"
		3 "Disagree"
		4 "Strongly disagree"
		8 "DON’T KNOW"
		9 "No answer";

	label define FARMING
		0 "IAP"
		1 "Very scientific"
		2 "Pretty scientific"
		3 "Not too scientific"
		4 "Not scientific at all"
		5 "HAVEN'T HEARD OF IT (VOLUNTEERED)"
		8 "DON'T KNOW"
		9 "No answer";

	label define BETTRLFE
		0 "IAP"
		1 "Strongly agree"
		2 "Agree"
		3 "Disagree"
		4 "Strongly disagree"
		8 "Don't know"
		9 "No answer";

	label define BUYVALUE
		998 "DONT KNOW"
		999 "NO ANSWER";

	label define COMPWAGE
		0 "IAP"
		1 "1 Lower"
		5 "5 Higher"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NUMORG
		0 "IAP"
		9981 "1-9 in range"
		9982 "10-49 in range"
		9983 "50-99 in range"
		9984 "100-499 in range"
		9985 "500-999 in range"
		9986 "1000-1999 in range"
		9987 "2000-2999 in range"
		9988 "3000-3999 in range"
		9989 "4000-4999 in range"
		9990 "5000-10000 in range"
		9991 "10000-50000 in range"
		9992 "50000-100000 in range"
		9993 "Above 100000 in range"
		9997 "10000 or more in value"
		9998 "DONT KNOW"
		9999 "NO ANSWER";

	label define WEALTH
		0 "IAP"
		1 "Less than $5,000"
		2 "$5,000 to $20,000"
		3 "$20,000 to $40,000"
		4 "$40,000 to $75,000"
		5 "$75,000 to $100,000"
		6 "$100,000 to $150,000"
		7 "$150,000 to $250,000"
		8 "$250,000 to $500,000"
		9 "$500,000 to $1 million"
		10 "$1 million to $2 million"
		11 "$2 million to $3 million"
		12 "$3 million to $4 million"
		13 "$4 million to $5 million"
		14 "$5 million to $10 million"
		15 "Above $10 million"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define MHOTHYOU
		0 "IAP"
		1 "A great deal"
		2 "Quite a bit"
		3 "A little"
		4 "Not at all"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHOTHREL
		0 "IAP"
		1 "Became stronger"
		2 "Became worse"
		3 "Was unchanged"
		4 "Ended as a result of the problem"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SEEMHPUB
		0 "IAP"
		1 "Often"
		2 "Sometimes"
		3 "Almost never"
		4 "Never"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NUMKNOWN
		0 "IAP"
		1 "SUBSET1"
		2 "SUBSET2"
		3 "SUBSET3"
		4 "SUBSET4"
		5 "SUBSET5"
		8 "Dont Know"
		9 "No Answer";

	label define ACQKEVIN
		0 "IAP"
		1 "0"
		2 "1"
		3 "2-5"
		4 "6-10"
		5 "More than 10"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define ACQWKMRK
		0 "IAP"
		1 "0"
		2 "1"
		3 "2-5"
		4 "6-10"
		5 "More than 10"
		6 "I DONT HAVE A JOB"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define ACQREPS
		0 "IAP"
		1 "Almost all"
		2 "Most"
		3 "About half"
		4 "A few"
		5 "None"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define ACQMYRAC
		0 "IAP"
		1 "Almost all the same race as you"
		2 "Mostly the same race as you"
		3 "About evenly divided"
		4 "Mostly a different race than you"
		5 "Almost all a different race than you"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define GUNSDRUG
		0 "IAP"
		1 "Tougher"
		2 "Less tough"
		3 "About as tough"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SEMIGUNS
		0 "IAP"
		1 "Sold to the general public"
		2 "Sales be limited to the military and police"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define GUNS911
		0 "IAP"
		1 "Should be stricter"
		2 "Should be less strict"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define RIFLES50
		0 "IAP"
		1 "Restricted to the police and military"
		2 "Available to civilians like other hunting rifles"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define OTHGUNS
		0 "IAP"
		1 "1 person"
		2 "2 persons"
		3 "3 persons"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define GUNSDRNK
		0 "IAP"
		1 "Favor"
		2 "Oppose"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SPNATDIS
		0 "IAP"
		1 "Spend much more"
		2 "Spend more"
		3 "Spend the same as now"
		4 "Spend less"
		5 "Spend much less"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NATDISIN
		0 "IAP"
		1 "Should"
		2 "Should not be"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NEWSPRNT
		0 "IAP"
		1 "Every day"
		2 "A few times a week"
		3 "Once a week"
		4 "Less than once a week"
		5 "Never"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define GETAHEAY
		0 "IAP"
		1 "Hard work most important"
		2 "HARD WORK, LUCK EQUALLY IMPORTANT"
		3 "Luck or help from other people most important"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define VIGVERMY
		0 "IAP"
		1 "Vignette 1"
		2 "Vignette 2"
		3 "Vignette 3"
		4 "Vignette 4"
		5 "Vignette 5"
		6 "Vignette 6"
		7 "Vignette 7"
		8 "Vignette 8"
		9 "Vignette 9"
		10 "Vignette 10"
		11 "Vignette 11"
		12 "Vignette 12"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define MHPROBLM
		0 "IAP"
		1 "Very serious"
		2 "Moderately serious"
		3 "Not very serious"
		4 "Not at all seriou"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHDECSLF
		0 "IAP"
		1 "Very able"
		2 "Moderately able"
		3 "Not very able"
		4 "Not at all able"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHOUTSDR
		0 "IAP"
		1 "Strongly agree"
		2 "Agree"
		3 "Disagree, or"
		4 "Strongly disagree?"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHHLPFAM
		0 "IAP"
		1 "Not at all Important"
		10 "Very Important"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define MHGVTJOB
		0 "IAP"
		1 "Definitely should"
		2 "Probably should"
		3 "Probably shouldnt be"
		4 "Definitely shouldnt be"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHCAUSE
		0 "IAP"
		1 "Depression"
		2 "Asthma"
		3 "Schizophrenia"
		4 "Stress"
		5 "Something else"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHCLSOTH
		0 "IAP"
		1 "Extremely close"
		2 "Very close"
		3 "Not very close"
		4 "Not at all close"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHEXPOTH
		0 "IAP"
		1 "Made you a better person"
		2 "Made you a worse person, or"
		3 "Had no effect on you as a person"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHSEEPUB
		0 "IAP"
		1 "Frequently"
		2 "Occasionally"
		3 "Rarely"
		4 "Never"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHFRIGHT
		0 "IAP"
		1 "Very frightening"
		2 "Somewhat frightening"
		3 "Not very frightening"
		4 "Not at all frightening"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MHSYMP
		0 "IAP"
		1 "No sympathy at all"
		2 "A little sympathy"
		3 "Quite a bit of sympathy"
		4 "A great deal of sympathy"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define NUMOWN
		0 "IAP"
		7 "7 or more"
		8 "DONT KNOW"
		9 "NA";

	label define BIZGROSS
		0 "IAP"
		1 "< $15,000"
		2 "$15,001-$25,000"
		3 "$25,001-$30,000"
		4 "$30,001-$35,000"
		5 "$35,001-$50,000"
		6 "$50,001-$60,000"
		7 "$60,001-$75,000"
		8 "$75,001-$100,000"
		9 "> $100,000"
		98 "DONT KNOW"
		99 "NA";

	label define WHYBIZ
		0 "IAP"
		1 "You started it because you came across an opportunity"
		2 "You started it because it was a necessity"
		3 "BOTH (VOLUNTEERED)"
		8 "DONT KNOW"
		9 "NA";

	label define SPJREL16
		0 "IAP"
		1 "Protestant"
		2 "Catholic"
		3 "Jewish"
		4 "None"
		5 "OTHER"
		6 "Buddhism"
		7 "Hinduism"
		8 "Other Eastern"
		9 "Muslim/Islam"
		10 "Orthodox-Christian"
		11 "Christian"
		12 "Native American"
		13 "Inter-/non-denominational"
		98 "DONT KNOW"
		99 "NA";

	label define SPJOTH16
		0 "IAP"
		1 "Yes"
		2 "Half/part"
		3 "No"
		8 "DONT KNOW"
		9 "NA";

	label define MAJWOTH
		0 "IAP"
		1 "Yes"
		2 "Half/part"
		3 "No"
		8 "DONT KNOW"
		9 "NA";

	label define DONE911A
		0 "No"
		1 "Yes, respondent"
		2 "Yes, someone respondent knows"
		3 "Yes, both respondent and someone respondent knows"
		8 "DONT KNOW"
		9 "NA";

	label define EFF911A
		0 "IAP"
		1 "1 Not at all effective"
		2 "2"
		3 "3"
		4 "4"
		5 "5 Extremely effective"
		8 "DONT KNOW"
		9 "NA";

	label define DONEELSE
		0 "IAP"
		1 "Research and collect more information"
		2 "Join military"
		3 "Avoid possible targets of terror"
		4 "Buy new insurance policy"
		5 "Psycho therapy"
		6 "Pray"
		7 "More vigilant to surrounding"
		8 "Join secret service"
		9 "Buy weapons"
		10 "Vigilance and new assignments because they are already in military or secrete service"
		11 "Terror-related traiing at work"
		12 "Terror-related traiing in community"
		13 "Build safe place"
		14 "Deal with government"
		15 "Talk about it with other people"
		98 "DONT KNOW"
		99 "NA";

	label define WORK3YRS
		0 "IAP"
		1 "ONE"
		2 "NUMBER GREATER THAN 1"
		3 "NONE"
		8 "DONT KNOW"
		9 "NA";

	label define PAYCHNGE
		0 "IAP"
		1 "My pay has gone up more than the cost of living"
		2 "My pay has stayed about the same as the cost of living"
		3 "My pay has not kept up with the cost of living"
		8 "DONT KNOW"
		9 "NA";

	label define PASTPAY
		0 "IAP"
		1 "Higher"
		2 "About the same"
		3 "Lower"
		4 "CURRENT EMPLOYER IS FIRST JOB"
		8 "DONT KNOW"
		9 "NA";

	label define WHYLEAVE
		0 "IAP"
		1 "Left Voluntarily"
		2 "Job was abolished"
		3 "Permanently laid off"
		8 "DONT KNOW"
		9 "NA";

	label define WHYJBCT1
		0 "IAP"
		1 "COMPANY'S SALES WERE DECLINING"
		2 "MACHINES AND COMPUTERS MADE MY JOB OBSOLETE"
		3 "JOB REQUIREMENTS CHANGED AND I WAS NOT ABLE TO DO THE JOB"
		4 "JOB MOVED TO ANOTHER LOCATION IN THE UNITED STATES"
		5 "JOB MOVED TO ANOTHER COUNTRY"
		6 "OTHER"
		7 "COMPANY SOLD"
		8 "JOB DONE"
		9 "COMPANY IN FINANCIAL PROBLEM"
		10 "END OF CONTRACT"
		11 "SEASONAL WORK"
		98 "DONT KNOW"
		99 "NA";

	label define LOSEJB12
		0 "IAP"
		1 "Very likely"
		2 "Fairly likely"
		3 "Not too likely"
		4 "Not at all likely"
		8 "DONT KNOW"
		9 "NA";

	label define FINDNWJB
		0 "IAP"
		1 "Very easy"
		2 "Somewhat easy"
		3 "Not at all easy"
		8 "DONT KNOW"
		9 "NA";

	label define MORETRDE
		0 "IAP"
		1 "Created more jobs"
		2 "About the same"
		3 "Taken them away"
		4 "NOT RELEVANT FOR MY JOB"
		8 "DONT KNOW"
		9 "NA";

	label define WOCOMPTR
		0 "IAP"
		1 "Couldn't do my job without a computer or computerized equipment"
		2 "Could do my job without a computer or computerized equipment but it would be much harder"
		3 "Doing my job without a computer or computerized equipment would be about the same as now"
		4 "Already do most of my job without a computer or computerized equipment"
		8 "DONT KNOW"
		9 "NA";

	label define MEETF2F1
		0 "IAP"
		1 "Never"
		2 "Once per year or less, or"
		3 "Several times per year"
		4 "Several times per month"
		5 "Several times per week"
		6 "Daily"
		8 "DONT KNOW"
		9 "NA";

	label define INTLCOWK
		0 "IAP"
		1 "Never"
		2 "Once per year or less"
		3 "Several times per year"
		4 "Several times per month"
		5 "Several times per week"
		6 "Daily"
		8 "DONT KNOW"
		9 "NA";

	label define INCLSTJB
		0 "IAP"
		1 "A. UNDER $1,000"
		2 "B. $1,000 to 2,999"
		3 "C. $3,000 to 3,999"
		4 "D. $4,000 to 4,999"
		5 "E. $5,000 to 5,999"
		6 "F. $6,000 to 6,999"
		7 "G. $7,000 to 7,999"
		8 "H. $8,000 to 9,999"
		9 "I. $10,000 to 12,499"
		10 "J. $12,500 to 14,999"
		11 "K. $15,000 to 17,499"
		12 "L. $17,500 to 19,999"
		13 "M. $20,000 to 22,499"
		14 "N. $22,500 to 24,999"
		15 "O. $25,000 to 29,999"
		16 "P. $30,000 to 34,999"
		17 "Q. $35,000 to 39,999"
		18 "R. $40,000 to 49,999"
		19 "S. $50,000 to 59,999"
		20 "T. $60,000 to 74,999"
		21 "U. $75,000 to $89,999"
		22 "V. $90,000 to $109,999"
		23 "W. $110,000 to $129,999"
		24 "X. $130,000 to $149,999"
		25 "Y. $150,000 or over"
		98 "DONT KNOW"
		99 "NA";

	label define BORNSP
		0 "IAP"
		1 "USA"
		2 "Antigua"
		3 "Trinidad"
		4 "Jamaica"
		5 "Pakistan"
		6 "Turkey"
		7 "Italy"
		8 "West Indies"
		9 "Colombia"
		10 "Kazakhstan"
		12 "Cuba"
		13 "India"
		14 "Germany"
		15 "Ecuador"
		16 "Mexico"
		17 "Portugal"
		18 "El Salvador"
		19 "Canada"
		20 "Guatemala"
		21 "Zimbabwe"
		23 "Taiwan"
		24 "Philippines"
		25 "Israel"
		26 "Dominican Republic"
		27 "Scotland"
		28 "Haiti"
		29 "Honduras"
		30 "Puerto Rico"
		31 "Austraila"
		32 "China"
		33 "Poland"
		34 "Lithuania"
		35 "Liberia"
		36 "Brazil"
		37 "Morocco"
		38 "Spain"
		39 "Bulgeria"
		40 "USSR"
		41 "Kuwait"
		42 "Japan"
		43 "Korea"
		44 "Vietnam"
		45 "Bermuda"
		46 "Ghana"
		47 "Panama"
		48 "France"
		49 "Romania"
		50 "South Africa"
		51 "England"
		52 "Britain"
		98 "DONT KNOW"
		99 "NA";

	label define AGECMEUS
		0 "IAP"
		96 "HAVE NOT PERMANENTLY MOVED TO US"
		98 "DONT KNOW"
		99 "NA";

	label define TYPEVISA
		0 "IAP"
		1 "H1b"
		2 "L1"
		3 "Student"
		4 "Tourist"
		5 "Other"
		8 "DONT KNOW"
		9 "NA";

	label define EMPHPLAN
		0 "IAP"
		1 "Aetna"
		2 "Anthem/Wellpoint"
		3 "Blue Cross/Blue Shield"
		4 "Blue Cross"
		5 "Blue Shield"
		6 "Cigna"
		7 "Covington"
		8 "Harvard Pilgrim"
		9 "Humana"
		10 "Kaiser Permanente"
		11 "Tufts"
		12 "United"
		13 "Wellpoint"
		14 "Oxford"
		15 "HealthNet"
		16 "United Health Care"
		17 "Health Partners"
		18 "Great West"
		19 "Unicare"
		20 "Medcost"
		21 "Pacific Care"
		22 "Fallon HMO"
		23 "Arise"
		24 "Medical Mutual of Ohio"
		25 "Florida Health Care"
		26 "Hawaiian Medical System Association"
		27 "Coventry"
		28 "Winhealth"
		29 "Health Choice"
		30 "Preferred Care"
		31 "MVP"
		32 "First Health"
		33 "UMR"
		34 "Affinity Health Care"
		35 "Priority Health"
		36 "GHI"
		87 "Christian Brothers Employee Benefit Trust"
		89 "Other"
		98 "DONT KNOW"
		99 "NA";

	label define OTHPLAN
		0 "IAP"
		1 "YES, ANOTHER NAME"
		2 "NO OTHER NAME"
		8 "DONT KNOW"
		9 "NA";

	label define SEXSEX18
		0 "IAP"
		1 "Only men"
		2 "Some women, but mostly men"
		3 "Equally men and women"
		4 "Some men, but mostly women"
		5 "Only Women"
		6 "I have not had any sex partners"
		8 "DONT KNOW"
		9 "NA";

	label define TOLDSMSX
		0 "IAP"
		1 "Under age 14"
		2 "Age 14-18"
		3 "Age 18-25"
		4 "Age 26-35"
		5 "Age 36-45"
		6 "Age 46-55"
		7 "Age 56-65"
		8 "Age 66 or older"
		9 "I have never told anyone"
		98 "DONT KNOW"
		99 "NA";

	label define ATTRACTD
		0 "IAP"
		1 "Under age 14"
		2 "Age 14-18"
		3 "Age 18-25"
		4 "Age 26-35"
		5 "Age 36-45"
		6 "Age 46-55"
		7 "Age 56-65"
		8 "Age 66 or older"
		9 "I have never told anyone I have never been sexually attracted to someone of the same sex"
		98 "DONT KNOW"
		99 "NA";

	label define RELGENDR
		0 "IAP"
		1 "I am in a steady relationship with a woman and we live together"
		2 "I am in a steady relationship with a man and we live together"
		3 "I am in a steady relationship with a woman and we do not live together"
		4 "I am in a steady relationship with a man and we do not live together"
		5 "I am not in a steady relationship right now"
		8 "DONT KNOW"
		9 "NA";

	label define MARUNION
		0 "IAP"
		1 "Legally married"
		2 "In a civil union or registered domestic partnership"
		3 "Separated"
		4 "Not currently married or in a civil union or registered domestic partnership"
		8 "DONT KNOW"
		9 "NA";

	label define SEXUNION
		0 "IAP"
		1 "Male"
		2 "Female"
		8 "DONT KNOW"
		9 "NA";

	label define KIDNOW1
		0 "IAP"
		1 "Yes, all of them live with me at least some of the time"
		2 "Some live with me at least some of the time"
		3 "None live with me"
		8 "DONT KNOW"
		9 "NA";

	label define TOLDWORK
		0 "IAP"
		1 "All of my coworkers"
		2 "More than half"
		3 "About half"
		4 "Less than half"
		5 "None of them"
		8 "DONT KNOW"
		9 "NA";

	label define LOSEJOB5
		0 "IAP"
		1 "Yes"
		2 "No"
		3 "NOT EMPLOYED IN LAST 5 YEARS"
		8 "DONT KNOW"
		9 "NA";

	label define HARJOB5
		0 "IAP"
		1 "Yes"
		2 "No"
		3 "NOT EMPLOYED IN LAST 5 YEARS"
		8 "Don't know"
		9 "No answer";

	label define EMPHLTH2
		0 "IAP"
		1 "Only individual employees are covered"
		2 "Employees and their spouses are covered but domestic partners are not covered"
		3 "Employees and their spouses are covered and domestic partners are covered"
		8 "DONT KNOW"
		9 "NA";

	label define HLTHTYPE
		0 "IAP"
		1 "My employer"
		2 "Employer of my spouse/partner"
		3 "Employer of someone else in my family"
		4 "MEDICAID"
		5 "MEDICARE"
		6 "Individual plan from private insurer not related to current or past employment"
		7 "Other"
		8 "DONT KNOW"
		9 "NA";

	label define SPPART
		0 "IAP"
		1 "Yes"
		2 "No"
		3 "Not Applicable"
		8 "DONT KNOW"
		9 "NA";

	label define NUMCLERG
		0 "IAP"
		8 "DONT KNOW"
		9 "NA";

	label define CLRGMODE
		0 "IAP"
		1 "Interviewed"
		2 "Self-administered";

	label define PRESPOP
		0 "IAP"
		1 "Approve"
		2 "Disapprove"
		8 "DON'T KNOW"
		9 "No answer";

	label define POLEFY3
		0 "IAP"
		1 "None"
		2 "A little"
		3 "Some"
		4 "Quite a bit"
		5 "A great deal"
		8 "DON'T KNOW"
		9 "No answer";

	label define POLEFY16
		0 "IAP"
		1 "Never"
		2 "Rarely"
		3 "Sometimes"
		4 "Very often"
		5 "Extremely often"
		8 "DON'T KNOW"
		9 "No answer";

	label define POLEFY17
		0 "IAP"
		1 "None"
		2 "A few"
		3 "Some"
		4 "Most"
		5 "All"
		8 "DON'T KNOW"
		9 "No answer";

	label define RATETONE
		0 "IAP"
		1 "Lightest"
		10 "Darkest"
		98 "DK"
		99 "NA";

	label define PUBDEF
		0 "IAP"
		1 "ALLOW PUBLICATION"
		2 "STOP PUBLICATION"
		8 "CANT CHOOSE"
		9 "NA";

	label define OBEYLAW
		0 "IAP"
		1 "ALWAYS OBEY LAW"
		2 "FOLLOW CONSCIENCE"
		8 "CANT CHOOSE"
		9 "NA";

	label define PROTEST1
		0 "IAP"
		1 "DEFINITELY ALLOWED"
		2 "PROBABLY ALLOWED"
		3 "PROB NOT ALLOWED"
		4 "DEFINT. NOT ALLOWED"
		8 "CANT CHOOSE"
		9 "NA";

	label define VERDICT
		0 "IAP"
		1 "CONVICT INNOCENT"
		2 "FREE THE GUILTY"
		8 "CANT CHOOSE"
		9 "NA";

	label define DATABANK
		0 "IAP"
		1 "VERY SERIOUS THREAT"
		2 "FAIRLY SERIOUS"
		3 "NOT SERIOUS"
		4 "NOT A THREAT AT ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define PROGTAX
		0 "IAP"
		1 "PAY MUCH MORE"
		2 "PAY MORE"
		3 "ALL PAY SAME"
		4 "PAY LESS"
		5 "PAY MUCH LESS"
		8 "CANT CHOOSE"
		9 "NA";

	label define EQINCOME
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE"
		3 "NEITHER"
		4 "DISAGREE"
		5 "DISAGREE STRONGLY"
		8 "DK"
		9 "NA";

	label define FECOLOP
		0 "IAP"
		1 "MUCH BETTR FOR WOMEN"
		2 "BETTER FOR WOMEN"
		3 "NO DIFFERENCE"
		4 "WORSE FOR WOMEN"
		5 "MUCH WRSE FOR WOMEN"
		8 "CANT CHOOSE"
		9 "NA";

	label define FEHLPBUS
		0 "IAP"
		1 "STRONGLY IN FAVOR"
		2 "IN FAVOR"
		3 "NEITHER"
		4 "AGAINST"
		5 "STRONGLY AGAINST"
		9 "NA";

	label define HSBASICS
		0 "IAP"
		1 "ESSENTIAL"
		2 "VERY IMPORTANT"
		3 "FAIRLY IMPORTANT"
		4 "NOT VERY IMPORTANT"
		5 "NOT NEEDED"
		8 "CANT CHOOSE"
		9 "NA";

	label define COLOP
		0 "IAP"
		1 "INCREASED A LOT"
		2 "INCREASED A LITTLE"
		3 "KEPT THE SAME"
		4 "REDUCED A LITTLE"
		5 "REDUCED A LOT"
		8 "CANT CHOOSE"
		9 "NA";

	label define AIDNEEDY
		0 "IAP"
		1 "GOVT GIVE GRANTS"
		2 "GOVT MAKE LOANS"
		3 "NO GOVT ASST"
		8 "CANT CHOOSE"
		9 "NA";

	label define KIDDRUGS
		0 "IAP"
		1 "TAKE NO ACTION"
		2 "GIVE WARNING"
		3 "TAKE CHILD"
		8 "CANT CHOOSE"
		9 "NA";

	label define BELTUP
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE"
		3 "NEITHER"
		4 "DISAGREE"
		5 "DISAGREE STRONGLY"
		9 "NA";

	label define POLEFF1
		0 "IAP"
		1 "AGREE"
		2 "DISAGREE"
		8 "CANT CHOOSE"
		9 "NA";

	label define POLEFF3
		0 "IAP"
		1 "AGREE-STRONGLY AGREE"
		2 "DISAGREE-AGREE"
		3 "NEITHER AGREE NOR DISAGREE"
		4 "DISAGREE"
		5 "STRONGLY DISAGREE"
		8 "CAN'T CHOOSE"
		9 "NA";

	label define SETWAGE
		0 "IAP"
		1 "STRONGLY IN FAVOR"
		2 "IN FAVOR"
		3 "NEITHER"
		4 "AGAINST"
		5 "STRONGLY AGAINST"
		8 "DK"
		9 "NA";

	label define SPENVIRO
		0 "IAP"
		1 "SPEND MUCH MORE"
		2 "SPEND MORE"
		3 "SPEND SAME"
		4 "SPEND LESS"
		5 "SPEND MUCH LESS"
		8 "CANT CHOOSE"
		9 "NA";

	label define INCTAX
		0 "IAP"
		1 "MUCH TOO HIGH"
		2 "TOO HIGH"
		3 "ABOUT RIGHT"
		4 "TOO LOW"
		5 "MUCH TOO LOW"
		6 "DOES NOT APPLY"
		8 "CANT CHOOSE"
		9 "NA";

	label define BUSTAX
		0 "IAP"
		1 "MUCH TOO HIGH"
		2 "TOO HIGH"
		3 "ABOUT RIGHT"
		4 "TOO LOW"
		5 "MUCH TOO LOW"
		8 "CANT CHOOSE"
		9 "NA";

	label define INFLJOBS
		0 "IAP"
		1 "KEEP DOWN INFLATION"
		2 "KEEP DOWN UNEMPLYMNT"
		8 "CANT CHOOSE"
		9 "NA";

	label define LABORPOW
		0 "IAP"
		1 "FAR TOO MUCH POWER"
		2 "TOO MUCH POWER"
		3 "RIGHT AMNT OF POWER"
		4 "TOO LITTLE POWER"
		5 "FAR TOO LITTLE POWER"
		8 "CANT CHOOSE"
		9 "NA";

	label define OWNPOWER
		0 "IAP"
		1 "OWN IT"
		2 "CONTROL PRICES"
		3 "LEAVE ALONE"
		8 "CANT CHOOSE"
		9 "NA";

	label define JOBSALL
		0 "IAP"
		1 "DEFIN SHOULD BE"
		2 "PROBAB SHOULD BE"
		3 "PROB SHOULD NOT BE"
		4 "DEFIN SHOULD NOT BE"
		8 "CANT CHOOSE"
		9 "NA";

	label define PROTSTRS
		0 "IAP"
		1 "EXTREMELY FAVORABLE"
		2 "FAVORABLE"
		3 "NEITHER FAVORABLE OR UNFAVORABLE"
		4 "UNFAVORABLE"
		5 "EXTREMELY UNFAVORABLE"
		8 "CANT CHOOSE"
		9 "NA";

	label define UNIONSOK
		0 "IAP"
		1 "EXCELLENT"
		2 "VERY GOOD"
		3 "FAIRLY GOOD"
		4 "NOT VERY GOOD"
		5 "NOT GOOD AT ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define POLINT
		0 "IAP"
		1 "VERY INTERESTED"
		2 "FAIRLY INTERESTED"
		3 "SOMEWHAT INTERESTED"
		4 "NOT VERY INTERESTED"
		5 "NOT AT ALL INTERESTED"
		8 "CANT CHOOSE"
		9 "NA";

	label define RPRTST1
		0 "IAP"
		1 "DEFINIETLY WOULD"
		2 "PROBABLY WOULD"
		3 "PROBABLY WOULD NOT"
		4 "DEFINITELY WOULD NOT"
		8 "DK"
		9 "NA";

	label define RPRTST15
		0 "IAP"
		1 "NEVER"
		2 "ONCE"
		3 "MORE THAN ONCE"
		8 "DK"
		9 "NA";

	label define GRNLAWS
		0 "IAP"
		1 "DEFINITELY SHOULD BE"
		2 "PROBABLY SHOULD BE"
		3 "PROBABABLY SHOULD NOT BE"
		4 "DEFINITELY SHOULD NOT BE"
		8 "CANT CHOOSE"
		9 "NA";

	label define DEMWORKS
		0 "IAP"
		1 "IT WORKS WELL AND NEEDS NO CHANGES"
		2 "IT WORKS WELL BUT NEEDS SOME CHANGES"
		3 "NEEDS A LOT OF CHANGES"
		4 "NEEDS TO BE COMPLETELY CHANGED"
		8 "CANT CHOOSE"
		9 "NA";

	label define TAXSPEND
		0 "IAP"
		1 "REDUCE TAXES"
		2 "SPEND MORE ON SOCIAL PROGRAMS"
		8 "CANT CHOOSE"
		9 "NA";

	label define RUNPOWER
		0 "IAP"
		1 "BY PRIVATE"
		2 "BY THE GOVERNMENT"
		8 "CANT CHOOSE"
		9 "NA";

	label define CUTDEBT
		0 "IAP"
		1 "SPEND ON SOCIAL PROGRAMS LIKE HEALTH"
		2 "SPEND LESS THAN NOW ON SOCIAL PROGRAMS"
		8 "CANT CHOOSE"
		9 "NA";

	label define HELPHLTH
		0 "IAP"
		1 "Very successful"
		2 "Quite successful"
		3 "Neither successful nor un-successful"
		4 "Quite un-successful"
		5 "Very un-successful"
		8 "CANT CHOOSE"
		9 "NA";

	label define WOTRIAL
		0 "IAP"
		1 "Definitely should have right"
		2 "Probably should have right"
		3 "Probably should not have right"
		4 "Definitely should not have right"
		8 "CANT CHOOSE"
		9 "NA";

	label define YOUINFLU
		0 "IAP"
		1 "Never"
		2 "Seldom"
		3 "Occasionally"
		4 "Often"
		8 "CANT CHOOSE"
		9 "NA";

	label define HLPINFLU
		0 "IAP"
		1 "No, nobody"
		2 "Yes, a few people"
		3 "Yes, some people"
		4 "Yes, a lot of people"
		8 "CANT CHOOSE"
		9 "NA";

	label define POLSFAIR
		0 "IAP"
		1 "Almost always"
		2 "Often"
		3 "Occasionally"
		4 "Seldom"
		5 "Almost never"
		8 "CANT CHOOSE"
		9 "NA";

	label define KNOWPOLS
		0 "IAP"
		1 "Definitely does"
		2 "Probably does"
		3 "Probably does not"
		4 "Definitely does not"
		8 "CANT CHOOSE"
		9 "NA";

	label define CORRUPT1
		0 "IAP"
		1 "Almost none"
		2 "A few"
		3 "Some"
		4 "Quite a lot"
		5 "Almost all"
		8 "CANT CHOOSE"
		9 "NA";

	label define BRIBE
		0 "IAP"
		1 "Never"
		2 "Seldom"
		3 "Occasionally"
		4 "Quite often, or"
		5 "Very often"
		8 "CANT CHOOSE"
		9 "NA";

	label define PEOCNTCT
		0 "IAP"
		1 "0-4 persons"
		2 "5-9"
		3 "10-19"
		4 "20-49"
		5 "50 or more"
		8 "CANT CHOOSE"
		9 "NA";

	label define MAVISIT
		0 "IAP"
		1 "LIVES IN HSHLD"
		2 "DAILY"
		3 "SEVERAL X WEEK"
		4 "ONCE A WEEK"
		5 "ONCE A MONTH"
		6 "SEVERAL X YEAR"
		7 "LESS OFTEN"
		98 "DK"
		99 "NA";

	label define MATIME
		0 "IAP"
		1 "LT 15 MIN"
		2 "15-30 MIN"
		3 "30 MIN-1 HR"
		4 "1-2 HR"
		5 "2-3 HR"
		6 "3-5 HR"
		7 "5-12 HR"
		8 "12+ HR"
		98 "DK"
		99 "NA";

	label define MACALL
		0 "IAP"
		1 "DAILY"
		2 "SEVERAL X WEEK"
		3 "ONCE A WEEK"
		4 "ONCE A MONTH"
		5 "SEVERAL X YEAR"
		6 "LESS OFTEN"
		8 "DK"
		9 "NA";

	label define SISNUM
		0 "NONE"
		1 "ONE"
		2 "TWO"
		3 "THREE"
		4 "FOUR"
		5 "FIVE +"
		8 "DK"
		9 "NA";

	label define POSSLQ
		0 "IAP"
		1 "MARRIED WITH PARTNER"
		2 "LIVING AS MARRIED"
		3 "PARTNER, NOT TOGETHER"
		4 "NO STEADY PARTNER"
		8 "DK"
		9 "NA";

	label define POSSLQY
		0 "IAP"
		1 "I am married and living in the same household as my husband or wife."
		2 "I have a steady partner, and we live in the same household."
		3 "I have a husband or wife or steady partner, but we don’t live in the same household."
		4 "I don’t have a steady partner."
		8 "DON'T KNOW"
		9 "No answer";

	label define GRPARNUM
		96 "96 OR MORE"
		97 "# DK BUT > 0"
		98 "DK"
		99 "NA";

	label define RELMOST
		0 "IAP"
		1 "GRMOTHER"
		2 "GRFATHER"
		3 "GRDAUGHTER"
		4 "GRANDSON"
		5 "AUNT"
		6 "UNCLE"
		7 "MOTHER-IN-LAW"
		8 "FATHER-IN-LAW"
		9 "SISTER-IN-LAW"
		10 "BROTHER-IN-LAW"
		11 "FEMALE RELATIVE"
		12 "MALE RELATIVE"
		13 "NONE"
		98 "DK"
		99 "NA";

	label define FRINUM
		96 "96 OR MORE"
		98 "DK"
		99 "NA";

	label define FRISEX
		0 "IAP"
		1 "MAN"
		2 "WOMAN"
		8 "DK"
		9 "NA";

	label define CHORES1
		0 "IAP"
		1 "SPOUSE"
		2 "MOTHER"
		3 "FATHER"
		4 "DAUGHTER"
		5 "SON"
		6 "SISTER"
		7 "BROTHER"
		8 "OTHER RELATIVE"
		9 "CLOSEST FRIEND"
		10 "OTHER FRIEND"
		11 "NEIGHBOR"
		12 "COWORKER"
		13 "SOCIAL SERVICE"
		14 "PAID HELP"
		15 "OTHER"
		16 "NO ONE"
		98 "DK"
		99 "NA";

	label define SICK1
		0 "IAP"
		1 "SPOUSE"
		2 "MOTHER"
		3 "FATHER"
		4 "DAUGHTER"
		5 "SON"
		6 "SISTER"
		7 "BROTHER"
		8 "OTHER RELATIVE"
		9 "CLOSEST FRIEND"
		10 "OTHER FRIEND"
		11 "NEIGHBOR"
		12 "COWORKER"
		13 "NURSE"
		14 "CLERGY"
		15 "PAID HELP"
		16 "OTHER"
		17 "NO ONE"
		98 "DK"
		99 "NA";

	label define BORROW1
		0 "IAP"
		1 "SPOUSE"
		2 "MOTHER"
		3 "FATHER"
		4 "DAUGHTER"
		5 "SON"
		6 "SISTER"
		7 "BROTHER"
		8 "OTHER RELATIVE"
		9 "CLOSEST FRIEND"
		10 "OTHER FRIEND"
		11 "NEIGHBOR"
		12 "COWORKER"
		13 "BANK"
		14 "EMPLOYER"
		15 "GOVT OR SOC SER"
		16 "OTHER"
		17 "NO ONE"
		98 "DK"
		99 "NA";

	label define UPSET1
		0 "IAP"
		1 "SPOUSE"
		2 "MOTHER"
		3 "FATHER"
		4 "DAUGHTER"
		5 "SON"
		6 "SISTER"
		7 "BROTHER"
		8 "OTHER RELATIVE"
		9 "CLOSEST FRIEND"
		10 "OTHER FRIEND"
		11 "NEIGHBOR"
		12 "COWORKER"
		13 "CLERGY"
		14 "FAMILY DOCTOR"
		15 "PROF COUNSELOR"
		16 "OTHER"
		17 "NO ONE"
		98 "DK"
		99 "NA";

	label define CHANGE1
		0 "IAP"
		1 "SPOUSE"
		2 "MOTHER"
		3 "FATHER"
		4 "DAUGHTER"
		5 "SON"
		6 "SISTER"
		7 "BROTHER"
		8 "OTHER RELATIVE"
		9 "CLOSEST FRIEND"
		10 "OTHER FRIEND"
		11 "NEIGHBOR"
		12 "COWORKER"
		13 "CLERGY"
		14 "FAMILY DOCTOR"
		15 "PROF COUNSELOR"
		16 "LAWYER"
		17 "OTHER"
		18 "NO ONE"
		98 "DK"
		99 "NA";

	label define MATIME1
		0 "IAP"
		1 "Less than 2 minutes"
		2 "Less than 15 minutes"
		3 "Between 15 and 30 minutes"
		4 "Between 30 minutes and 1 hour"
		5 "Between 1 and 2 hours"
		6 "Between 2 and 3 hours"
		7 "Between 3 and 5 hours"
		8 "Between 5 and 12 hours"
		9 "Over 12 hours"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define SIBMOST
		0 "IAP"
		1 "With a brother"
		2 "With a sister"
		3 "I have no contact with any adult brother or sister"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SIBVISIT
		0 "IAP"
		1 "He or she lives in the same household as I do"
		2 "Daily"
		3 "At least several times a week"
		4 "At least once a week"
		5 "At least once a month"
		6 "Several times a year"
		7 "Less often"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SIBCALL
		0 "IAP"
		1 "Daily"
		2 "At least several times a week"
		3 "At least once a week"
		4 "At least once a month"
		5 "Several times a year"
		6 "Less often"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define KIDMOST
		0 "IAP"
		1 "With a son"
		2 "With a daughter"
		3 "I have no contact with any adult children"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define PAVISIT1
		0 "IAP"
		1 "He lives in the same household as I do"
		2 "Daily"
		3 "At least several times a week"
		4 "At least once a week"
		5 "At least once a month"
		6 "Several times a year"
		7 "Less often"
		8 "Never"
		9 "My father is no longer alive"
		10 "I DONT KNOW where father lives"
		99 "NO ANSWER";

	label define PACALL1
		0 "IAP"
		1 "Daily"
		2 "At least several times a week"
		3 "At least once a week"
		4 "At least once a month"
		5 "Several times a year"
		6 "Less often"
		7 "Never"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define MAVISIT1
		0 "IAP"
		1 "She lives in the same household as I do"
		2 "Daily"
		3 "At least several times a week"
		4 "At least once a week"
		5 "At least once a month"
		6 "Several times a year"
		7 "Less often"
		8 "Never"
		9 "My mother is no longer alive"
		10 "I DONT KNOW where mother lives"
		99 "NO ANSWER";

	label define UNCAUNTS
		0 "IAP"
		1 "More than twice in last 4 weeks"
		2 "Once or twice in last 4 weeks"
		3 "Not at all in last 4 weeks"
		4 "I have no living relative of this type"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define COWRKFRD
		0 "No close friends at work"
		96 "More than a hundred"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define NEIFRD
		0 "No close friends living near R"
		96 "More than a hundred"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define BESTFRD
		0 "IAP"
		1 "a male relative"
		2 "a female relative"
		3 "a man who is not a relative"
		4 "a woman who is not a relative"
		5 "I dont have a close friend"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define BSTVISIT
		0 "IAP"
		1 "He or she lives in the same household as I do"
		2 "Daily"
		3 "At least several times a week"
		4 "At least once a week"
		5 "At least once a month"
		6 "Several times a year"
		7 "Less often"
		8 "Never"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define GRPPOL
		0 "IAP"
		1 "I have participated more than twice"
		2 "I have participated once or twice"
		3 "I belong to such a group but never participate"
		4 "I do not belong to such a group"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SICK1A
		0 "IAP"
		1 "husband, wife, partner"
		2 "mother"
		3 "father"
		4 "daughter"
		5 "daughter-in-law"
		6 "son"
		7 "son-in-law"
		8 "sister"
		9 "brother"
		10 "other blood relative"
		11 "other in-law relative"
		12 "close friend"
		13 "neighbor"
		14 "someone you work with"
		15 "someone at a social services agency"
		16 "someone you pay to help"
		17 "someone else"
		18 "no one"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define SICK2A
		0 "IAP"
		1 "husband, wife, partner"
		2 "mother"
		3 "father"
		4 "daughter"
		5 "daughter-in-law"
		6 "son"
		7 "son-in-law"
		8 "sister"
		9 "brother"
		10 "other blood relative"
		11 "other in-law relative"
		12 "close friend"
		13 "neighbor"
		14 "someone you work with"
		15 "someone at a social services agency"
		16 "someone you pay to help"
		17 "other"
		18 "no one"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define BORROW1A
		0 "IAP"
		1 "husband, wife, partner"
		2 "mother"
		3 "father"
		4 "daughter"
		5 "son"
		6 "sister"
		7 "brother"
		8 "other blood relative"
		9 "other in-law relative"
		10 "god-parent"
		11 "close friend"
		12 "neighbor"
		13 "someone you work with"
		14 "employer"
		15 "government or social services agency"
		16 "bank or credit union"
		17 "private money lender"
		18 "someone else"
		19 "no one"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define DOWN1A
		0 "IAP"
		1 "husband, wife, partner"
		2 "mother"
		3 "father"
		4 "daughter"
		5 "son"
		6 "sister"
		7 "brother"
		8 "other blood relative"
		9 "other in-law relative"
		10 "close friend"
		11 "neighbor"
		12 "someone you work with"
		13 "priest or member of the clergy"
		14 "family doctor"
		15 "a psychologist or other professional counselor"
		16 "a self-help group"
		17 "someone else"
		18 "no one"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define HELPHWRK
		0 "IAP"
		1 "More than once a week"
		2 "Once a week"
		3 "Once a month"
		4 "At least two or three times in the past year"
		5 "Once in the past year"
		6 "Not at all in the past year"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define LEARNJOB
		0 "IAP"
		1 "I have never worked for pay"
		2 "From parents, brothers or sisters"
		3 "From other relatives"
		4 "From a close friend"
		5 "From an acquaintance"
		6 "From a public employment agency or service"
		7 "From a private employment agency"
		8 "From a school or university placement office"
		9 "From an advertisement or a sign"
		10 "The employer contacted me about a job"
		11 "I just called them or went there to ask for work"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define FRDTHINK
		0 "IAP"
		1 "Extremely important"
		2 "Very important"
		3 "Fairly important"
		4 "Not too important"
		5 "Not at all important"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define KIDPARS
		0 "IAP"
		1 "Strongly Agree"
		2 "Agree"
		3 "Neither Agree nor Disagree"
		4 "Disagree"
		5 "Strongly Disagree"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define AIDKIDS
		0 "IAP"
		1 "Definitely should be"
		2 "Probably should be"
		3 "Probably should not be"
		4 "Definitely should not be"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define OTHFRD
		0 "No other close friends"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define DEMANDS
		0 "IAP"
		1 "No, never"
		2 "Yes, but seldom"
		3 "Yes, sometimes"
		4 "Yes, often"
		5 "Yes, very often"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define COMYEAR
		9998 "DK"
		9999 "NA";

	label define OPWLTH
		0 "IAP"
		1 "ESSENTIAL"
		2 "VERY IMPORTANT"
		3 "FAIRLY IMPORTANT"
		4 "NOT VERY IMPORTANT"
		5 "NOT IMPORTANT AT ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define GOODLIFE
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NEITHER"
		4 "DISAGREE"
		5 "STRONGLY DISAGREE"
		8 "CANT CHOOSE"
		9 "NA";

	label define INCENTIV
		0 "IAP"
		1 "ABSOLUTELY NECCESSARY"
		2 "PROBABLY NECCESSARY"
		3 "PROBABLY NOT NECC"
		4 "DEFINITELY NOT NECC"
		8 "CANT CHOOSE"
		9 "NA";

	label define PAYMASON
		999996 "> 1000000"
		999997 "NEVER WORKED"
		999998 "DK"
		999999 "NA";

	label define GIVMASON
		999992 "MT NOW PAID"
		999993 "SAME AS NOW PAID"
		999994 "LT NOW PAID"
		999996 "> 1000000"
		999997 "NEVER WORKED"
		999998 "DK"
		999999 "NA";

	label define TAXSHARE
		0 "IAP"
		1 "MUCH LARGER SHARE"
		2 "LARGER"
		3 "SAME SHARE"
		4 "SMALLER SHARE"
		5 "MUCH LOWER SHARE"
		8 "CANT CHOOSE"
		9 "NA";

	label define CONWLTH
		0 "IAP"
		1 "VERY STRONG CONFLICT"
		2 "STRONG CONFLICT"
		3 "NOT STRONG CONFLICT"
		4 "NO CONFLICT"
		8 "CANT CHOOSE"
		9 "NA";

	label define CONSOC
		0 "IAP"
		1 "VERY STRONG CONFLICTS"
		2 "STRONG CONFLICTS"
		3 "NOT VERY STRONG CONFLICTS"
		4 "THERE ARE NO CONFLICTS"
		8 "CANT CHOOSE"
		9 "NA";

	label define OCCMOBIL
		0 "IAP"
		1 "MUCH HIGHER THAN DAD"
		2 "HIGHER"
		3 "ABOUT EQUAL"
		4 "LOWER"
		5 "MUCH LOWER THAN DAD"
		6 "R NEVER HAD JOB"
		7 "NO DAD-NEVER HAD JOB"
		8 "DK"
		9 "NA";

	label define PAJOB
		0 "IAP"
		1 "PROF OR TECH"
		2 "HIGHER ADMIN"
		3 "CLERICAL"
		4 "SALES"
		5 "SERVICE"
		6 "SKILLED WORKER"
		7 "SEMI-SKILLED WORKER"
		8 "UNSKILLED WORKER"
		9 "FARM"
		10 "NO DAD-NEVER HAD JOB"
		98 "DK"
		99 "NA";

	label define PASLF
		0 "IAP"
		1 "SELF-EMPLOYED"
		2 "SOMEONE ELSE"
		3 "NO DAD-NEVER HAD JOB"
		8 "DK"
		9 "NA";

	label define FIRSTJOB
		0 "IAP"
		1 "PROF OR TECH"
		2 "HIGHER ADMIN"
		3 "CLERICAL"
		4 "SALES"
		5 "SERVICE"
		6 "SKILLED WORKER"
		7 "SEMI-SKILLED WORKER"
		8 "UNSKILLED WORKER"
		9 "FARM"
		10 "NEVER HAD JOB"
		98 "DK"
		99 "NA";

	label define FIRSTSLF
		0 "IAP"
		1 "SELF-EMPLOYED"
		2 "SOMEONE ELSE"
		3 "NEVER HAD JOB"
		8 "DK"
		9 "NA";

	label define EARNDES
		0 "IAP"
		1 "MUCH LESS THAN I DESERVE"
		2 "LESS THAN I DESERVE"
		3 "WHAT I DESERVE"
		4 "MORE THAN I DESERVE"
		5 "MUCH MORE THAN I DESERVE"
		6 "NEVER WORKED"
		8 "CANT CHOOSE"
		9 "NA";

	label define RICHHLTH
		0 "IAP"
		1 "VERY JUST, DEFINITELY RIGHT"
		2 "SOMEWHAT JUST, RIGHT"
		3 "NEITHER JUST NOR UNJUST, MIXED FEELINGS"
		4 "SOMEWHAT UNJUST, WRONG"
		5 "VERY UNJUST, DEFINITELY WRONG"
		8 "CANT CHOOSE"
		9 "NA";

	label define PAYRESP
		0 "IAP"
		1 "ESSENTIAL"
		2 "VERY IMPORTANT"
		3 "FAIRLY IMPORTANT"
		4 "NOT VERY IMPORTANT"
		5 "NOT IMPORTANT AL ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define JUSTPAY
		0 "IAP"
		1 "MUCH LESS THAN IS JUST"
		2 "A LITTLE LESS THAN IS JUST"
		3 "ABOUT JUST FOR ME"
		4 "A LITTLE MORE THAN IS JUST"
		5 "MUCH MORE THAN IS JUST"
		6 "NEVER HAD A JOB"
		8 "CANT CHOOSE"
		9 "NA";

	label define SOCTYPE1
		0 "IAP"
		1 "TYPE A"
		2 "TYPE B"
		3 "TYPE C"
		4 "TYPE D"
		5 "TYPE E"
		8 "CANT CHOOSE"
		9 "NA";

	label define FAMRNK
		0 "IAP"
		1 "TOP"
		7 "BOTTOM"
		8 "CANT CHOOSE"
		9 "NA";

	label define PASUP
		0 "IAP"
		1 "NO, DID NOT SUPERVISE"
		2 "YES, SUPERVISED 1 TO 9 PEOPLE"
		3 "YES, SUPERVISED 10 OR MORE"
		4 "DK IF HE SUPERVISED ANYONE"
		5 "I DK WHAT MY FATHER DID-FATHER DEAD"
		8 "DK"
		9 "NA";

	label define BOOKS16
		0 "IAP"
		1 "NONE"
		2 "1 OR 2"
		3 "AROUND 10"
		4 "AROUND 20"
		5 "AROUND 50"
		6 "AROUND 100"
		7 "AROUND 200"
		8 "AROUND 500"
		9 "1,000 OR MORE"
		98 "DK"
		99 "NA";

	label define WRKNOKID
		0 "IAP"
		1 "WORK FULL-TIME"
		2 "WORK PART-TIME"
		3 "STAY HOME"
		8 "CANT CHOOSE"
		9 "NA";

	label define DAYCARE1
		0 "IAP"
		1 "VERY SUITABLE"
		2 "SOMEWHAT SUITABLE"
		3 "NOT VERY SUITABLE"
		4 "NOT AT ALL SUITABLE"
		8 "CANT CHOOSE"
		9 "NA";

	label define FEMARRY
		0 "IAP"
		1 "LIVE ALONE"
		2 "LIVE WITH POSSLQ"
		3 "COHABITATE, THEN MARRY"
		4 "MARRY"
		8 "CANT CHOOSE"
		9 "NA";

	label define NUMKIDS
		7 "Seven or more"
		8 "DK"
		9 "NA";

	label define NOKIDS
		0 "IAP"
		1 "VERY DESIRABLE"
		2 "DESIRABLE"
		3 "NEITHER"
		4 "UNDESIRABLE"
		5 "VERY UNDESIRABLE"
		8 "CANT CHOOSE"
		9 "NA";

	label define DIVNOW
		0 "IAP"
		1 "VERY EASY"
		2 "FAIRLY EASY"
		3 "NEITHER"
		4 "FAIRLY DIFFICULT"
		5 "VERY DIFFICULT"
		8 "CANT CHOOSE"
		9 "NA";

	label define DIVKIDS
		0 "IAP"
		1 "MUCH BETTER TO DIV"
		2 "BETTER TO DIVORCE"
		3 "WORSE TO DIVORCE"
		4 "MUCH WORSE TO DIV"
		8 "CANT CHOOSE"
		9 "NA";

	label define MAWORK14
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "DIDNT LIVE WITH MOM"
		8 "DK"
		9 "NA";

	label define EVDIV
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "NEVER MARRIED"
		9 "NA";

	label define SPEVDIV
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "NOT MARRIED"
		8 "DK"
		9 "NA";

	label define RWRKNOKD
		0 "IAP"
		1 "YES, FULL-TIME"
		2 "YES,PART-TIME"
		3 "NO"
		8 "DOESNT APPLY"
		9 "NA";

	label define EARNSMOR
		0 "IAP"
		1 "HUSBAND, MUCH MORE"
		2 "HUSBAND, BIT MORE"
		3 "SAME FOR BOTH"
		4 "WIFE, BIT MORE"
		5 "WIFE, MUCH MORE"
		8 "DK"
		9 "NA";

	label define FEWRKSUP
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NEITHER AGREE NOR DISAGREE"
		4 "DISAGREE"
		5 "STRONGLY DISAGREE"
		8 "CAN'T CHOOSE"
		9 "NA";

	label define HUBBYWK1
		0 "IAP"
		1 "Strongly Agree"
		2 "Agree"
		3 "Neither Agree nor Disagree"
		4 "Disagree"
		5 "Strongly Disagree"
		8 "Cannot choose"
		9 "NO ANSWER";

	label define LIVNOWED
		0 "IAP"
		1 "YES, WITH A PREVIOUS PARTNER"
		2 "YES, WITH MY PRESENT PARTNER"
		3 "YES, WITH PREVIOUS AND PRESENT PARTNER"
		4 "NO, NEVER"
		8 "DK"
		9 "NA";

	label define TEENSEX1
		0 "IAP"
		1 "ALWAYS WRONG"
		2 "ALMOST ALWAYS WRONG"
		3 "WRONG ONLY SOMETIMES"
		4 "NOT WRONG AT ALL"
		8 "CAN'T CHOOSE"
		9 "NA";

	label define SEXHAR
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "NEVER HAVE WORKED"
		8 "DK"
		9 "NA";

	label define FAMBUDGT
		0 "IAP"
		1 "I MANAGE, GIVE PRTNR SHARE"
		2 "PRNTNR MANAGES, GIVES ME SHARE"
		3 "POOL ALL MONEY, TAKE OUT WHAT WE NEED"
		4 "POOL SOME MONEY, KEEP SOME SEPARATE"
		5 "KEEP MONEY SEPARATE"
		6 "NOT MARRIED"
		8 "DK"
		9 "NA";

	label define LAUNDRY
		0 "IAP"
		1 "ALWAYS THE WOMAN"
		2 "USUALLY THE WOMAN"
		3 "ABOUT EQUAL OR BOTH TOGETHER"
		4 "USUALLY THE MAN"
		5 "ALWAYS THE MAN"
		6 "IS DONE BY A THIRD PERSON"
		7 "NOT MARRIED"
		8 "CAN'T CHOOSE"
		9 "NA";

	label define SPWKNOKD
		0 "IAP"
		1 "WORKED FULL-TIME"
		2 "WORKED PART-TIME"
		3 "STAYED HOME"
		8 "DOES NOT APPLY"
		9 "NA";

	label define LAUNDRY1
		0 "IAP"
		1 "Always me"
		2 "Usually me"
		3 "About Equal or Both Together"
		4 "Usually my spouse or partner"
		5 "Always my spouse"
		6 "Is done by a Third Person"
		8 "Cannot choose"
		9 "NO ANSWER";

	label define RHHWORK
		97 "97 or more"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define HHWKFAIR
		0 "IAP"
		1 "I do much more than my fair share of hh work"
		2 "I do a bit more than my fair share of hh work"
		3 "I do roughly my fair share of hh work"
		4 "I do a bit less than my fair share of hh work"
		5 "I do much less than my fair share of hh work"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define HHWKDIS
		0 "IAP"
		1 "Several times a week"
		2 "Several times a month"
		3 "Several times a year"
		4 "Less often or rarely"
		5 "Never"
		8 "Cannot choose"
		9 "NO ANSWER";

	label define DECKIDS
		0 "IAP"
		1 "Mostly me"
		2 "Mostly my spouse"
		3 "Sometimes me or sometimes my spouse"
		4 "We decide together"
		5 "Someone else"
		8 "Does not apply"
		9 "NO ANSWER";

	label define SPBORN
		0 "IAP"
		9998 "Don't know"
		9999 "No answer";

	label define WEEKEND
		0 "IAP"
		1 "Mostly me"
		2 "Mostly my spouse"
		3 "Sometimes me or sometimes my spouse"
		4 "We decide together"
		5 "Someone else"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define TIREDHME
		0 "IAP"
		1 "Several times a week"
		2 "Several times a month"
		3 "Once or twice"
		4 "Never"
		6 "Doesnt apply or no job"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define HAPPY7
		0 "IAP"
		1 "Completely happy"
		2 "Very happy"
		3 "Fairly happy"
		4 "Neither happy nor unhappy"
		5 "Fairly unhappy"
		6 "Very unhappy"
		7 "Completely unhappy"
		8 "Cannot choose"
		9 "NO ANSWER";

	label define SATJOB7
		0 "IAP"
		1 "Completely satisfied"
		2 "Very satisfied"
		3 "Fairly satisfied"
		4 "Neither satisfied nor dissatisfied"
		5 "Fairly dissatisfied"
		6 "Very dissatisfied"
		7 "Completely dissatisfied"
		8 "Cannot choose"
		9 "NO ANSWER";

	label define FEWKNOKD
		0 "IAP"
		1 "Work full-time"
		2 "Work part-time"
		3 "Stay at home"
		8 "Cannot choose"
		9 "NO ANSWER";

	label define TWOINCS1
		0 "IAP"
		1 "Strongly Agree"
		2 "Agree"
		3 "Neither Agree nor Disagree"
		4 "Disgree"
		5 "Strongly Disagree"
		8 "Cannot choose"
		9 "NO ANSWER";

	label define EARNSHH
		0 "IAP"
		1 "Spouse has no income"
		2 "I have much higher income"
		3 "I have higher income"
		4 "We have about the same income"
		5 "Spouse has a higher income"
		6 "Spouse partner has much higher income"
		7 "I have no income"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define SSFCHILD
		0 "IAP"
		1 "Strongly agree"
		2 "Agree"
		3 "Neither agree or disagree"
		4 "Disagree"
		5 "Strongly disagree"
		8 "DON'T KNOW"
		9 "No answer";

	label define PAIDLV
		0 "IAP"
		1 "Yes, enter months"
		2 "No, there should be no paid leave"
		8 "DON'T KNOW"
		9 "No answer";

	label define PAIDLVPY
		0 "IAP"
		1 "The government"
		2 "The employer"
		3 "Both government and the employer"
		4 "Other sources"
		8 "DON'T KNOW"
		9 "No answer";

	label define PAIDLVDV
		0 "IAP"
		1 "The mother should take the entire paid leave period and the father should not take any paid leave"
		2 "The mother should take most of the paid leave period and the father should take some of it"
		3 "The mother and the father should each take half of the paid leave period"
		4 "The father should take most of the paid leave period and the mother should take some of it"
		5 "The father should take the entire paid leave period and the mother should not take any paid leave"
		8 "DON'T KNOW"
		9 "No answer";

	label define FAMWKBST
		0 "IAP"
		1 "The mother stays at home and the father works full-time"
		2 "The mother works part-time and the father works full-time"
		3 "Both the mother and father work full-time"
		4 "Both the mother and father work part-time"
		5 "The father works part-time and the mother works full-time"
		6 "The father stays at home and the mother works full-time"
		8 "DON'T KNOW"
		9 "No answer";

	label define CAREPROV
		0 "IAP"
		1 "Family members"
		2 "Government agencies"
		3 "Non-profit organizations (e.g., charitable organizations, churches/religious organizations)"
		4 "Private childcare providers (e.g., private day care center, nanny, babysitter)"
		5 "Employers"
		8 "DON'T KNOW"
		9 "No answer";

	label define CARECOST
		0 "IAP"
		1 "The family"
		2 "The government/public funds"
		3 "The employers"
		8 "DON'T KNOW"
		9 "No answer";

	label define ELDHELP
		0 "IAP"
		1 "Family members"
		2 "Government agencies"
		3 "Non-profit organizations (e.g., charitable organizations, churches/religious organizations)"
		4 "Private providers of this kind of help"
		8 "DON'T KNOW"
		9 "No answer";

	label define ELDCOST
		0 "IAP"
		1 "The elderly people themselves or their family"
		2 "The government/public funds"
		8 "DON'T KNOW"
		9 "No answer";

	label define HHCLEAN1
		0 "IAP"
		1 "Always me"
		2 "Usually me"
		3 "About equal or both together"
		4 "Usually my {#spousepartfill}"
		5 "Always my {#spousepartfill}"
		6 "Is done by a third person"
		8 "DON'T KNOW"
		9 "No answer";

	label define WKNDACT
		0 "IAP"
		1 "Mostly me"
		2 "Mostly my {#spousepartfill}"
		3 "Sometimes me/sometimes my {#spousepartfill}"
		4 "We decide together"
		5 "Someone else"
		8 "DON'T KNOW"
		9 "No answer";

	label define TIREDHM1
		0 "Doesn’t apply/no job"
		1 "Several times a week"
		2 "Several times a month"
		3 "Once or twice"
		4 "Never"
		8 "DON'T KNOW"
		9 "No answer";

	label define WKKIDSCL
		0 "IAP"
		1 "Worked full-time"
		2 "Worked part-time"
		3 "Stayed at home"
		8 "DON'T KNOW"
		9 "No answer";

	label define RFAMLOOK
		1 "1 hour"
		97 "97 hours or more"
		98 "DK"
		99 "NA";

	label define SPLIVE
		1 "1 year"
		98 "DK"
		99 "NA";

	label define TIMEPDWK
		0 "NO ISSP"
		1 "SPEND MUCH MORE"
		2 "SPEND A BIT MORE"
		3 "SPEND SAME"
		4 "SPEND A BIT LESS"
		5 "SPEND MUCH LESS"
		8 "CANT CHOOSE"
		9 "NA";

	label define WRKEARN
		0 "NO ISSP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NEITHER"
		4 "DISAGREE"
		5 "STRONGLY DISAGREE"
		8 "CANT CHOOSE"
		9 "NA";

	label define HWDUTIES
		0 "NO ISSP"
		1 "YES I RESPONSIBLE"
		2 "YES ME AND OTHER"
		3 "NO SOMEONE ELSE"
		8 "DONT KNOW"
		9 "NA";

	label define YRSFIRM
		0 "NO ISSP"
		1 "MOST IMPT"
		2 "2ND MOST IMPT"
		3 "3RD MOST IMPT"
		4 "NOT CHOSEN"
		8 "DK"
		9 "NA";

	label define DK
		0 "NO ISSP"
		1 "DK CHOSEN"
		2 "NOT CHOSEN"
		9 "NA";

	label define SECJOB
		0 "NO ISSP"
		1 "VERY IMPT"
		2 "IMPT"
		3 "NEITHER"
		4 "NOT IMPT"
		5 "NOT IMPT AT ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define UNPEOPLE
		0 "NO ISSP"
		1 "WORST"
		2 "2ND WORST"
		3 "3RD WORST"
		4 "NOT CHOSEN"
		8 "DK"
		9 "NA";

	label define UNDK
		0 "NO ISSP"
		1 "DK CHOSEN"
		2 "NOT CHOSEN"
		8 "DONT KNOW"
		9 "NA";

	label define EMPSELF
		0 "NO ISSP"
		1 "EMPLOYEE"
		2 "SELF-EMPLOY"
		8 "CANT CHOOSE"
		9 "NA";

	label define SMALLBIG
		0 "NO ISSP"
		1 "SMALL"
		2 "BIG"
		8 "CANT CHOOSE"
		9 "NA";

	label define INDUSOTH
		0 "NO ISSP"
		1 "MANUFACTURE"
		2 "OFFICE, SALES, ETC"
		8 "CANT CHOOSE"
		9 "NA";

	label define PRIVGOVT
		0 "NO ISSP"
		1 "PRIVATE FIRM"
		2 "GOVT"
		8 "CANT CHOOSE"
		9 "NA";

	label define WORKWEEK
		0 "NO ISSP"
		1 "YES"
		2 "NO"
		3 "NOT WORKING"
		9 "NA";

	label define WANTJOB
		0 "NOISSP"
		1 "WANT FULL"
		2 "WANT PART"
		3 "WANT LT 10 HRS"
		4 "DONT WANT"
		8 "DONT WANT"
		9 "NA";

	label define FINDJOB
		0 "NO ISSP"
		1 "VERY EASY"
		2 "FAIRLY EASY"
		3 "NEITHER"
		4 "FAIRLY DIFFICULT"
		5 "VERY DIFFICULT"
		8 "CANT CHOOSE"
		9 "NA";

	label define IWRKHARD
		0 "NO ISSP"
		1 "ONLY MINIMUM"
		2 "NOT TO INTERFERE"
		3 "REAL HARD"
		8 "CANT CHOOSE"
		9 "NA";

	label define HRSMONEY
		0 "NO ISSP"
		1 "MORE HRS & MONEY"
		2 "SAME AND SAME"
		3 "FEWER AND LESS"
		8 "CANT CHOOSE"
		9 "NA";

	label define XHAUSTN
		0 "NO ISSP"
		1 "ALWAYS"
		2 "OFTEN"
		3 "SOMETIMES"
		4 "HARDLY EVER"
		5 "NEVER"
		8 "CANT CHOOSE"
		9 "NA";

	label define STRESS
		0 "NO ISSP"
		1 "ALWAYS"
		2 "OFTEN"
		3 "SOMETIMES"
		4 "HARDLY EVER"
		5 "NEVER"
		8 "Can't choose/Don't know"
		9 "NA";

	label define PLANWRK
		0 "NO ISSP"
		1 "PLANS MOST"
		2 "PLANS PART"
		3 "CANT PLAN"
		9 "NA";

	label define BOSSEMPS
		0 "NO ISSP"
		1 "VERY GOOD"
		2 "QUITE GOOD"
		3 "NEITHER"
		4 "QUITE BAD"
		5 "VERY BAD"
		8 "CANT CHOOSE"
		9 "NA";

	label define JOBSAT
		0 "NO ISSP"
		1 "COMPLETELY SAT"
		2 "VERY SAT"
		3 "FAIRLY SAT"
		4 "NEITHER"
		5 "FAIRLY DISSAT"
		6 "VERY DISSAT"
		7 "COMPLETELY DISSAT"
		8 "CANT CHOOSE"
		9 "NA";

	label define SUPERVIS
		0 "NO ISSP"
		1 "SUPERVISES"
		2 "DOESNT SUPERVISE"
		8 "DK"
		9 "NA";

	label define SUPNUM
		0 "NO ISSP"
		999 "NA";

	label define MOONLITE
		0 "NO ISSP"
		1 "YES, REGULARLY"
		2 "YES, SOMETIMES"
		3 "NO"
		9 "NA";

	label define OTHHRS
		0 "NO ISSP"
		98 "DONT KNOW"
		99 "NA";

	label define NUMSITES
		0 "NO ISSP"
		1 "YES"
		2 "NO"
		9 "NA";

	label define TOTALNUM
		0 "NO ISSP"
		1 "1-9"
		2 "10-49"
		3 "50-99"
		4 "100-499"
		5 "500-999"
		6 "1,000-1,999"
		7 "2,000 - 9,999"
		8 "10,000+"
		9 "DONT KNOW-NA";

	label define NUMEMPLY
		0 "NO ISSP"
		1 "1-9"
		2 "10-49"
		3 "50-99"
		4 "100-499"
		5 "500-999"
		6 "1,000-1,999"
		7 "2,000+"
		8 "DONT KNOW"
		9 "NA";

	label define TECHJOBS
		0 "IAP"
		1 "GREATLY INCREASE"
		2 "SLIGHT INCREASE"
		3 "NO DIFFERENCE TO"
		4 "SLIGHTLY REDUCE"
		5 "GREATLY REDUCE"
		8 "CANT CHOOSE"
		9 "NA";

	label define TECHWORK
		0 "IAP"
		1 "MUCH MORE"
		2 "LITTLE MORE"
		3 "NEITHER MRE/LESS"
		4 "A LITTLE LESS"
		5 "MUCH LESS"
		8 "CANT CHOOSE"
		9 "NA";

	label define WANTJOB1
		0 "IAP"
		1 "A FULL TIME JOB"
		2 "A PART-TIME JOB"
		3 "JOB LESS 10/WK"
		4 "NO PAID JOB"
		8 "DONT KNOW"
		9 "NA";

	label define SETHOURS
		0 "IAP"
		1 "EMPLOYER DECIDES"
		2 "I DECIDE W/LIMTS"
		3 "FREE TO DECIDE"
		8 "DK"
		9 "NA";

	label define PLACEWRK
		0 "IAP"
		1 "IN 1 PLACE AWAY"
		2 "AT HOME"
		3 "PART HOME/ AWAY"
		4 "VARIETY PLACES"
		8 "DK"
		9 "NA";

	label define WKTENURE
		0 "IAP"
		1 "NO WRITTN CNTRCT"
		2 "FIXED LESS 1 YR"
		3 "FIXED MORE 1 YR"
		4 "JOB NO TME LIMIT"
		8 "CANT CHOOSE"
		9 "NA";

	label define USESKILL
		0 "IAP"
		1 "ALMOST NONE"
		2 "A LITTLE"
		3 "A LOT"
		4 "ALMOST ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define EDCSKILL
		0 "IAP"
		1 "VERY IMPORTANT"
		2 "IMPORTANT"
		3 "NOT UN/IMPORTNT"
		4 "NOT IMPORTANT"
		5 "NOT IMPORTANT AT ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define JOBSKILL
		0 "IAP"
		1 "VERY IMPORTANT"
		2 "IMPORTANT"
		3 "NOT IMPT/UNIMP"
		4 "NOT IMPORTANT"
		5 "NOT IMPRT AT ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define PRIDEORG
		0 "IAP"
		1 "STRONGLY AGREE"
		2 "AGREE"
		3 "NOT AGREE/DSAGRE"
		4 "DISAGREE"
		5 "STRONG DISAGREE"
		8 "DK"
		9 "NA";

	label define ABSENT
		0 "IAP"
		1 "MORE THN 20 DAYS"
		2 "11 TO 20 DAYS"
		3 "6 TO 10 DAYS"
		4 "1 TO 5 DAYS"
		5 "NONE"
		8 "CANT CHOOSE"
		9 "NA";

	label define LEAVEJOB
		0 "IAP"
		1 "VERY LIKELY"
		2 "LIKELY"
		3 "UNLIKELY"
		4 "VERY UNLIKELY"
		8 "CANT CHOOSE"
		9 "NA";

	label define WORRYJOB
		0 "IAP"
		1 "WORRY GREAT DEAL"
		2 "WORRY SOME XTENT"
		3 "WORRY A LITTLE"
		4 "DONT WORRY"
		8 "DONT KNOW"
		9 "NA";

	label define YRJOBEND
		9998 "Don't know"
		9999 "No answer";

	label define WHYJBEND
		0 "DK NA"
		1 "I REACHED AGE"
		2 "EARLY  BY CHOICE"
		3 "EARLY NOT CHOICE"
		4 "PERMNENT DISABLD"
		5 "WORK SHUT DOWN"
		6 "I WAS DISMISSED"
		7 "CONTRACT ENDED"
		8 "FAMILY RESPONS"
		9 "I GOT MARRIED";

	label define PUBAGNCY
		0 "IAP"
		1 "NO"
		2 "YES ONCE/TWICE"
		3 "YES MORE THAN 2"
		8 "DK"
		9 "NA";

	label define WANTADS
		0 "IAP"
		1 "NO"
		2 "YES ONCE/TWICE"
		3 "YES MRE THN TWCE"
		8 "DK"
		9 "NA";

	label define ASKHELP
		0 "IAP"
		1 "NO"
		2 "YES ONCE OR TWCE"
		3 "YES MRE THN TWCE"
		8 "DONT KNOW"
		9 "NA";

	label define ECONSUP
		0 "IAP"
		1 "PNSION PRI/ST/SS"
		2 "UNEMPLOY BENFITS"
		3 "SPOUSE/PARTNER"
		4 "OTHR FAMLY MMBRS"
		5 "SOC ASSIS/WELFRE"
		6 "OCCASIONAL WORK"
		7 "OTHER"
		8 "DONT KNOW"
		9 "NA";

	label define DAILYWRK
		0 "IAP"
		1 "I am free to decide how my daily work is organized"
		2 "I can decide within certain limits"
		3 "I am not free to decide how my daily work is organized"
		8 "CANT CHOOSE"
		9 "NA";

	label define TIMEOFF
		0 "IAP"
		1 "Not difficult at all"
		2 "Not too difficult"
		3 "Somewhat difficult"
		4 "Very difficult"
		8 "CANT CHOOSE"
		9 "NA";

	label define JBINTFAM
		0 "IAP"
		1 "Always"
		2 "Often"
		3 "Sometimes"
		4 "Hardly ever"
		5 "Never"
		8 "CANT CHOOSE"
		9 "NA";

	label define NEWJOB
		0 "IAP"
		1 "Very helpful"
		2 "Quite helpful"
		3 "Not so helpful"
		4 "Not helpful at all"
		8 "CANT CHOOSE"
		9 "NA";

	label define JBTRAIN
		0 "IAP"
		1 "Yes"
		2 "No"
		8 "CANT CHOOSE"
		9 "NA";

	label define JOBEASY
		0 "IAP"
		1 "Very easy"
		2 "Fairly easy"
		3 "Neither easy nor difficult"
		4 "Fairly difficult"
		5 "Very difficult"
		8 "CANT CHOOSE"
		9 "NA";

	label define OTHERWRK
		0 "IAP"
		1 "No"
		2 "Yes, mostly as an employee"
		3 "Yes, mostly on a self-employed basis"
		4 "Yes, other"
		8 "CANT CHOOSE"
		9 "NA";

	label define SPWRKGVT
		0 "IAP"
		1 "GOVERNMENT"
		2 "PRIVATE EMPLOYER"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define HAPUNHAP
		0 "IAP"
		1 "VERY HAPPY"
		2 "FAIRLY HAPPY"
		3 "NOT VERY HAPPY"
		4 "NOT AT ALL HAPPY"
		8 "DK"
		9 "NA";

	label define PREMARS1
		0 "IAP"
		1 "ALWAYS WRONG"
		2 "ALMOST ALWAYS WRONG"
		3 "WRONG ONLY SOMETIMES"
		4 "NOT WRONG AT ALL"
		8 "DK"
		9 "NA";

	label define ABDEFCT1
		0 "IAP"
		1 "DEFINITELY SHOULD ALLOW IT"
		2 "PROBABLY SHOULD ALLOW IT"
		3 "PROBABLY SHOULD NOT ALLOW IT"
		4 "DEFINITELY SHOULD NOT ALLOW IT"
		8 "DK"
		9 "NA";

	label define TAXCHEAT
		0 "IAP"
		1 "NOT WRONG"
		2 "A BIT WRONG"
		3 "WRONG"
		4 "SERIOUSLY WRONG"
		8 "DK"
		9 "NA";

	label define CONCONG
		0 "IAP"
		1 "COMPLETE CONFIDENCE"
		2 "A GREAT DEAL OF CONFIDENCE"
		3 "SOME CONFIDENCE"
		4 "VERY LITTLE CONFIDENCE"
		5 "NO CONFIDENCE AT ALL"
		8 "DK"
		9 "NA";

	label define CHURHPOW
		0 "IAP"
		1 "FAR TOO MUCH PWR"
		2 "TOO MUCH POWER"
		3 "RIGHT AMOUNT PWR"
		4 "TOO LITTLE POWER"
		5 "FAR TOO LITL PWR"
		8 "CANT CHOOSE"
		9 "NA";

	label define GODCHNGE
		0 "IAP"
		1 "DON'T BELIEVE NOW, NEVER HAVE"
		2 "DON'T BELIEVE NOW, USED TO"
		3 "BELIEVE NOW, DIDN'T USED TO"
		4 "BELIEVE NOW, ALWAYS HAVE"
		8 "DK"
		9 "NA";

	label define AFTERLIF
		0 "IAP"
		1 "YES, DEFINITELY"
		2 "YES, PROBABLY"
		3 "NO, PROBABLY NOT"
		4 "NO, DEFINITELY NOT"
		8 "DK"
		9 "NA";

	label define BIBLE1
		0 "IAP"
		1 "WORD OF GOD, TAKE LITERALLY"
		2 "GOD-INSPIRED, SHOULDN'T TAKE LITERALLY"
		3 "BOOK OF FABLES, BY MAN"
		4 "THIS DOES NOT APPLY TO ME"
		8 "DK"
		9 "NA";

	label define MARELKID
		0 "IAP"
		1 "PROTESTANT"
		2 "CATHOLIC"
		3 "JEWISH"
		4 "ORTHODOX GREEK, RUSSIAN, ETC"
		5 "MOSLEM"
		6 "OTHER -SPECIFY"
		7 "NO RELIGION"
		8 "DK"
		9 "NA";

	label define MADENKID
		0 "IAP"
		10000 "AMER BAPTIST ASSOC"
		11000 "AMER BAPTIST CH IN USA"
		12000 "NATL BAPTIST CONV. OF AMERICA"
		13000 "NATL BAPTIST CONV., USA, INC"
		14000 "SOUTHERN BAPTIST CONV"
		15000 "OTHER BAPTIST CHS"
		18000 "BAPTIST, DK WHICH"
		20000 "AFRICAN METH EPIS CH"
		21000 "AME ZION CHURCH"
		22000 "UNITED METH CHURCH"
		23000 "OTHER METH CH"
		28000 "METHODIST, DK WHICH"
		30000 "AMER LUTHERAN CH"
		31000 "LUTH CH IN AMER"
		32000 "LUTH CH--MO SYNOD"
		33000 "WISC EVAN LUTH SYNOD"
		34000 "OTHER LUTH CHS"
		35000 "EVAN LUTHERAN"
		38000 "LUTHERAN, DK WHICH"
		40000 "PRESBYT CH IN USA"
		41000 "UNITED PRESBYT CH IN USA"
		42000 "OTHER PRESBYT CHS"
		43000 "PRESBYT CH USA"
		48000 "PRESBYTERIAN, DK WHICH"
		50000 "EPISCOPAL CHURCH"
		60002 "EVANGELIGAL CONGREGATIONAL"
		60003 "IND. BIBLE FELLOWSHIP"
		60006 "NEW TESTAMENT CHRISTIAN"
		60008 "MORAVIAN"
		60009 "CHRIST. AND MISSION. ALLIANCE"
		60010 "ADVENTIST"
		60012 "ASSEMBLY OF GOD"
		60013 "FREE METHODIST"
		60014 "APOSTOLIC"
		60015 "AFRICAN METHODIST"
		60016 "FREE WILL BAPTIST"
		60018 "HOLINESS, NAZARENE"
		60020 "BRETHREN CHURCH"
		60023 "UNITED BRETHREN, BRETH. IN CHRIST"
		60024 "INDEPENDENT"
		60031 "CHRISTIAN; CENTRAL CHRISTIAN"
		60032 "CHRISTIAN REFORM"
		60033 "CHRISTIAN SCIENTIST"
		60035 "CHURCH OF CHRIST"
		60036 "CHURCHES OF GOD -EXC. CHRIST & HOLINESS"
		60037 "CHURCH OF GOD IN CHRIST"
		60038 "HOLINESS"
		60040 "CONGREGATIONALIST, 1ST CONG"
		60041 "COMMUNITY CHURCH"
		60042 "COVENANT"
		60043 "DUTCH REFORM"
		60044 "DISCIPLES OF CHRIST"
		60045 "EVANGELICAL, EVANGELIST"
		60046 "EVANGELICAL REFORMED"
		60047 "EVANGELIST FREE CHURCH"
		60048 "FIRST CHURCH"
		60049 "1ST CHRISTIAN DISC OF CHRIST"
		60050 "1ST REFORMED"
		60051 "1ST CHRISTIAN"
		60052 "FULL GOSPEL"
		60056 "HOLINESS; CH OF HOLINESS"
		60057 "PILGRIM HOLINESS"
		60058 "JEHOVAH WITNESSES"
		60059 "LDS"
		60060 "LDS--MORMON"
		60061 "LDS--REORGANIZED"
		60062 "LDS--JESUS CHRIST; CH OF JESUS LDS"
		60063 "MENNONITE"
		60064 "MORMON"
		60065 "NAZARENE"
		60066 "PENTECOSTAL ASSEMBLY OF GOD"
		60068 "PENTECOSTAL"
		60070 "QUAKER"
		60071 "REFORMED"
		60076 "SALVATION ARMY"
		60077 "7TH DAY ADVENTIST"
		60078 "SANCTIFIED, SANCTIFICATION"
		60080 "UNITARIAN, UNIVERSALIST"
		60081 "UNITED CHURCH OF CHRIST"
		60082 "UNITED CHURCH, UNITY CHURCH"
		60083 "WESLEYAN"
		60084 "WESLEYAN METHODIST--PILGRIM"
		60092 "MISSION COVENANT"
		60093 "MISSIONARY BAPTIST"
		60097 "OTHER FUNDAMENTALIST"
		60098 "FEDERATED CHURCH"
		60102 "CHARISMATIC CHRISTIAN"
		60112 "EVANGELIGAL METHODIST"
		60113 "WORLDWIDE CHURCH OF GOD"
		60117 "MISSIONARY"
		60119 "UNITED CHURCH OF CANADA"
		60120 "EVANGELICAL UNITED BRETHREN"
		60133 "PRIMITIVE BAPTIST"
		60138 "APOSTOLIC CHURCH"
		60141 "NEW BIRTH CHRISTIAN"
		60149 "POLISH CATHOLIC"
		60150 "ZWINGLIAN"
		60156 "LIVING CHURCH OF GOD"
		60181 "CHRISTIAN BORN AGAIN"
		60184 "CHURCH OF GOD ISRAELITE"
		70000 "NO DENOM. GIVEN OR NON-DENOM CH"
		99998 "DK"
		99999 "NA";

	label define ATTENDMA
		0 "IAP"
		1 "NEVER"
		2 "LESS THAN ONCE A YR"
		3 "ABOUT ONCE OR TWICE A YR"
		4 "SEVERAL TIMES A YR"
		5 "ABOUT ONCE A MONTH"
		6 "2-3 TIMES A MONTH"
		7 "NEARLY EVERY WEEK"
		8 "EVERY WEEK"
		9 "SEVERAL TIMES A WEEK"
		10 "NO FATHER-MOTHER PRESENT"
		98 "CANT SAY OR CANT REMEMBER"
		99 "NA";

	label define PRAYFREQ
		0 "IAP"
		1 "NEVER"
		2 "LESS THAN ONCE A YEAR"
		3 "ABOUT ONCE OR TWICE A YEAR"
		4 "SEVERAL TIMES A YEAR"
		5 "ABOUT ONCE A MONTH"
		6 "2-3 TIMES A MONTH"
		7 "NEARLY EVERY WEEK"
		8 "EVERY WEEK"
		9 "SEVERAL TIMES A WEEK"
		10 "ONCE A DAY"
		11 "SEVERAL TIMES A DAY"
		98 "DK"
		99 "NA";

	label define V4688_A
		0 "IAP"
		1 "Never"
		2 "Less than once a year"
		3 "About once or twice a year"
		4 "Several times a year"
		5 "About once a month"
		6 "2-3 times a month"
		7 "Nearly every week"
		8 "Every week"
		9 "Several times a week"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define FEELREL
		0 "IAP"
		1 "EXTREME RELGIOUS"
		2 "VERY RELIGIOUS"
		3 "SOMWHAT RELGIOUS"
		4 "NOT REL OR NON"
		5 "SOMEWHAT NON-REL"
		6 "VERY NON-REL"
		7 "EXTREME NON-REL"
		8 "CANT CHOOSE"
		9 "NA";

	label define SCHLPRAY
		0 "IAP"
		1 "YES, DEFINITELY"
		2 "YES, PROBABLY"
		3 "NO, PROBABLY"
		4 "NO, DEFINITELY"
		8 "DK"
		9 "NA";

	label define ANTIREL
		0 "IAP"
		1 "DEFINITELY SHOULD"
		2 "PROBABLY SHOULD"
		3 "PROBABLY SHOULD NOT"
		4 "DEFINITELY SHOULD NOT"
		8 "DK"
		9 "NA";

	label define BEFAIR
		0 "IAP"
		1 "ADVNTGE ALL TIME"
		2 "ADVNTGE MST TIME"
		3 "FAIR MST OF TIME"
		4 "FAIR ALL OF TIME"
		8 "CANT CHOOSE"
		9 "NA";

	label define CANTRUST
		0 "IAP"
		1 "ALWAYS TRUSTED"
		2 "USUALLY TRUSTED"
		3 "USUAL NOT TRSTED"
		4 "ALWYS NOT TRSTED"
		8 "CANT CHOOSE"
		9 "NA";

	label define VOLWKPOL
		0 "IAP"
		1 "NO"
		2 "YES 1-2 TIMES"
		3 "YES 3-5 TIMES"
		4 "YES 6/MORE TIMES"
		8 "DK"
		9 "NA";

	label define RELTRUTH
		0 "IAP"
		1 "LITTLE TRUTH ANY"
		2 "BASIC TRUTH MANY"
		3 "TRUTH IN ONE"
		8 "CANT CHOOSE"
		9 "NA";

	label define CARRIGHT
		0 "IAP"
		1 "DEFINITE RIGHT"
		2 "SOME RIGHT"
		3 "NO RIGHT"
		8 "CANT CHOOSE"
		9 "NA";

	label define CARDO
		0 "IAP"
		1 "DEF TLL PLCE WAS"
		2 "PRB TLL PLCE WAS"
		3 "PRB TLL PLCE NOT"
		4 "DEF TLL PLCE NOT"
		8 "CANT CHOOSE"
		9 "NA";

	label define GEOMOBIL
		0 "IAP"
		1 "I have lived in different countries"
		2 "I have lived in different places in the same country"
		3 "I have lived in different neighborhoods in the same place"
		4 "I have always lived in the same neighborhood"
		8 "DONT KNOW"
		9 "NA";

	label define RELMARRY
		0 "IAP"
		1 "Definitely accept"
		2 "Probably accept"
		3 "Probably not accept"
		4 "Definitely not accept"
		8 "DONT KNOW"
		9 "NA";

	label define RELEXT1
		0 "IAP"
		1 "Definitely"
		2 "Probably"
		3 "Probably not"
		4 "Definitely not"
		8 "DONT KNOW"
		9 "NA";

	label define REINCAR
		0 "IAP"
		1 "Yes, definitely"
		2 "Yes, probably"
		3 "No, probably not"
		4 "No, definitely not"
		8 "DONT KNOW"
		9 "NA";

	label define VISTHOLY
		0 "IAP"
		1 "Never"
		2 "Less than once a year"
		3 "About once or twice a year"
		4 "Several times a year"
		5 "About once a month or more"
		8 "DONT KNOW"
		9 "NA";

	label define RELSPRT
		0 "IAP"
		1 "I follow a religion and consider myself to be a spiritual person interested in the sacred and the sup"
		2 "I follow a religion, but dont consider myself to be a spiritual person interested in the sacred and"
		3 "I dont follow a religion, but consider myself to be a spiritual person interested in the sacred and"
		4 "I dont follow a religion and dont consider myself to be a spiritual person interested in the sacred"
		8 "DONT KNOW"
		9 "NA";

	label define OBEYTHNK
		0 "IAP"
		1 "TO BE OBEDIENT"
		2 "TO THINK FOR THEMSELVES"
		8 "DK"
		9 "NA";

	label define POSTMAT1
		0 "IAP"
		1 "MAINTAIN ORDER"
		2 "GIVE PEOPLE MORE SAY"
		3 "CONTROL PRICES"
		4 "PROTECT FREE SPEECH"
		8 "DK"
		9 "NA";

	label define NATURGOD
		0 "IAP"
		1 "NATURE CREATED BY GOD"
		2 "NATURE SACRED IN ITSELF"
		3 "NATURE IMPORT, BUT NOT SACRED"
		8 "DK"
		9 "NA";

	label define GRNPRICE
		0 "IAP"
		1 "VERY WILLING"
		2 "FAIRLY WILLING"
		3 "NEITHER WILLING NOR UNWILL"
		4 "NOT VERY WILLING"
		5 "NOT AT ALL WILLING"
		8 "DK"
		9 "NA";

	label define SCITEST1
		0 "IAP"
		1 "DEFINITELY TRUE"
		2 "PROBABLY TRUE"
		3 "PROBABLY NOT TRUE"
		4 "DEFINITELY NOT TRUE"
		8 "DK"
		9 "NA";

	label define CARSGEN
		0 "IAP"
		1 "EXTREMELY DANGEROUS"
		2 "VERY DANGEROUS"
		3 "SOMEWHAT DANGEROUS"
		4 "NOT VERY DANGEROUS"
		5 "NOT DANGEROUS"
		8 "DK"
		9 "NA";

	label define CARSTEN
		0 "IAP"
		1 "CERTAIN TO HAPPEN"
		2 "VERY LIKELY TO HAPPEN"
		3 "FAIRLY LIKELY TO HAPPEN"
		4 "NOT VERY LIKELY TO HAPPEN"
		5 "NOT AT ALL LIKELY"
		8 "CANNOT CHOSE"
		9 "NA";

	label define PUBDECID
		0 "IAP"
		1 "GOV. LET PEOPLE DECIDE"
		2 "GOV. MAKE LAWS"
		8 "DK"
		9 "NA";

	label define BUSDECID
		0 "IAP"
		1 "GOV. LET BUSNESSES DECIDE"
		2 "GOV. MAKE LAWS"
		8 "DK"
		9 "NA";

	label define USDOENUF
		0 "IAP"
		1 "More than enough"
		2 "About the right amount, or"
		3 "Too little?"
		8 "DON'T KNOW"
		9 "No answer";

	label define RECYCLE
		0 "IAP"
		1 "ALWAYS"
		2 "OFTEN"
		3 "SOMETIMES"
		4 "NEVER"
		5 "NOT AVAILABLE"
		8 "DK"
		9 "NA";

	label define NOMEAT
		0 "IAP"
		1 "ALWAYS"
		2 "OFTEN"
		3 "SOMETIMES"
		4 "NEVER"
		5 "NO CAR, DONT DRIVE"
		9 "NA";

	label define DRIVLESS
		0 "IAP"
		1 "ALWAYS"
		2 "OFTEN"
		3 "SOMETIMES"
		4 "NEVER"
		5 "NO CAR, DONT DRIVE"
		8 "DK"
		9 "NA";

	label define GRNSIGN
		0 "IAP"
		1 "YES, I HAVE"
		2 "NO, I HAVE NOT"
		8 "DK"
		9 "NA";

	label define COMTYPE
		0 "IAP"
		1 "BIG CITY"
		2 "SUBURBS, OUTSKIRTS"
		3 "SMALL TOWN"
		4 "COUNTRY VILLAGE"
		5 "FARM, CNTRY HOME"
		8 "DK"
		9 "NA";

	label define GENEGEN
		0 "IAP"
		1 "EXTREMELY DANGEROUS FOR ENVIRONMENT"
		2 "VERY DANGEROUS"
		3 "SOMEWHAT DANGEROUS"
		4 "NOT VERY DANGEROUS"
		5 "NOT DANGEROUS AT ALL FOR ENVIRONMENT"
		8 "CAN T CHOOSE"
		9 "NA";

	label define AMPROGRN
		0 "IAP"
		1 "MORE THAN ENOUGH"
		2 "ABOUT THE RIGHT AMOUNT"
		3 "OR, TOO LITTLE"
		8 "CANT CHOOSE"
		9 "NA";

	label define BIZPEOP
		0 "IAP"
		1 "BUSINESS AND INDUSTRY"
		2 "OR PEOPLE IN GENERAL"
		3 "BOTH EQUALLY"
		8 "DK"
		9 "NA";

	label define GOVTBIZ
		0 "IAP"
		1 "GOVERNMENT"
		2 "OR BUSINESS AND INDUSTRY?"
		3 "BOTH EQUALLY"
		8 "CANT CHOOSE"
		9 "NA";

	label define PEOPGOVT
		0 "IAP"
		1 "PEOPLE IN GENERAL"
		2 "OR GOVERNMENT"
		3 "BOTH EQUALLY"
		8 "CANT CHOOSE"
		9 "NA";

	label define NUKEACC
		0 "IAP"
		1 "VERY LIKELY"
		2 "LIKELY"
		3 "UNLIKELY"
		4 "VERY UNLIKELY"
		5 "CANT CHOOSE"
		8 "DK"
		9 "NA";

	label define INFOBIZ
		0 "IAP"
		1 "A GREAT DEAL OF TRUST"
		2 "QUITE A LOT OF TRUST"
		3 "SOME TRUST"
		4 "NOT MUCH TRUST"
		5 "HARDLY ANY TRUST"
		8 "DK"
		9 "NA";

	label define INFONEWS
		0 "IAP"
		1 "A GREAT DEAL OF TRUST"
		2 "QUITE A LOT OF TRUST"
		3 "SOME TRUST"
		4 "NOT MUCH TRUST"
		5 "HARDLY ANY TRUST"
		8 "DK";

	label define EXCLDIMM
		0 "IAP"
		1 "AGREE STRONGLY"
		2 "AGREE"
		3 "NEITHER AGREE NOR DISAGREE"
		4 "DISAGREE"
		5 "DISAGREE STRONGLY"
		8 "CANT CHOOSE"
		9 "NA";

	label define TOPPROB1
		0 "IAP"
		1 "Health care"
		2 "Education"
		3 "Crime"
		4 "The environment"
		5 "Immigration"
		6 "The economy"
		7 "Terrorism"
		8 "Poverty"
		9 "None of these"
		98 "DON'T KNOW"
		99 "No answer";

	label define TRUST5
		0 "IAP"
		1 "You can’t be too careful"
		5 "Most people can be trusted"
		8 "DON'T KNOW"
		9 "No answer";

	label define FAIR5
		0 "IAP"
		1 "Most people would try to take advantage"
		5 "Most people would try to be fair"
		6 "6 Can’t choose"
		8 "DON'T KNOW"
		9 "No answer";

	label define GRNCON
		0 "IAP"
		1 "Not at all concerned"
		5 "Very concerned"
		8 "DON'T KNOW"
		9 "No answer";

	label define ENPRBUS
		0 "IAP"
		1 "Air pollution"
		2 "Chemicals and pesticides"
		3 "Water shortage"
		4 "Water pollution"
		5 "Nuclear waste"
		6 "Domestic waste disposal"
		7 "Climate change"
		8 "Genetically modified foods"
		9 "Using up our natural resources"
		10 "None of these"
		98 "DON'T KNOW"
		99 "No answer";

	label define KNWCAUSE
		0 "IAP"
		1 "Know nothing at all"
		5 "Know a great deal"
		8 "DON'T KNOW"
		9 "No answer";

	label define FUTENRGY
		0 "IAP"
		1 "Coal, oil and natural gas"
		2 "Nuclear power"
		3 "Solar, wind or water power"
		4 "Fuels made from crops"
		5 "Fuels made from waste"
		6 "None of them"
		7 "Can’t choose"
		8 "DON'T KNOW"
		9 "No answer";

	label define HELPHARM
		0 "IAP"
		1 "Agree strongly"
		2 "Agree"
		3 "Neither agree nor disagree"
		4 "Disagree"
		5 "Disagree strongly"
		8 "DON'T KNOW"
		9 "No answer";

	label define TEMPGEN1
		0 "IAP"
		1 "Extremely dangerous for the environment"
		2 "Very dangerous"
		3 "Somewhat dangerous"
		4 "Not very dangerous, or"
		5 "Not dangerous at all for the environment?"
		8 "DON'T KNOW"
		9 "No answer";

	label define BUSGRN
		0 "IAP"
		1 "Heavy fines for businesses that damage the environment"
		2 "Use the tax system to reward businesses that protect the environment"
		3 "More information and education for businesses about the advantages of protecting the environment"
		8 "DON'T KNOW"
		9 "No answer";

	label define PEOPGRN
		0 "IAP"
		1 "Heavy fines for people who damage the environment"
		2 "Use the tax system to reward people who protect the environment"
		3 "More information and education for people about the advantages of protecting the environment"
		8 "DON'T KNOW"
		9 "No answer";

	label define REDCEHME
		0 "IAP"
		1 "Always"
		2 "Often"
		3 "Sometimes"
		4 "Never"
		8 "DON'T KNOW"
		9 "No answer";

	label define CLSENEI
		0 "IAP"
		1 "VERY CLOSE"
		2 "CLOSE"
		3 "NOT VERY CLOSE"
		4 "NOT CLOSE AT ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define MOVENEI
		0 "IAP"
		1 "VERY WILLING"
		2 "FAIRLY WILLING"
		3 "NEITHER WILLING NOR UNWILLING"
		4 "FAIRLY UNWILLING"
		5 "VERY UNWILLING"
		8 "CANT CHOOSE"
		9 "NA";

	label define ONENATN
		0 "IAP"
		1 "ESSENTIAL TO REMAIN ONE NATION"
		2 "ALLOWED TO BECOME SEPARATE"
		8 "CANT CHOOSE"
		9 "NA";

	label define AMBORNIN
		0 "IAP"
		1 "VERY IMPORTANT"
		2 "FAIRLY IMPORTANT"
		3 "NOT VERY IMPORTANT"
		4 "NOT IMPORTANT AT ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define PROUDDEM
		0 "IAP"
		1 "VERY PROUD"
		2 "SOMEWHAT PROUD"
		3 "NOT VERY PROUD"
		4 "NOT PROUD AT ALL"
		8 "CANT CHOOSE"
		9 "NA";

	label define MELTPOT1
		0 "IAP"
		1 "BETTER FOR SOCIETY MAINTAIN DISTINCT"
		2 "BETTER IF GROUPS ADAPT AND BLEND INTO"
		8 "DONT KNOW"
		9 "NA";

	label define LETIN1
		0 "IAP"
		1 "INCREASED A LOT"
		2 "INCREASED A LITTLE"
		3 "REMAIN THE SAME AS IT IS"
		4 "REDUCED A LITTLE"
		5 "REDUCED A LOT"
		8 "CANT CHOOSE"
		9 "NA";

	label define RES161
		0 "IAP"
		1 "IN THIS COMMUNITY"
		2 "IN A DIFFERENT COMMUNITY SAME STATE"
		3 "IN A DIFFERENT STATE IN AMERICA"
		4 "OUTSIDE AMERICA"
		8 "DK"
		9 "NA";

	label define ABROAD
		0 "IAP"
		1 "NEVER LIVED IN OTHER COUNTRIES"
		2 "LESS THAN 1 YEAR IN ALL"
		3 "1 TO 4 YEARS IN ALL"
		4 "5 YEARS OR LONGER"
		8 "DK"
		9 "NA";

	label define SPKHOME1
		0 "IAP"
		1 "ENGLISH"
		2 "SPANISH"
		3 "POLISH"
		4 "FRENCH"
		5 "HEBREW"
		6 "RUSSIAN"
		7 "TAGALOG"
		8 "CHINESE"
		9 "URDU"
		10 "ITALIAN"
		11 "ROMANIAN"
		12 "GERMAN"
		13 "PASHTU"
		14 "CHAMORRO"
		15 "UKRANIAN"
		16 "HUNGARIAN"
		17 "TURKISH"
		18 "KHMER"
		19 "KOREAN"
		20 "NAVAJO"
		21 "MALAYAM"
		22 "ARABIC"
		23 "FARSI-PERSIAN"
		24 "SERBIAN"
		25 "LITHUANIAN"
		27 "THAI"
		28 "GUJARATI"
		30 "DARI"
		31 "SLOVAK"
		32 "JAPANESE"
		33 "PORTUGUESE"
		34 "VAJUN"
		35 "YIDDDISH"
		36 "CREOLE"
		37 "VIETNAMESE"
		38 "NORWEGIAN"
		39 "MALAYSIAN"
		40 "LATIN"
		41 "CZECH"
		42 "HINDU"
		43 "HAKKA"
		44 "SWEDISH"
		45 "VESAYA"
		46 "ARMENIAN"
		47 "AMERICAN SIGN LANGUAGE"
		48 "CAMBODIAN"
		49 "SPANGLISH"
		50 "TIGRIGNA"
		51 "ORIYA"
		52 "HNONG"
		53 "MARATHI"
		54 "WOLOF"
		55 "PANGASIAN"
		56 "SCOTTISH"
		57 "MACEDNIAN"
		58 "HAWAIIAN"
		59 "FULANI"
		60 "GREEK"
		61 "CAJUN"
		62 "AKKADIAN"
		98 "DK"
		99 "NA";

	label define SPKHOME2
		0 "IAP; NO SECOND LANGUAGE"
		1 "ENGLISH"
		2 "SPANISH"
		3 "POLISH"
		4 "FRENCH"
		5 "HEBREW"
		6 "RUSSIAN"
		7 "TAGALOG"
		8 "CHINESE"
		9 "URDU"
		10 "ITALIAN"
		11 "ROMANIAN"
		12 "GERMAN"
		13 "PASHTU"
		14 "CHAMORRO"
		15 "UKRANIAN"
		16 "HUNGARIAN"
		17 "TURKISH"
		18 "KHMER"
		19 "KOREAN"
		20 "NAVAJO"
		21 "MALAYAM"
		22 "ARABIC"
		23 "FARSI-PERSIAN"
		24 "SERBIAN"
		25 "LITHUANIAN"
		27 "THAI"
		28 "GUJARATI"
		30 "DARI"
		31 "SLOVAK"
		32 "JAPANESE"
		33 "PORTUGUESE"
		34 "VAJUN"
		35 "YIDDDISH"
		36 "CREOLE"
		37 "VIETNAMESE"
		38 "NORWEGIAN"
		39 "MALAYSIAN"
		40 "LATIN"
		41 "CZECH"
		42 "HINDU"
		43 "HAKKA"
		44 "SWEDISH"
		45 "VESAYA"
		46 "ARMENIAN"
		47 "AMERICAN SIGN LANGUAGE"
		48 "CAMBODIAN"
		49 "SPANGLISH"
		50 "TIGRIGNA"
		51 "ORIYA"
		52 "HNONG"
		53 "MARATHI"
		54 "WOLOF"
		55 "PANGASIAN"
		56 "SCOTTISH"
		57 "MACEDNIAN"
		58 "HAWAIIAN"
		59 "FULANI"
		60 "GREEK"
		61 "CAJUN"
		62 "AKKADIAN"
		98 "DK"
		99 "NA";

	label define SPKLANG3
		0 "IAP; NO THIRD LANGUAGE"
		1 "ENGLISH"
		2 "SPANISH"
		3 "POLISH"
		4 "FRENCH"
		5 "HEBREW"
		6 "RUSSIAN"
		7 "TAGALOG"
		8 "CHINESE"
		9 "URDU"
		10 "ITALIAN"
		11 "ROMANIAN"
		12 "GERMAN"
		13 "PASHTU"
		14 "CHAMORRO"
		15 "UKRANIAN"
		16 "HUNGARIAN"
		17 "TURKISH"
		18 "KHMER"
		19 "KOREAN"
		20 "NAVAJO"
		21 "MALAYAM"
		22 "ARABIC"
		23 "FARSI-PERSIAN"
		24 "SERBIAN"
		25 "LITHUANIAN"
		27 "THAI"
		28 "GUJARATI"
		30 "DARI"
		31 "SLOVAK"
		32 "JAPANESE"
		33 "PORTUGUESE"
		34 "VAJUN"
		35 "YIDDDISH"
		36 "CREOLE"
		37 "VIETNAMESE"
		38 "NORWEGIAN"
		39 "MALAYSIAN"
		40 "LATIN"
		41 "CZECH"
		42 "HINDU"
		43 "HAKKA"
		44 "SWEDISH"
		45 "VESAYA"
		46 "ARMENIAN"
		47 "AMERICAN SIGN LANGUAGE"
		48 "CAMBODIAN"
		49 "SPANGLISH"
		50 "TIGRIGNA"
		51 "ORIYA"
		52 "HNONG"
		53 "MARATHI"
		54 "WOLOF"
		55 "PANGASIAN"
		56 "SCOTTISH"
		57 "MACEDNIAN"
		58 "HAWAIIAN"
		59 "FULANI"
		60 "GREEK"
		61 "CAJUN"
		62 "AKKADIAN"
		98 "DK"
		99 "NA";

	label define PARCIT
		0 "IAP"
		1 "BOTH WERE CITIZENS OF AMERICA"
		2 "ONLY FATHER WAS A CITIZEN OF AMERICA"
		3 "ONLY MOTHER WAS A CITIZEN OF AMERICA"
		4 "NEITHER WAS A CITIZEN OF AMERICA"
		8 "DK"
		9 "NA";

	label define NAFTA1
		0 "IAP"
		1 "A LOT"
		2 "QUITE A BIT"
		3 "NOT MUCH"
		4 "NOTHING AT ALL"
		8 "DK"
		9 "NA";

	label define NAFTA2
		0 "IAP"
		1 "BENEFITS"
		2 "DOES NOT BENEFIT"
		3 "DONT KNOW"
		4 "HAVE NEVER HEARD OF NAFTA"
		8 "DK"
		9 "NA";

	label define SOCID1
		0 "IAP"
		1 "CURRENT OCCUPATION"
		2 "RACE ETHNIC BACKGROUND"
		3 "GENDER"
		4 "AGE GROUP"
		5 "RELIGION"
		6 "POLITICAL PARTY"
		7 "NATIONALITY"
		8 "FAMILY OR MARITAL STATUS"
		9 "SOCIAL CLASS"
		10 "REGION"
		98 "DONT KNOW"
		99 "NO ANSWER";

	label define CITWORLD
		0 "IAP"
		1 "Agree strongly"
		2 "Agree"
		3 "Neither agree nor disagree"
		4 "Disagree"
		5 "Disagree strongly"
		8 "Can't Choose"
		9 "No answer";

	label define AMPROUD1
		0 "IAP"
		1 "VERY PROUD"
		2 "SOMEWHAT PROUD"
		3 "NOT VERY PROUD"
		4 "NOT PROUD AT ALL"
		5 "I AM NOT AMERICAN"
		8 "CANT CHOOSE"
		9 "NA";

	label define NAFTA2A
		0 "IAP"
		1 "GREATLY BENEFITS"
		2 "LARGELY BENEFITS"
		3 "SOMEWHAT BENEFITS"
		4 "BENEFITS ONLY A LITTLE"
		5 "DOES NOT BENEFIT AT ALL"
		7 "HAVE NEVER HEARD OF NAFTA"
		8 "DONT KNOW"
		9 "NA";

	label define SHORTCOM
		0 "IAP"
		1 "Agree Strongly"
		2 "Agree"
		3 "Neither Agree nor Disagree"
		4 "Disagree"
		8 "Don't know"
		9 "No answer";

	label define LETIN1A
		0 "IAP"
		1 "Increased a lot"
		2 "Increased a little"
		3 "Remain the same as it is"
		4 "Reduced a little"
		5 "Reduced a lot, or"
		8 "Don't know"
		9 "No answer";

	label define IMMASSIM
		0 "IAP"
		1 "Immigrants should retain their culture of origin and not adopt American culture"
		2 "Immigrants should retain their culture of origin and also adopt American culture"
		3 "Immigrants should give up their culture of origin and adopt American culture"
		8 "Can't Choose"
		9 "No answer";

	label define VOTEELEC
		0 "IAP"
		1 "NOT AT ALL IMPORTANT"
		7 "VERY IMPORTANT"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define RELMEET
		0 "IAP"
		1 "Should definitely be allowed"
		2 "Should probably be allowed"
		3 "Should probably not be allowed"
		4 "Should definitely not be allowed"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define SIGNDPET
		0 "IAP"
		1 "Have done it in the past yr"
		2 "Have done it in the more distant past"
		3 "Have not done it but might do it"
		4 "Have not done it and would never do it"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define GRPPARTY
		0 "IAP"
		1 "Belong and actively participate"
		2 "Belong but dont participate"
		3 "Used to belong"
		4 "Never belonged"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define ACTLAW
		0 "IAP"
		1 "VERY LIKELY"
		2 "FAIRLY LIKELY"
		3 "NOT VERY LIKELY"
		4 "NOT AT ALL LIKELY"
		8 "CANT CHOOSE"
		9 "NA";

	label define POLINT1
		0 "IAP"
		1 "VERY INTERESTED"
		2 "FAIRLY INTERESTED"
		3 "NOT VERY INTERESTED"
		4 "NOT AT ALL INTERESTED"
		8 "CANT CHOOSE"
		9 "NA";

	label define DISCPOL
		0 "IAP"
		1 "OFTEN"
		2 "SOMETIMES"
		3 "RARELY"
		4 "NEVER"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define POWERUN
		0 "IAP"
		1 "UN HAS TOO MUCH POWER"
		2 "UN HAS ABOUT RIGHT AMOUNT OF POWER"
		3 "UN HAS TOO LITTLE POWER"
		4 "DONT KNOW WHAT UN IS"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define GOVNGOS
		0 "IAP"
		1 "SHOULD BE LEFT TO GOVT REPRESENTATIVES"
		2 "CITIZEN ORGS SHOULD BE INVOLVED"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define UNRGHTS
		0 "IAP"
		1 "UN SHOULD INTERVENE"
		2 "UN SHOULD NOT INTERVENE"
		3 "DONT KNOW WHAT THE UN IS"
		8 "CANT CHOOSE"
		9 "NO ANSWER";

	label define ELECVOTE
		0 "IAP"
		1 "VERY HONEST"
		2 "SOMEWHAT HONEST"
		3 "NEITHER HONEST NOR DISHONEST"
		4 "SOMEWHAT DISHONEST"
		5 "VERY DISHONEST"
		8 "CANT CHOOSE"
		9 "NA";

	label define ELECFAIR
		0 "IAP"
		1 "VERY FAIR"
		2 "SOMEWHAT FAIR"
		3 "NEITHER FAIR NOR UNFAIR"
		4 "SOMEWHAT UNFAIR"
		5 "VERY UNFAIR"
		8 "CANT CHOOSE"
		9 "NA";

	label define SERVEPEO
		0 "IAP"
		1 "VERY COMMITTED"
		2 "SOMEWHAT COMMITTED"
		3 "NOT VERY COMMITTED"
		4 "NOT AT ALL COMMITTED"
		8 "CANT CHOOSE"
		9 "NA";

	label define FIXMISTK
		0 "IAP"
		1 "VERY LIKELY"
		2 "SOMEWHAT LIKELY"
		3 "NOT VERY LIKELY"
		4 "NOT AT ALL LIKELY"
		8 "CANT CHOOSE"
		9 "NA";

	label define CORRUPTN
		0 "IAP"
		1 "Hardly anyone is involved"
		2 "A small number of people are involved"
		3 "A moderate number of people are involved"
		4 "A lot of people are involved"
		5 "Almost everyone is involved"
		8 "CANT CHOOSE"
		9 "NA";

	label define DEMTODAY
		0 "VERY POORLY"
		10 "VERY WELL"
		98 "CANT CHOOSE"
		99 "NA";

	label define DEMRGHTS
		0 "IAP"
		1 "SHOULDNT BE RESTRICTED BY GOVT"
		2 "SHOULD BE RESTRICTED IF GOVT THINK NECESSARY"
		8 "CANT CHOOSE"
		9 "NA";

	label define GVTRGHTS
		0 "IAP"
		1 "Not at all important"
		7 "Very important"
		8 "DON'T KNOW"
		9 "No answer";

	label define POLINTER
		0 "IAP"
		1 "Have done it in the past year"
		2 "Have done it in the more distant past"
		3 "Have not done it but might do it"
		4 "Have not done it and would never do  it"
		8 "Can't Choose"
		9 "No answer";

	label define POLNEWS
		0 "IAP"
		1 "Several times a day"
		2 "Once a day"
		3 "5-6 days a week"
		4 "3-4 days a week"
		5 "1-2 days a week"
		6 "Less than 1 day a week"
		7 "Never"
		8 "Can’t choose"
		9 "No answer";

	label define CRIMLOSE
		0 "IAP"
		1 "Not at all important"
		7 "Very Imporant"
		8 "Can't Choose"
		9 "No answer";

	label define LEFTRGHT
		0 "Left"
		10 "Right"
		98 "Don't know"
		99 "No answer";

	label define CREATION
		0 "IAP"
		1 "GOD CREATED MAN"
		2 "MAN HAS EVOLVED"
		3 "MAN HAS EVOLVED, BUT GOD GUIDED"
		4 "OTHER"
		8 "CANT CHOOSE"
		9 "NA";

	label define SCITESTY
		0 "IAP"
		1 "Definitely true"
		2 "Probably true"
		3 "Probably not true"
		4 "Definitely not true"
		8 "CANT CHOOSE"
		9 "NA";

	label define FORBDCOM
		0 "IAP"
		1 "YES FORBID"
		2 "NO NOT FORBID"
		8 "DK"
		9 "NA";

	label define FORBDMAR
		0 "IAP"
		1 "FORBID MARRIAGE"
		2 "NOT FORBID MAR"
		8 "DK"
		9 "NA";

	label define ALLOWCOM
		0 "IAP"
		1 "YES,ALLOW"
		2 "NO, NOT ALLOW"
		8 "DK"
		9 "NA";

	label define ALLOWMAR
		0 "IAP"
		1 "ALLOW MARRIAGE"
		2 "NOT ALLOW MARRIAGE"
		8 "DK"
		9 "NA";

	label define CIDEWHO
		0 "IAP"
		1 "HUSBAND OR WIFE"
		2 "PARTNER OR LOVER"
		3 "SON OR DAUGHTER"
		4 "OTHER RELATIVE"
		5 "FRIEND"
		6 "NEIGHBOR"
		7 "CO-WORKER"
		8 "ACQUAINTANCE"
		9 "PATIENT"
		10 "OTHER"
		98 "DK"
		99 "NA";

	label define CIDEAGE
		0 "IAP"
		1 "10 YEARS OR UNDER"
		2 "11-20"
		3 "21-40"
		4 "41 YEAR OR OLDER"
		8 "DK"
		9 "NA";

	label define CIDERACE
		0 "IAP"
		1 "BLACK"
		2 "WHITE"
		3 "HISPANIC"
		4 "OTHER"
		8 "DK"
		9 "NA";

	label define CIDEREG
		0 "FOREIGN"
		1 "NEW ENGLAND"
		2 "MIDDLE ATLANTIC"
		3 "E. NOR. CENTRAL"
		4 "W. NOR. CENTRAL"
		5 "SOUTH ATLANTIC"
		6 "E. SOU. CENTRAL"
		7 "W. SOU. CENTRAL"
		8 "MOUNTAIN"
		9 "PACIFIC"
		98 "DK"
		99 "NA";

	label define AIDSKNOW
		7 "7 OR MORE"
		8 "DK"
		9 "NA";

	label define AIDSDEAD
		0 "IAP"
		1 "LIVING"
		2 "DIED"
		8 "DK"
		9 "NA";

	label define SUIWHO
		0 "IAP"
		1 "HUSBAND OR WIFE"
		2 "PARTNER OR LOVE"
		3 "SON OR DAUGHTER"
		4 "OTHER RELATIVE"
		5 "FRIEND"
		6 "NEIGHBOR"
		7 "CO-WORKER"
		8 "ACQUAINTANCE"
		9 "PATIENT"
		10 "OTHER"
		98 "DK"
		99 "NA";

	label define AIDSSCH
		0 "IAP"
		1 "SUPPORT"
		2 "OPPOSE"
		8 "NO OPINION"
		9 "NA";

	label define PARTNERS
		0 "NO PARTNERS"
		1 "1 PARTNER"
		2 "2 PARTNERS"
		3 "3 PARTNERS"
		4 "4 PARTNERS"
		5 "5-10 PARTNERS"
		6 "11-20 PARTNERS"
		7 "21-100 PARTNERS"
		8 "MORE THAN 100 PARTNERS"
		9 "1 OR MORE, # unknown"
		95 "SEVERAL"
		98 "DK"
		99 "NA";

	label define FRNDSEX
		0 "IAP"
		1 "HAD SEX WITH FRIEND"
		2 "NOT SELECTED"
		8 "DK"
		9 "NA";

	label define ACQNTSEX
		0 "IAP"
		1 "SEX W ACQUAINTANCE"
		2 "NOT SELECTED"
		8 "DK"
		9 "NA";

	label define PIKUPSEX
		0 "IAP"
		1 "HAD SEX WITH PICK-UP"
		2 "NOT SELECTED"
		8 "DK"
		9 "NA";

	label define PAIDSEX
		0 "IAP"
		1 "HAD SEX FOR PAY"
		2 "NOT SELECTED"
		8 "DK"
		9 "NA";

	label define OTHERSEX
		0 "IAP"
		1 "HAD SEX WITH OTHER"
		2 "NOT SELECTED"
		8 "DK"
		9 "NA";

	label define SEXSEX
		0 "IAP"
		1 "EXCLUSIVELY MALE"
		2 "BOTH MALE AND FEMALE"
		3 "EXCLUSIVELY FEMALE"
		8 "DK"
		9 "NA";

	label define SEXFREQ
		0 "NOT AT ALL"
		1 "ONCE OR TWICE"
		2 "ONCE A MONTH"
		3 "2-3 TIMES A MONTH"
		4 "WEEKLY"
		5 "2-3 PER WEEK"
		6 "4+ PER WEEK"
		8 "DK"
		9 "NA";

	label define SEXFREQ1
		0 "IAP"
		1 "YES"
		2 "N0"
		8 "DONT KNOW"
		9 "NA";

	label define NUMWOMEN
		989 "989 OR HIGHER"
		990 "DASH OR SLASH"
		991 "SOME,1+"
		992 "X"
		993 "GARBLED TEXT"
		994 "SEVERAL"
		995 "MANY,LOTS"
		996 "N.A"
		997 "REFUSED"
		998 "DK"
		999 "NA";

	label define PARTOPEN
		990 "-"
		997 "REFUSED"
		998 "DK"
		999 "NA";

	label define EVSTRAY
		0 "IAP"
		1 "YES"
		2 "NO"
		3 "NEVER MARRIED"
		8 "DK"
		9 "NA";

	label define CONDOM
		0 "IAP"
		1 "USED LAST TIME"
		2 "NOT USED"
		8 "DK"
		9 "NA";

	label define RELATSEX
		0 "IAP"
		1 "YES, IN RELATIONSHIP"
		2 "NO, NO RELATIONSHIP"
		8 "DK"
		9 "NA";

	label define IDU30
		0 "IAP"
		1 "WITHIN THE PAST 30 DAYS"
		2 "MORE THAN 30 DAYS AGO BUT WITHIN THE PAST 12 MONTHS"
		3 "MORE THAN 12 MONTHS AGO BUT WITHIN THE PAST 3 YEARS"
		4 "MORE THAN 3 YEARS AGO"
		8 "DK"
		9 "NA";

	label define HIVTEST1
		0 "IAP"
		198001 "Jan 1980"
		198099 "NA  1980"
		198299 "NA  1982"
		198503 "Mar 1985"
		198599 "NA  1985"
		198698 "DK  1986"
		198699 "NA  1986"
		198799 "NA  1987"
		198999 "NA  1989"
		199006 "Jun 1990"
		199098 "DK  1990"
		199099 "NA  1990"
		199198 "DK  1991"
		199199 "NA  1991"
		199298 "DK  1992"
		199299 "NA  1992"
		199398 "DK  1993"
		199399 "NA  1993"
		199498 "DK  1994"
		199499 "NA  1994"
		199509 "Sep 1995"
		199598 "DK  1995"
		199599 "NA  1995"
		199698 "DK  1996"
		199699 "NA  1996"
		199798 "DK  1997"
		199799 "NA  1997"
		199898 "DK  1998"
		199899 "NA  1998"
		199998 "DK  1999"
		199999 "NA  1999"
		200098 "DK  2000"
		200099 "NA  2000"
		200198 "DK  2001"
		200199 "NA  2001"
		200298 "DK  2002"
		200299 "NA  2002"
		200398 "DK  2003"
		200399 "NA  2003"
		200498 "DK  2004"
		200499 "NA  2004"
		200598 "DK  2005"
		200599 "NA  2005"
		200612 "Dec 2006"
		200698 "DK  2006"
		200699 "NA  2006"
		999898 "DK  DK"
		999999 "NA  NA";

	label define HIVTEST2
		0 "IAP"
		1 "Private doctor or HMO office"
		2 "Counselling and testing site"
		3 "Hospital"
		4 "Clinic"
		5 "Jail or prison"
		6 "Home"
		7 "Somewhere else"
		8 "DK"
		9 "NA";

	label define SEXORNT
		0 "IAP"
		1 "Gay, lesbian, or homosexual"
		2 "Bisexual"
		3 "Heterosexual or straight"
		8 "DONT KNOW"
		9 "NA";

	label define SIBORDER
		95 "ONLY CHILD"
		98 "DK"
		99 "NA";

	label define GENETEST
		0 "IAP"
		1 "A GREAT DEAL"
		2 "NOT VERY MUCH"
		3 "NOTHING AT ALL"
		7 "REFUSED"
		8 "DONT KNOW"
		9 "NA";

	label define GENEGOOD
		0 "IAP"
		1 "GOOD > HARM"
		2 "HARM > GOOD"
		3 "IT DEPENDS"
		7 "REFUSED"
		8 "DONT KNOW"
		9 "NA";

	label define GENEGOO1
		0 "IAP"
		1 "HARM > GOOD"
		2 "GOOD > HARM"
		7 "REFUSED"
		8 "DONT KNOW"
		9 "NA";

	label define GENEGOO2
		0 "IAP"
		1 "GOOD > HARM"
		2 "HARM > GOOD"
		8 "DONT KNOW"
		9 "NA";

	label define GENESELF
		0 "IAP"
		1 "HAVE TEST"
		2 "NOT HAVE TEST"
		7 "REFUSED"
		8 "DONT KNOW"
		9 "NA";

	label define GENEABRT
		0 "IAP"
		1 "HAVE ABORTION"
		2 "NO ABORTION"
		7 "REFUSED"
		8 "DONT KNOW"
		9 "NA";

	label define GENEDEF1
		0 "IAP"
		1 "DOWNS SYNDROME"
		2 "MENTAL RETARDATION"
		3 "SPINA BIFIDA"
		4 "MUSCULAR DYSTROPHY"
		5 "CYSTIC FIBROSIS"
		6 "CEREBRAL PALSY"
		7 "CRIPPLING DISEASES"
		10 "BLIND,DEAF"
		11 "MISSING LIMBS"
		12 "MAJOR DEFORMITIES"
		13 "LIFE-THREATENING DEFORM"
		14 "HANDICAPPED"
		15 "PHYSICAL DEFECTS"
		20 "SICKLE CELL ANEMIA"
		21 "RH FACTOR"
		22 "HEMOPHILIA"
		30 "ADDICTION TO DRUGS"
		31 "AIDS"
		35 "MULTIPLE SCLEROSIS"
		60 "HEART"
		61 "KIDNEYS"
		62 "SIAMESE TWINS"
		70 "INCURABLE DISEASE"
		71 "TOURETTES SYNDROME"
		72 "SEXUAL TRANSMITTED DISEASES"
		73 "DIABETES"
		74 "BIRTH DEFECTS"
		75 "CANCER"
		76 "PSYCHOLOGICAL PROBLEMS"
		77 "NEUROLOGICAL PROBLEMS"
		78 "HYDROCEPHALUS"
		79 "HUNTINGTONS CHOREA"
		80 "TAY-SACHS"
		81 "REYES SYNDROME"
		90 "UNABLE TO TAKE CARE OF SELF"
		95 "OTHER"
		98 "DONT KNOW"
		99 "NA";

	label define ROLEMA
		0 "IAP"
		1 "VERY GOOD"
		2 "GOOD"
		3 "FAIRLY GOOD"
		4 "FAIRLY BAD"
		5 "VERY BAD"
		8 "DONT KNOW"
		9 "NA";

	label define CHLDEDUC
		0 "IAP"
		1 "MUCH BETTER"
		2 "BETTER"
		3 "ABOUT THE SAME"
		4 "WORSE"
		5 "MUCH WORSE"
		8 "DONT KNOW"
		9 "NA";

	label define INFFILMS
		0 "IAP"
		1 "VERY POSITIVE"
		2 "POSITIVE"
		3 "NEUTRAL"
		4 "NEGATIVE"
		5 "VERY NEGATIVE"
		8 "DONT KNOW"
		9 "NA";

	label define SPPREGNT
		0 "IAP-NO ISSP"
		1 "SPEND MUCH MORE"
		2 "SPEND MORE"
		3 "SPEND SAME"
		4 "SPEND LESS"
		5 "SPEND MUCH LESS"
		8 "CANT CHOOSE"
		9 "NA";

	label define PROB1
		0 "IAP"
		995 "CANT UNDERSTAND ANSWER"
		996 "NO PROBLEMS"
		998 "DONT KNOW"
		999 "NA";

	label define POVLINE
		0 "NOT IMPUTABLE"
		1 "POOR"
		2 "POOR -- IMPUTED"
		3 "NOT POOR"
		4 "NOT POOR -- IMPUTED"
		5 "BORDERLINE"
		6 "BORDERLINE -- IMPUTED"
		9 "NA";

	label define INCDEF
		0 "NOT IMPUTABLE"
		1 "< -10,000"
		2 "-10,000 TO -5,000"
		3 "-4,999 TO -1,000"
		4 "-999 TO 999"
		5 "1,000 TO 4,999"
		6 "5,000 TO 9,999"
		7 "10,000 TO 20,000"
		8 "20,001 +"
		9 "NA";

	label define RPTCOWRK
		0 "IAP"
		1 "REPORT COWORKER"
		2 "ASK COWORKER TO STOP"
		3 "REPORT COWRKR IF BEHAV CONT"
		4 "NOT GET INVOLVED"
		8 "DK"
		9 "NA";

	label define SECPRVCY
		0 "IAP"
		1 "FAVOR INDIV RIGHT"
		2 "FAVOR GOVT RIGHT"
		8 "DK"
		9 "NA";

	label define SECDIPLO
		0 "IAP"
		1 "DEFINITELY SHOULD"
		2 "PROBABLY SHOULD"
		3 "PROBABLY SHOULD NOT"
		4 "DEFINITELY SHOULD NOT"
		8 "DONT KNOW"
		9 "NA";

	label define CHKFINAN
		0 "IAP"
		1 "Definitely should"
		2 "Probably should"
		3 "Probably should not"
		4 "Definitely should not"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define KNOMENTL
		0 "IAP"
		1 "NOTHING ABOUT MENTAL HEALTH"
		2 "WHETHER CURRENTLY CONSULTING"
		3 "EVER CONSULTED A MENTAL"
		4 "EVER CONSULTED & DIAGNOSIS"
		5 "DIAGNOSIS & CONFIDENT. INFO"
		8 "DONT KNOW"
		9 "NA";

	label define TAKEARMS
		0 "IAP"
		1 "REPRIMAND"
		2 "DISMISS MILITARY"
		3 "ONE YEAR PRISON"
		4 "5-9 YEARS PRISON"
		5 "10-20 YRS PRISON"
		6 "LIFE IN PRISON"
		8 "DK"
		9 "NA";

	label define LEAKINFO
		0 "IAP"
		1 "REPRIMAND"
		2 "DISMISS MILITARY"
		3 "1 YEAR IN PRISON"
		4 "5-9 YRS PRISON"
		5 "10-20 YRS PRISON"
		6 "LIFE IN PRISON"
		8 "DK"
		9 "NA";

	label define SPYENEMY
		0 "IAP"
		1 "REPRIMAND"
		2 "DISMISS/MILITARY"
		3 "ONE YR IN PRISON"
		4 "5-9 YRS IN PRISN"
		5 "10-20 YRS PRISON"
		6 "LIFE IN PRISON"
		8 "DK"
		9 "NA";

	label define SPYFREND
		0 "IAP"
		1 "REPRIMAND"
		2 "DISMISS/MILITARY"
		3 "ONE YEAR PRISON"
		4 "5-9 YEARS PRISON"
		5 "10-20 YRS PRISON"
		6 "LIFE IN PRISON"
		8 "DK"
		9 "NA";

	label define PUNARMS
		0 "IAP"
		1 "REPRIMAND"
		2 "DISMISSAL FROM THE MILITARY/FIRED BY THE GOVERNMENT"
		3 "ONE YEAR IN PRISON"
		4 "5-9 YEARS IN PRISON"
		5 "10-20 YEARS IN PRISON"
		6 "LIFE IN PRISON"
		8 "DK"
		9 "NA";

	label define COMSTEAL
		0 "IAP"
		1 "REPRIMAND"
		2 "DISMISSAL FROM THE MILITARY-FIRED BY THE GOVERNMENT"
		3 "ONE YEAR IN PRISON"
		4 "5-9 YEARS IN PRISON"
		5 "10-20 YEARS IN PRISON"
		6 "LIFE IN PRISON"
		8 "DK"
		9 "NA";

	label define USSPY
		0 "IAP"
		1 "GREATER"
		2 "ABOUT THE SAME"
		3 "LESS"
		8 "DK"
		9 "NA";

	label define ETHNIC
		0 "UNCODEABLE & IAP"
		1 "AFRICA"
		2 "AUSTRIA"
		3 "FRENCH CANADA"
		4 "OTHER CANADA"
		5 "CHINA"
		6 "CZECHOSLOVAKIA"
		7 "DENMARK"
		8 "ENGLAND & WALES"
		9 "FINLAND"
		10 "FRANCE"
		11 "GERMANY"
		12 "GREECE"
		13 "HUNGARY"
		14 "IRELAND"
		15 "ITALY"
		16 "JAPAN"
		17 "MEXICO"
		18 "NETHERLANDS"
		19 "NORWAY"
		20 "PHILIPPINES"
		21 "POLAND"
		22 "PUERTO RICO"
		23 "RUSSIA"
		24 "SCOTLAND"
		25 "SPAIN"
		26 "SWEDEN"
		27 "SWITZERLAND"
		28 "WEST INDIES"
		29 "OTHER"
		30 "AMERICAN INDIAN"
		31 "INDIA"
		32 "PORTUGAL"
		33 "LITHUANIA"
		34 "YUGOSLAVIA"
		35 "RUMANIA"
		36 "BELGIUM"
		37 "ARABIC"
		38 "OTHER SPANISH"
		39 "NON-SPAN WINDIES"
		40 "OTHER ASIAN"
		41 "OTHER EUROPEAN"
		97 "AMERICAN ONLY"
		98 "NO ETH MENTIONED"
		99 "NA";

	label define ETHNUM
		1 "NAMES 1"
		2 "CHOOSES 1 OF 2+"
		3 "CANNOT CHOOSE 1"
		4 "CANNOT NAME ANY"
		5 "UNCODEABLE";

	label define SPETHNUM
		0 "IAP"
		1 "NAMES 1"
		2 "CHOOSES 1 OF 2+"
		3 "CANNOT CHOOSE 1"
		4 "CANNOT NAME ANY"
		5 "UNCODEABLE";

	label define RACESEE
		0 "IAP"
		1 "WHITE"
		2 "BLACK"
		3 "OTHER"
		4 "HISPANIC"
		5 "BLACK AND WHITE"
		6 "SPANISH"
		7 "FILIPINO"
		8 "AMERICAN INDIAN"
		9 "ASIAN"
		10 "YELLOW"
		11 "MEXICAN"
		12 "BROWN"
		13 "LATINO"
		14 "MIDDLE EASTERN"
		15 "PUERTO RICAN"
		16 "INDIAN"
		17 "ALASKA NATIVE"
		18 "PACIFIC ISLANDER"
		19 "CUBAN"
		20 "JAPANESE"
		21 "ORIENTAL"
		22 "TRINIDAD"
		98 "DK"
		99 "NA";

	label define RACEDBTF
		0 "IAP"
		1 "NO DOUBT"
		2 "SOME DOUBT, PRETTY SURE"
		3 "A LOT OF DOUBT, PRETTY UNSURE"
		4 "COMPLETELY UNSURE"
		8 "DK"
		9 "NA";

	label define RACESELF
		0 "IAP"
		1 "WHITE"
		2 "BLACK"
		3 "OTHER"
		8 "DK"
		9 "NA";

	label define HISPANIC
		0 "IAP"
		1 "NOT HISPANIC"
		2 "MEXICAN, MEXICAN AMERICAN, CHICANO/A"
		3 "PUERTO RICAN"
		4 "CUBAN"
		5 "SALVADORIAN"
		6 "GUATEMALAN"
		7 "PANAMANIAN"
		8 "NICARAGUAN"
		9 "COSTA RICAN"
		10 "CENTRAL AMERICAN"
		11 "HONDURAN"
		15 "DOMINICAN"
		16 "WEST INDIAN"
		20 "PERUVIAN"
		21 "EQUADORIAN"
		22 "COLUMBIAN"
		23 "VENEZUELAN"
		24 "Argentinian"
		25 "Chilean"
		30 "SPANISH"
		31 "BASQUE"
		35 "FILIPINO/A"
		40 "LATIN AMERICAN"
		41 "SOUTH AMERICAN"
		45 "LATIN"
		46 "LATINO/A"
		47 "HISPANIC"
		50 "OTHER, NOT SPECIFIED"
		98 "DK"
		99 "NA";

	label define RACECEN1
		0 "IAP"
		1 "WHITE"
		2 "BLACK OR AFRICAN AMERICAN"
		3 "AMERICAN INDIAN OR ALASKA NATIVE"
		4 "ASIAN INDIAN"
		5 "CHINESE"
		6 "FILIPINO"
		7 "JAPANESE"
		8 "KOREAN"
		9 "VIETNAMESE"
		10 "OTHER ASIAN"
		11 "NATIVE HAWAIIAN"
		12 "GUAMANIAN OR CHAMORRO"
		13 "SAMOAN"
		14 "OTHER PACIFIC ISLANDER"
		15 "SOME OTHER RACE"
		16 "HISPANIC"
		98 "DK"
		99 "NA";

	label define DIFRACE1
		0 "IAP"
		1 "R NOT SERIOUS"
		2 "HISPANIC CHOSEN OVER WHITE"
		3 "HISPANIC CHOSEN OVER BLACK"
		4 "PHYSICALLY DOESN'T MATCH RACE"
		5 "RACIALLY MIXED"
		6 "R REJECTS RACIAL CATEGORIES"
		7 "R REJECTS 'BLACK' LABEL"
		8 "IS MARRIED TO MEMBER OF ANOTHER RACE"
		9 "WHITE OR BLACK CHOSEN OVER HISPANIC"
		10 "FEELINGS, NOT BIOLOGY MATTERS"
		11 "IDENTIFIES WITH OTHER THAN 'REAL' RACE"
		12 "OTHER HISPANIC COMPLICATIONS"
		98 "DK"
		99 "NA";

	label define USCITZN
		0 "IAP"
		1 "A U.S. Citizen"
		2 "Not a U.S. Citizen"
		3 "A U.S. CITIZEN BORN IN PUERTO RICO, THE U.S. VIRGIN ISLANDS, OR THE NORTHERN MARIANAS ISLANDS"
		4 "BORN OUTSIDE OF THE UNITED STATES TO PARENTS WHO WERE U.S CITIZENS AT THAT TIME (IF VOLUNTEERED)"
		8 "DONT KNOW"
		9 "NA";

	label define FUCITZN
		0 "IAP"
		1 "Currently applying for U.S. citizenship"
		2 "Planning to apply for U.S. citizenship"
		3 "Not planning to apply to U.S. citizenship"
		4 "NOT ELIGIBLE TO BECOME A U.S. CITIZEN (IF VOLUNTEERED)"
		8 "DONT KNOW"
		9 "NA";

	label define VETYEARS
		0 "NONE"
		1 "LESS THAN 2 YRS"
		2 "2 TO 4  YEARS"
		3 "MORE THAN 4 YRS"
		4 "SOME,DK HOW LONG"
		9 "NA";

	label define VETKIND
		0 "SEVERAL"
		1 "AIR FORCE GUARD"
		2 "AIR FORCE"
		3 "NAVY"
		4 "ARMY"
		5 "NATIONAL GUARD"
		6 "MARINES"
		7 "COAST GUARD"
		8 "PUBLIC HEALTH"
		9 "NA";

	label define WORKDY
		0 "IAP"
		1 "MON TO FRI"
		2 "MON TO FRI,SAT"
		3 "MON TO FRI,SUN"
		4 "WKEND PLUS"
		5 "NO SCHEDULE"
		9 "NA";

	label define WORKHR
		0 "IAP"
		1 "REG DAY"
		2 "EVE"
		3 "NIGHTS"
		4 "VARIES"
		5 "OTHER"
		9 "NA";

	label define DWELLING
		0 "IAP"
		1 "TRAILER"
		2 "DETACHED 1-FAM HOUSE"
		3 "2 UNITS SIDE BY SIDE"
		4 "2 UNITS-ONE ABOVE"
		5 "3-4 FAM HOUSE"
		6 "ROW HOUSE"
		7 "APARTMENT HOUSE"
		8 "APARTMENT-4 STORIES"
		9 "APARTMENT-COMMERCIAL"
		10 "OTHER"
		98 "DK"
		99 "NA";

	label define DWELNGH
		0 "IAP"
		1 "FAR ABOVE AVERAGE"
		2 "ABOVE AVERAGE"
		3 "AVERAGE"
		4 "BELOW AVERAGE"
		5 "FAR BELOW AVERAGE"
		9 "NA";

	label define DWELOWN
		0 "IAP"
		1 "OWN OR IS BUYING"
		2 "PAYS RENT"
		3 "OTHER"
		8 "DK"
		9 "NA";

	label define WORDA
		0 "INCORRECT"
		1 "CORRECT"
		9 "NA";

	label define WORDSUM
		99 "DID NOT TRY";

	label define OTHREL1
		0 "IAP"
		1 "BIBLE STUDY,CLASS"
		2 "CHOIR, CHORAL, CONCERT, PLAY"
		3 "DISCUSSION GROUP"
		4 "LECTURE"
		5 "GOVERNING BOARD, ETC"
		6 "PREACHING, TAUGHT SUNDAY SCHOOL"
		7 "PRAYER GROUP, BREAKFAST, MEETING"
		8 "COUNSELING"
		9 "WORSHIP SERVICE"
		10 "OTHER, RELIGIOUS"
		11 "OTHER, NON-RELIGIOUS"
		98 "DK"
		99 "NA";

	label define RELIGID
		0 "IAP"
		1 "FUNDAMENTALIST"
		2 "EVANGELICAL"
		3 "MAINLINE"
		4 "LIBERAL"
		5 "NONE"
		6 "OTHER"
		8 "DK"
		9 "NA";

	label define RELID1
		0 "IAP"
		1 "PENTECOSTAL"
		2 "FUNDAMENTALIST"
		3 "EVANGELICAL"
		4 "MAINLINE"
		5 "LIBERAL"
		6 "NONE"
		7 "OTHER (SPECIFY)"
		8 "DK"
		9 "NA";

	label define CATHID
		0 "IAP"
		1 "TRADITIONAL"
		2 "MODERATE"
		3 "LIBERAL"
		4 "NONE"
		6 "OTHER (SPECIFY)"
		8 "DK"
		9 "NA";

	label define RELATE1
		0 "IAP"
		1 "HEAD OF HOUSEHOLD"
		2 "SPOUSE"
		3 "CHILD"
		4 "SON OR DAUGHTER-IN-LAW"
		5 "GRAND OR GREAT-GRANDCHILD"
		6 "PARENT OR PARENT-IN-LAW"
		7 "OTHER RELATIVE"
		8 "NON-RELATIVE"
		9 "NA";

	label define OLD1
		97 "97 or older"
		98 "DK"
		99 "NA";

	label define MAR1
		0 "IAP"
		1 "MARRIED"
		2 "WIDOWED"
		3 "DIVORCED"
		4 "SEPARATED"
		5 "NEVER MARRIED"
		8 "DK"
		9 "NA";

	label define AWAY1
		0 "IAP"
		1 "YES"
		8 "DK"
		9 "NA";

	label define WHERE1
		0 "IAP"
		1 "ANOTHER HOUSEHOLD"
		2 "TRAVELING"
		3 "INSTITUTION"
		4 "OTHER, DK"
		9 "NA";

	label define RELHHD1
		0 "IAP"
		1 "HEAD OF HOUSEHOLD"
		2 "SPOUSE"
		3 "PARTNER,FIANCE-E-,BOYFRIEND,GIRLFRIEND,ETC"
		4 "CHILD,NATURAL OR ADOPTED,STEPCHILD"
		5 "GRANDCHILD,GREAT-GRANCHILD"
		6 "SON-IN-LAW,DAUGHTER-IN-LAW"
		7 "PARENT"
		8 "PARENT-IN-LAW"
		9 "GRANDPARENT,GREAT-GRANDPARENT"
		10 "UNCLE OR AUNT"
		11 "NIECE OR NEPHEW"
		12 "COUSIN"
		13 "BROTHER,SISTER-FULL,HALF, OR STEP SIBLING-"
		14 "SIBLING-IN-LAW"
		15 "OTHER RELATIVE-GREAT-AUNT,GRANDNIECE,ETC.-"
		16 "ROOMMATE,HOUSEMATE"
		17 "FRIEND"
		18 "CHILD OF NON-RELATIVE"
		19 "OTHER NON-RELATIVE-EMPLOYEE,BOARDER-"
		98 "DK"
		99 "NA";

	label define HEFINFO
		0 "IAP"
		1 "1ST PERSON"
		2 "2ND PERSON"
		3 "3RD PERSON"
		4 "4TH PERSON"
		5 "5TH PERSON"
		6 "6TH PERSON"
		7 "7TH PERSON"
		8 "8TH PERSON"
		9 "9TH PERSON"
		10 "10TH PERSON"
		11 "11TH PERSON"
		12 "12TH PERSON"
		13 "13TH PERSON"
		14 "14TH PERSON"
		22 "NOT IN HOUSEHOLD"
		98 "DK"
		99 "NA";

	label define HHRACE
		0 "IAP"
		1 "WHITE"
		2 "BLACK"
		3 "AMER INDIAN"
		4 "ASIATIC, ORIENTAL"
		5 "OTHER, MIXED"
		8 "DK"
		9 "NA";

	label define RESPNUM
		0 "IAP"
		1 "1ST PERSON"
		2 "2ND PERSON"
		3 "3RD PERSON"
		4 "4TH PERSON"
		5 "5TH PERSON"
		6 "6TH PERSON"
		7 "7TH PERSON"
		8 "8TH PERSON"
		9 "9TH PERSON"
		10 "10TH PERSON"
		11 "11TH PERSON"
		12 "12TH PERSON"
		13 "13TH PERSON"
		14 "14TH PERSON"
		99 "NA";

	label define HHTYPE
		0 "IAP"
		1 "1ADLT,0KIDS"
		2 "1ADLT,1+KIDS"
		3 "2ADLTS,MAR,0KIDS"
		4 "2ADLTS,MAR,1+KIDS"
		5 "2ADLTS,DKMAR,0KIDS"
		6 "2ADLTS,DKMAR,1+KIDS"
		7 "2AS,NTMAR,NTREL,OPSEX,0KS"
		8 "2AS,NTMAR,NTREL,OPSEX,1+KS"
		9 "2AS,NTMAR,NTREL,SMSEX,0KS"
		10 "2AS,NTMAR,NTREL,SMSEX,1+KS"
		11 "2ADLTS,NTMAR,REL,0KIDS"
		12 "2ADLTS,NTMAR,REL,1+KIDS"
		13 "2ADLTS,NTMAR,DKREL,0KIDS"
		14 "2ADLTS,NTMAR,DKREL,1+KIDS"
		15 "2AS,NTMAR,NTREL,DKSEX,0KS"
		16 "2AS,NTMAR,NTREL,DKSEX,1+KS"
		20 "3ADLT,0MAR,SP,0KIDS"
		21 "3ADLTS,0MAR,SP,REL,0KIDS"
		22 "3ADLTS,0MAR,REL,SP,0KIDS"
		23 "3ADLTS,0MAR,REL,0KIDS"
		24 "3ADLTS,0MAR,SP,NTREL,0KIDS"
		25 "3ADLTS,0MAR,NTREL,SP,0KIDS"
		26 "3ADLTS,0MAR,REL,0KIDS"
		27 "3ADLTS,0MAR,NTREL,REL,0KIDS"
		28 "3ADLTS,0MAR,NTREL,0KIDS"
		30 "3ADLTS,1MAR,SP,0KIDS"
		31 "3ADLTS,1MAR,SP,REL,0KIDS"
		32 "3ADLTS,1MAR,REL,SP,0KIDS"
		33 "3ADLTS,1MAR,REL,REL,0KIDS"
		34 "3ADLTS,1MAR,SP,NTREL,0KIDS"
		35 "3ADLTS,1MAR,NTREL,SP,0KIDS"
		36 "3ADLTS,1MAR,REL,NTREL,0KIDS"
		37 "3ADLTS,1MAR,NTREL,REL,0KIDS"
		38 "3ADLTS,1MAR,NTREL,0KIDS"
		40 "3ADLTS,2MAR,SP,0KIDS"
		41 "3ADLTS,2MAR,SP,REL,0KIDS"
		42 "3ADLTS,2MAR,REL,SP,0KIDS"
		43 "3ADLTS,2MAR,REL,0KIDS"
		44 "3ADLTS,2MAR,SP,NTREL,0KIDS"
		45 "3ADLTS,2MAR,REL,NTREL,0KIDS"
		46 "3ADLTS,2MAR,REL,NTREL,0KIDS"
		47 "3ADLTS,2MAR,NTREL,REL,0KIDS"
		48 "3ADLTS,2MAR,NTREL,0KIDS"
		50 "3ADLTS,3MAR,SP,0KIDS"
		51 "3ADLTS,3MAR,SP,REL,0KIDS"
		52 "3ADLTS,3MAR,SP,REL,0KIDS"
		53 "3ADLTS,3MAR,REL,0KIDS"
		54 "3ADLTS,3MAR,SP,NTREL,0KIDS"
		55 "3ADLTS,3MAR,NTREL,SP,0KIDS"
		56 "3ADLTS,3MAR,REL,NTREL,0KIDS"
		57 "3ADLTS,3MAR,NTREL,REL,0KIDS"
		58 "3ADLTS,3MAR,NTREL,0KIDS"
		100 "4+ADLTS,0MAR,0KIDS"
		101 "4+ADLTS,1MAR,0KIDS"
		102 "4+ADLTS,2MAR,0KIDS"
		103 "4+ADLTS,3MAR,0KIDS"
		104 "4+ADLTS,4+MAR,0KIDS"
		120 "3ADLT,0MAR,SP,1+KIDS"
		121 "3ADLTS,0MAR,SP,REL,1+KIDS"
		122 "3ADLTS,0MAR,REL,SP,1+KIDS"
		123 "3ADLTS,0MAR,REL,1+KIDS"
		124 "3ADLTS,0MAR,SP,NTREL,1+KIDS"
		125 "3ADLTS,0MAR,NTREL,SP,1+KIDS"
		126 "3ADLTS,0MAR,REL,1+KIDS"
		127 "3ADLTS,0MAR,NTREL,REL,1+KIDS"
		128 "3ADLTS,0MAR,NTREL,1+KIDS"
		130 "3ADLTS,1MAR,SP,1+KIDS"
		131 "3ADLTS,1MAR,SP,REL,1+KIDS"
		132 "3ADLTS,1MAR,REL,SP,1+KIDS"
		133 "3ADLTS,1MAR,REL,REL,1+KIDS"
		134 "3ADLTS,1MAR,SP,NTREL,1+KIDS"
		135 "3ADLTS,1MAR,NTREL,SP,1+KIDS"
		136 "3ADLTS,1MAR,REL,NTREL,1+KIDS"
		137 "3ADLTS,1MAR,NTREL,REL,1+KIDS"
		138 "3ADLTS,1MAR,NTREL,1+KIDS"
		140 "3ADLTS,2MAR,SP,1+KIDS"
		141 "3ADLTS,2MAR,SP,REL,1+KIDS"
		142 "3ADLTS,2MAR,REL,SP,1+KIDS"
		143 "3ADLTS,2MAR,REL,1+KIDS"
		144 "3ADLTS,2MAR,SP,NTREL,1+KIDS"
		145 "3ADLTS,2MAR,REL,NTREL,1+KIDS"
		146 "3ADLTS,2MAR,REL,NTREL,1+KIDS"
		147 "3ADLTS,2MAR,NTREL,REL,1+KIDS"
		148 "3ADLTS,2MAR,NTREL,1+KIDS"
		150 "3ADLTS,3MAR,SP,1+KIDS"
		151 "3ADLTS,3MAR,SP,REL,1+KIDS"
		152 "3ADLTS,3MAR,SP,REL,1+KIDS"
		153 "3ADLTS,3MAR,REL,1+KIDS"
		154 "3ADLTS,3MAR,SP,NTREL,1+KIDS"
		155 "3ADLTS,3MAR,NTREL,SP,1+KIDS"
		156 "3ADLTS,3MAR,REL,NTREL,1+KIDS"
		157 "3ADLTS,3MAR,NTREL,REL,1+KIDS"
		158 "3ADLTS,3MAR,NTREL,1+KIDS"
		200 "4+ADLTS,0MAR,1+KIDS"
		201 "4+ADLTS,1MAR,1+KIDS"
		202 "4+ADLTS,2MAR,1+KIDS"
		203 "4+ADLTS,3MAR,1+KIDS"
		204 "4+ADLTS,4+MAR,1+KIDS"
		998 "DK"
		999 "NA";

	label define HHTYPE1
		0 "IAP"
		1 "MARRIED COUPLE, NO CHILDREN"
		2 "SINGLE PARENT"
		3 "OTHER FAM., NO CHILDREN"
		4 "SINGLE ADULT"
		5 "COHAB COUPLE, NO CHILDREN"
		6 "NON-FAMILY, NO CHILDREN"
		8 "UNSURE, NO CHILDREN"
		11 "MARRIED COUPLE W CHILDREN"
		13 "OTHER FAMILY W CHILDREN"
		15 "COHAB COUPLE W CHILDREN"
		16 "NON-FAMILY W CHILDREN"
		18 "UNSURE W CHILDREN"
		99 "NA";

	label define FAMGEN
		0 "IAP"
		1 "1 GEN"
		2 "2 GENS, CHILDREN"
		3 "2 GENS, PARENTS"
		4 "2 GENS, GRANDCHLDRN"
		5 "3 GENS, GRANDCHLDRN"
		6 "3 GENS, CHLD, PAR"
		7 "4 GENS"
		8 "DK"
		9 "NA";

	label define RVISITOR
		0 "IAP"
		1 "R. IS HOUSEHOLD MEMBER"
		2 "R. IS VISITOR"
		8 "DK"
		9 "NA";

	label define VISITORS
		0 "NO VISITORS"
		1 "1 VISITOR"
		2 "2 VISITORS"
		3 "3 VISITORS"
		4 "4 VISITORS"
		8 "DK"
		9 "NA";

	label define RELHH1
		0 "IAP"
		1 "HOUSEHOLDER"
		2 "SPOUSE"
		3 "PARTNER,GIRL(BOY)FRIEND"
		4 "CHILD, UNSP"
		5 "GRANDCHILD, GREAT GRANDCHILD"
		6 "SON (DAUGHTER)-IN-LAW"
		7 "PARENT"
		8 "PARENT-IN-LAW"
		9 "GRANDPARENT, GREAT GRANDPARENT"
		10 "UNCLE OR AUNT"
		11 "NIECE OR NEPHEW"
		12 "COUSIN"
		13 "BROTHER, SISTER"
		14 "SIBLING-IN-LAW"
		15 "OTHER RELATIVE"
		16 "ROOMMATE, HOUSEMATE"
		17 "FRIEND"
		18 "CHILD OF NON-RELATIVE"
		19 "OTHER NON-RLATIVE"
		41 "BIOLOGICAL CHILD"
		42 "ADOPTED CHILD"
		43 "STEPCHILD"
		98 "DK"
		99 "NA";

	label define RELSP1
		0 "IAP"
		1 "HH SPOUSE, PARTNER"
		2 "SPOUSE"
		3 "PARTNER, FIANCE, BOYFRIEND, GIRLFRIEND, ETC"
		4 "CHILD, NOT SPECIFIED"
		5 "GRANDCHILD, GREAT-GRANDCHILD"
		6 "SON-IN-LAW, DAUGHTER-IN-LAW"
		7 "PARENT"
		8 "PARENT-IN-LAW"
		9 "GRANDPARENT, GREAT-GRANDPARENT"
		10 "UNCLE OR AUNT"
		11 "NIECE OR NEPHEW"
		12 "COUSIN"
		13 "BROTHER, SISTER (FULL, HALF, OR STEP SIBLING"
		14 "SIBLING-IN-LAW"
		15 "OTHER RELATIVE (GREAT-AUNT, GRANDNIECE, ETC)"
		16 "ROOMMATE, HOUSEMATE"
		17 "FRIEND"
		18 "CHILD OF NON-RELATIVE"
		19 "OTHER NON-RELATIVE (EMPLOYEE, BOARDER)"
		41 "BIOLOGICAL CHILD"
		42 "ADOPTED CHILD"
		43 "STEPCHILD"
		98 "DK"
		99 "NA";

	label define ISCO68
		0 "IAP"
		9998 "DK";

	label define USINTL
		0 "IAP"
		1 "ACTIVE PART"
		2 "STAY OUT"
		8 "DK"
		9 "NA";

	label define USUN
		0 "IAP"
		1 "STAY IN"
		2 "PULL OUT"
		8 "DK"
		9 "NA";

	label define COMMUN
		0 "IAP"
		1 "WORST KIND"
		2 "BAD, NOT WORST"
		3 "OK FOR SOME"
		4 "GOOD FORM"
		8 "DK"
		9 "NA";

	label define RUSSIA
		0 "+5"
		1 "+4"
		2 "+3"
		3 "+2"
		4 "+1"
		5 "-1"
		6 "-2"
		7 "-3"
		8 "-4"
		9 "-5";

	label define WKCONTCT
		0 "IAP"
		1 "Never"
		2 "Less than once a month"
		3 "Once or twice a month"
		4 "Once a week"
		5 "Several times a week"
		6 "Once a day"
		7 "Two or more times a day"
		8 "Don't know"
		9 "No answer";

	label define TALKSPVS
		0 "IAP"
		1 "Not at all comfortable"
		2 "A little"
		3 "Somewhat"
		4 "Very"
		5 "Extremely"
		8 "Don't know"
		9 "No answer";

	label define EFFCTSUP
		0 "IAP"
		1 "Not at all effective"
		2 "A Little"
		3 "Somewhat"
		4 "Very"
		5 "Extremely"
		8 "Don't know"
		9 "No answer";

	label define BIRTHMO
		0 "IAP"
		1 "JANUARY"
		2 "FEBRUARY"
		3 "MARCH"
		4 "APRIL"
		5 "MAY"
		6 "JUNE"
		7 "JULY"
		8 "AUGUST"
		9 "SEPTEMBER"
		10 "OCTOBER"
		11 "NOVEMBER"
		12 "DECEMBER"
		98 "DK"
		99 "NA";

	label define ZODIAC
		0 "IAP"
		1 "ARIES"
		2 "TAURUS"
		3 "GEMINI"
		4 "CANCER"
		5 "LEO"
		6 "VIRGO"
		7 "LIBRA"
		8 "SCORPIO"
		9 "SAGITTARIUS"
		10 "CAPRICORN"
		11 "AQUARIUS"
		12 "PISCES"
		98 "DK"
		99 "NA";

	label define INTHISP
		0 "IAP"
		1 "NOT HISPANIC"
		2 "MEXICAN, MEXICAN AMERICAN, CHICANO/A"
		3 "PUERTO RICAN"
		4 "CUBAN"
		5 "SALVADORIAN"
		6 "GUATEMALAN"
		7 "PANAMANIAN"
		8 "NICARAGUAN"
		9 "COSTA RICAN"
		10 "CENTRAL AMERICAN"
		11 "HONDURAN"
		15 "DOMINICAN"
		16 "WEST INDIAN"
		20 "PERUVIAN"
		21 "EQUADORIAN"
		22 "COLUMBIAN"
		23 "VENEZUELAN"
		24 "Argentinian"
		27 "COLOMBIAN"
		30 "SPANISH"
		31 "BASQUE"
		35 "FILIPINO/A"
		40 "LATIN AMERICAN"
		41 "SOUTH AMERICAN"
		45 "LATIN"
		46 "LATINO/A"
		47 "HISPANIC"
		50 "OTHER, NOT SPECIFIED"
		98 "DK"
		99 "NA";

	label define INTRACE1
		0 "IAP"
		1 "White"
		2 "Black or African"
		3 "American Indian"
		4 "Asian Indian"
		5 "Chinese"
		6 "Filipino"
		7 "Japanese"
		8 "Korean"
		9 "Vietnamese"
		10 "Other Asian"
		11 "Native Hawaiian"
		12 "Guamanian or Chamorro"
		13 "Samoan"
		14 "Other Pacific Islander"
		15 "Some other race"
		16 "Hispanic"
		98 "Dont Know"
		99 "No Answer";

	label define BTHGRP1A
		0 "IAP"
		1 "Fraternal groups"
		2 "Service clubs"
		3 "Veterans groups"
		4 "Political clubs"
		5 "Labor unions"
		6 "Sports groups"
		7 "Youth groups"
		8 "School service groups"
		9 "Hobby or garden clubs"
		10 "School fraternities or sororities"
		11 "Nationality groups"
		12 "Farm organizations"
		13 "Literary art discussion or study groups"
		14 "Professional or academic societies"
		15 "Church-affiliated groups"
		16 "Other groups"
		98 "Don't know"
		99 "No answer";

	label define SAQISSP
		0 "IAP"
		1 "R DID ISSP"
		2 "ADMINISTERED BY INTERVIEWER"
		3 "PROMISED, BUT DID NOT DO"
		4 "R DID NOT DO ISSP"
		5 "R DID, BUT NOT SURE MODE";

	label define SAQSEX
		0 "IAP"
		1 "R DID SEX SAQ"
		2 "ADMINISTERED BY INTERVIEWER"
		3 "PROMISED, BUT DID NOT DO"
		4 "R DID NOT DO SEX"
		5 "R DID, BUT NOT SURE MODE";

	label define SAQGENE
		0 "IAP"
		1 "R DID GENE SAQ"
		2 "ADMINISTERED BY INTERVIEWER"
		3 "R DID NOT DO GENE";

	label define FEEUSED
		0 "IAP"
		1 "YES, MONEY"
		2 "YES, OTHER (FLOWERS, FOOD, ETC.)"
		3 "NO"
		8 "DONT KNOW"
		9 "NA";

	label define FEELEVEL
		0 "IAP"
		75 "$75+"
		998 "DONT KNOW"
		999 "NO ANSWER";

	label define LNGTHINV
		0 "IAP"
		30 "30 min or less"
		200 "200 min and more"
		998 "DONT KNOW"
		999 "NO ANSWER";

	label define INTAGE
		0 "IAP"
		25 "25 years old"
		99 "NO ANSWER";

	label define EASYGET
		0 "IAP"
		1 "VERY EASY"
		2 "SOMEWHAT EASY"
		3 "SOMEWHAT DIFFICULT"
		4 "VERY DIFFICULT"
		8 "DONT KNOW"
		9 "NO ANSWER";

	label define INTETHN
		0 "IAP"
		1 "WHITE"
		2 "BLACK"
		3 "HISPANIC"
		4 "ASIAN"
		5 "TWO OR MORE RACE"
		9 "NO ANSWER";

	label define MODE
		0 "IAP"
		1 "IN-PERSON"
		2 "OVER THE PHONE"
		3 "COMBINATION IN-PERSON/PHONE"
		8 "DONT KNOW"
		9 "NA";

	label define INTSEX
		0 "IAP"
		1 "MALE"
		2 "FEMALE"
		9 "NO ANSWER";

	label define INTYRS
		0 " "
		99 "NO ANSWER";

	label define CONSENT
		0 "IAP"
		1 "R CONSENTS TO RECORDING INTERVIEW"
		2 "R CONSENTS TO PARTCIPATE IN THE SURVEY BUT DOES NOT WANT TO BE RECORDED"
		9 "NO ANSWER";

	label define POPESPKY
		0 "IAP"
		1 "Certainly false"
		2 "Probably false"
		3 "I am uncertain whether this is false or true"
		4 "Probably true"
		5 "Certainly true"
		8 "DONT KNOW"
		9 "NA";

	label define BALLOT
		0 "IAP"
		1 "BALLOT A"
		2 "BALLOT B"
		3 "BALLOT C"
		4 "BALLOT D";

	label define ISSP
		0 "IAP"
		1 "DID ISSP"
		2 "DIDNT DO ISSP";

	label define SAMPLE
		1 "1960 BQ"
		2 "1970 BQ"
		3 "1970 FP"
		4 "1970 FP BLK OVERSAMP"
		5 "1980 BFP BLK OVERSAMP"
		6 "1980 FP"
		7 "1980 FP BLK OVERSAMP"
		8 "1990 FP"
		9 "2000 FP"
		10 "2010 FP";

	label define PHASE
		0 "IAP"
		1 "PHASE ONE - INITIAL CASES"
		2 "PHASE TWO - SUB SAMPLED CASES";

	label define SPANSELF
		0 "IAP"
		1 "Have been able to do the interview easily in English"
		2 "Have been able to do the interview with difficulty"
		3 "Not have been able to do the interview"
		8 "Dont Know"
		9 "No Answer";

	label define SPANINT
		0 "IAP"
		1 "COULD HAVE BEEN INTERVIEWED IN ENGLISH"
		2 "WOULD HAVE BEEN EXCLUDED AS LANGUAGE PROBLEM"
		8 "Dont Know"
		9 "No Answer";

	label define SPANENG
		0 "IAP"
		1 "ENGLISH"
		2 "SPANISH"
		9 "No answer";

	label define RES2006
		0 "IAP"
		1 "LIVING IN THE U.S."
		2 "NOT LIVING IN U.S."
		8 "DONT KNOW"
		9 "NA";

	label define RES2012
		1 "LIVING IN THE U.S."
		2 "NOT LIVING IN U.S."
		8 "DON'T KNOW"
		9 "REFUSED";

	label define CSHUTYP0
		0 "IAP"
		1 "LIVING IN HOUSEHOLD"
		2 "LIVING IN INSTITUTION"
		3 "HOMELESS (VOLUNTEERED)"
		4 "OTHER"
		8 "DONT KNOW"
		9 "NA";

	label define V5614_A
		0 "IAP"
		1 "LIVING IN HOUSEHOLD"
		2 "LIVING IN INSTITUTION"
		3 "HOMELESS (VOLUNTEERED)"
		4 "OTHER"
		8 "DON'T KNOW"
		9 "No answer";

	label values wrkstat WRKSTAT ;
	label values hrs1 HRS1 ;
	label values hrs2 HRS1 ;
	label values evwork EVWORK ;
	label values occ OCC ;
	label values prestige OCC ;
	label values wrkslf WRKSLF ;
	label values wrkgovt WRKGOVT ;
	label values commute COMMUTE ;
	label values industry OCC ;
	label values occ80 OCC80 ;
	label values prestg80 OCC ;
	label values indus80 INDUS80 ;
	label values indus07 INDUS07 ;
	label values occonet OCCONET ;
	label values OCC10 OCC10 ;
	label values prestg10 PRESTG10 ;
	label values prestg105plus PRESTG10 ;
	label values INDUS10 INDUS10 ;
	label values marital MARITAL ;
	label values martype MARTYPE ;
	label values agewed AGEWED ;
	label values divorce EVWORK ;
	label values widowed EVWORK ;
	label values spwrksta WRKSTAT ;
	label values sphrs1 HRS1 ;
	label values sphrs2 HRS1 ;
	label values spevwork EVWORK ;
	label values spocc OCC ;
	label values sppres OCC ;
	label values spwrkslf WRKSLF ;
	label values spind OCC ;
	label values spocc80 OCC80 ;
	label values sppres80 OCC ;
	label values spind80 INDUS80 ;
	label values SPOCC10 OCC10 ;
	label values sppres10 PRESTG10 ;
	label values sppres105plus PRESTG10 ;
	label values SPIND10 INDUS10 ;
	label values paocc16 PAOCC16 ;
	label values papres16 OCC ;
	label values pawrkslf WRKSLF ;
	label values paind16 PAIND16 ;
	label values paocc80 OCC80 ;
	label values papres80 OCC ;
	label values paind80 INDUS80 ;
	label values PAOCC10 OCC10 ;
	label values papres10 PRESTG10 ;
	label values papres105plus PRESTG10 ;
	label values PAIND10 INDUS10 ;
	label values maocc80 OCC80 ;
	label values mapres80 OCC ;
	label values mawrkslf WRKSLF ;
	label values maind80 INDUS80 ;
	label values MAOCC10 OCC10 ;
	label values mapres10 PRESTG10 ;
	label values mapres105plus PRESTG10 ;
	label values MAIND10 INDUS10 ;
	label values sibs HRS1 ;
	label values childs CHILDS ;
	label values age AGE ;
	label values agekdbrn AGEWED ;
	label values educ EDUC ;
	label values paeduc EDUC ;
	label values maeduc EDUC ;
	label values speduc EDUC ;
	label values degree DEGREE ;
	label values padeg DEGREE ;
	label values madeg DEGREE ;
	label values spdeg DEGREE ;
	label values major1 MAJOR1 ;
	label values major2 MAJOR1 ;
	label values DIPGED DIPGED ;
	label values SPDIPGED SPDIPGED ;
	label values whenhs WHENHS ;
	label values whencol WHENHS ;
	label values sector SECTOR ;
	label values eftotlt EFTOTLT ;
	label values barate BARATE ;
	label values gradtounder GRADTOUN ;
	label values VOEDCOL EVWORK ;
	label values VOEDNME1 VOEDNME1 ;
	label values VOEDNCOL EVWORK ;
	label values VOEDNME2 VOEDNME1 ;
	label values spsector SECTOR ;
	label values speftotlt EFTOTLT ;
	label values spbarate BARATE ;
	label values spgradtounder GRADTOUN ;
	label values sex SEX ;
	label values race RACE ;
	label values res16 RES16 ;
	label values reg16 REG16 ;
	label values mobile16 MOBILE16 ;
	label values family16 FAMILY16 ;
	label values famdif16 FAMDIF16 ;
	label values mawork EVWORK ;
	label values mawkbaby EVWORK ;
	label values mawkborn EVWORK ;
	label values mawk16 EVWORK ;
	label values mawrkgrw EVWORK ;
	label values incom16 INCOM16 ;
	label values born EVWORK ;
	label values parborn PARBORN ;
	label values granborn GRANBORN ;
	label values hompop HOMPOP ;
	label values babies BABIES ;
	label values preteen BABIES ;
	label values teens BABIES ;
	label values adults BABIES ;
	label values unrelat UNRELAT ;
	label values earnrs EARNRS ;
	label values income INCOME ;
	label values rincome INCOME ;
	label values income72 INCOME72 ;
	label values income77 INCOME77 ;
	label values rincom77 INCOME77 ;
	label values income82 INCOME82 ;
	label values rincom82 INCOME82 ;
	label values income86 INCOME86 ;
	label values rincom86 INCOME86 ;
	label values income91 INCOME91 ;
	label values rincom91 INCOME91 ;
	label values income98 INCOME98 ;
	label values rincom98 INCOME98 ;
	label values income06 INCOME06 ;
	label values rincom06 INCOME06 ;
	label values region REGION ;
	label values xnorcsiz XNORCSIZ ;
	label values srcbelt SRCBELT ;
	label values partyid PARTYID ;
	label values vote68 VOTE68 ;
	label values pres68 PRES68 ;
	label values if68who PRES68 ;
	label values vote72 VOTE68 ;
	label values pres72 PRES72 ;
	label values if72who PRES72 ;
	label values vote76 VOTE68 ;
	label values pres76 PRES76 ;
	label values if76who IF76WHO ;
	label values vote80 VOTE68 ;
	label values pres80 PRES80 ;
	label values if80who IF80WHO ;
	label values vote84 VOTE68 ;
	label values pres84 PRES84 ;
	label values if84who IF84WHO ;
	label values vote88 VOTE68 ;
	label values pres88 PRES88 ;
	label values if88who IF88WHO ;
	label values vote92 VOTE92 ;
	label values pres92 PRES92 ;
	label values if92who IF92WHO ;
	label values vote96 VOTE96 ;
	label values pres96 PRES96 ;
	label values if96who IF96WHO ;
	label values vote00 VOTE00 ;
	label values pres00 PRES00 ;
	label values if00who IF00WHO ;
	label values vote04 VOTE00 ;
	label values pres04 PRES04 ;
	label values if04who IF04WHO ;
	label values VOTE08 VOTE08 ;
	label values PRES08 PRES08 ;
	label values IF08WHO IF08WHO ;
	label values VOTE12 VOTE12 ;
	label values PRES12 PRES12 ;
	label values IF12WHO IF12WHO ;
	label values polviews POLVIEWS ;
	label values polviewy POLVIEWY ;
	label values polviewx POLVIEWX ;
	label values natspac NATSPAC ;
	label values natenvir NATSPAC ;
	label values natheal NATSPAC ;
	label values natcity NATSPAC ;
	label values natcrime NATSPAC ;
	label values natdrug NATSPAC ;
	label values nateduc NATSPAC ;
	label values natrace NATSPAC ;
	label values natarms NATSPAC ;
	label values nataid NATSPAC ;
	label values natfare NATSPAC ;
	label values natroad NATSPAC ;
	label values natsoc NATSPAC ;
	label values natmass NATSPAC ;
	label values natpark NATSPAC ;
	label values natchld NATSPAC ;
	label values natsci NATSPAC ;
	label values NATENRGY NATENRGY ;
	label values natspacy NATSPAC ;
	label values natenviy NATSPAC ;
	label values nathealy NATSPAC ;
	label values natcityy NATSPAC ;
	label values natcrimy NATSPAC ;
	label values natdrugy NATSPAC ;
	label values nateducy NATSPAC ;
	label values natracey NATSPAC ;
	label values natarmsy NATSPAC ;
	label values nataidy NATSPAC ;
	label values natfarey NATSPAC ;
	label values natspacz NATSPAC ;
	label values natenviz NATSPAC ;
	label values nathealz NATSPAC ;
	label values natcityz NATSPAC ;
	label values natcrimz NATSPAC ;
	label values natdrugz NATSPAC ;
	label values nateducz NATSPAC ;
	label values natracez NATSPAC ;
	label values natarmsz NATSPAC ;
	label values nataidz NATSPAC ;
	label values natfarez NATSPAC ;
	label values natroadz NATSPAC ;
	label values natsocz NATSPAC ;
	label values natmassz NATSPAC ;
	label values natparkz NATSPAC ;
	label values equal1 EQUAL1 ;
	label values equal2 EQUAL1 ;
	label values equal3 EQUAL1 ;
	label values equal4 EQUAL1 ;
	label values equal5 EQUAL1 ;
	label values equal6 EQUAL1 ;
	label values equal7 EQUAL1 ;
	label values equal8 EQUAL1 ;
	label values usclass1 EQUAL1 ;
	label values usclass2 EQUAL1 ;
	label values usclass3 EQUAL1 ;
	label values usclass4 EQUAL1 ;
	label values usclass5 EQUAL1 ;
	label values usclass6 EQUAL1 ;
	label values usclass7 EQUAL1 ;
	label values usclass8 EQUAL1 ;
	label values educop EVWORK ;
	label values govcare GOVCARE ;
	label values eqwlth EQWLTH ;
	label values eqwlthy EQWLTH ;
	label values tax TAX ;
	label values spkath SPKATH ;
	label values colath COLATH ;
	label values libath LIBATH ;
	label values spksoc SPKATH ;
	label values colsoc COLATH ;
	label values libsoc LIBATH ;
	label values spkrac SPKATH ;
	label values colrac COLATH ;
	label values librac LIBATH ;
	label values spkcom SPKATH ;
	label values colcom COLCOM ;
	label values libcom LIBATH ;
	label values spkmil SPKATH ;
	label values colmil COLATH ;
	label values libmil LIBATH ;
	label values spkhomo SPKATH ;
	label values colhomo COLATH ;
	label values libhomo LIBATH ;
	label values SPKMSLM SPKMSLM ;
	label values COLMSLM COLMSLM ;
	label values LIBMSLM LIBATH ;
	label values cappun2 CAPPUN2 ;
	label values cappun CAPPUN ;
	label values capimp CAPIMP ;
	label values capinfo CAPINFO ;
	label values capfirm CAPFIRM ;
	label values gunlaw CAPPUN ;
	label values gunimp CAPIMP ;
	label values guninfo CAPINFO ;
	label values gunfirm CAPFIRM ;
	label values courts COURTS ;
	label values courtsy COURTSY ;
	label values crimimp CAPIMP ;
	label values criminfo CAPINFO ;
	label values crimfirm CAPFIRM ;
	label values lawimp CAPIMP ;
	label values lawinfo CAPINFO ;
	label values lawfirm CAPFIRM ;
	label values wirtap WIRTAP ;
	label values grass GRASS ;
	label values grassy GRASS ;
	label values relig RELIG ;
	label values denom DENOM ;
	label values other OTHER ;
	label values OTHJEW OTHJEW ;
	label values jew JEW ;
	label values JEWAJ JEW ;
	label values fund FUND ;
	label values attend ATTEND ;
	label values maattend MAATTEND ;
	label values paattend MAATTEND ;
	label values spattend MAATTEND ;
	label values reliten RELITEN ;
	label values relitena RELITEN ;
	label values postlife EVWORK ;
	label values postlf1 POSTLF1 ;
	label values postlf2 POSTLF1 ;
	label values postlf3 POSTLF1 ;
	label values postlf4 POSTLF1 ;
	label values postlf5 POSTLF1 ;
	label values postlf6 POSTLF1 ;
	label values postlf7 POSTLF1 ;
	label values postlf8 POSTLF1 ;
	label values postlf9 POSTLF1 ;
	label values postlf10 POSTLF1 ;
	label values likediff LIKEDIFF ;
	label values mindbody MINDBODY ;
	label values restact RESTACT ;
	label values palefull PALEFULL ;
	label values pray PRAY ;
	label values dejavu DEJAVU ;
	label values esp DEJAVU ;
	label values visions DEJAVU ;
	label values spirits DEJAVU ;
	label values grace DEJAVU ;
	label values neargod NEARGOD ;
	label values judge JUDGE ;
	label values redeemer JUDGE ;
	label values lover JUDGE ;
	label values master JUDGE ;
	label values mother JUDGE ;
	label values creator JUDGE ;
	label values father JUDGE ;
	label values spouse JUDGE ;
	label values friend JUDGE ;
	label values king JUDGE ;
	label values liberatr JUDGE ;
	label values healer JUDGE ;
	label values mapa MAPA ;
	label values mastersp MASTERSP ;
	label values judgeluv JUDGELUV ;
	label values frndking FRNDKING ;
	label values crtrheal CRTRHEAL ;
	label values rdeemlib RDEEMLIB ;
	label values popespks POPESPKS ;
	label values relig16 RELIG ;
	label values denom16 DENOM ;
	label values oth16 OTHER ;
	label values OTHJEW16 OTHJEW ;
	label values jew16 JEW ;
	label values JEW16AJ JEW ;
	label values fund16 FUND ;
	label values sprel RELIG ;
	label values spden DENOM ;
	label values spother OTHER ;
	label values SPOTHJEW OTHJEW ;
	label values spjew JEW ;
	label values SPJEWAJ JEW ;
	label values spfund FUND ;
	label values sprel16 SPREL16 ;
	label values spden16 SPDEN16 ;
	label values spoth16 SPOTH16 ;
	label values spjew16 JEW ;
	label values spfund16 FUND ;
	label values tithing TITHING ;
	label values prayer WIRTAP ;
	label values prayery PRAYERY ;
	label values prayerx PRAYERX ;
	label values bible BIBLE ;
	label values bibley BIBLEY ;
	label values world1 WORLD1 ;
	label values world2 WORLD2 ;
	label values world3 WORLD3 ;
	label values world4 WORLD4 ;
	label values world5 WORLD5 ;
	label values world6 WORLD6 ;
	label values world7 WORLD7 ;
	label values libtemp LIBTEMP ;
	label values contemp LIBTEMP ;
	label values prottemp LIBTEMP ;
	label values cathtemp LIBTEMP ;
	label values jewtemp LIBTEMP ;
	label values mslmtemp LIBTEMP ;
	label values fepriest FEPRIEST ;
	label values feclergy FECLERGY ;
	label values relgrade RELGRADE ;
	label values racmar EVWORK ;
	label values racmar10 EVWORK ;
	label values racdin RACDIN ;
	label values racpush RACPUSH ;
	label values racseg RACPUSH ;
	label values racopen RACOPEN ;
	label values raclive EVWORK ;
	label values racclos EVWORK ;
	label values racdis RACDIS ;
	label values racinteg RACINTEG ;
	label values racobjct RACOBJCT ;
	label values rachome EVWORK ;
	label values racschol RACSCHOL ;
	label values racfew RACFEW ;
	label values rachaf RACFEW ;
	label values racmost RACFEW ;
	label values busing CAPPUN ;
	label values busing10 CAPPUN ;
	label values racpres EVWORK ;
	label values racjob RACJOB ;
	label values racchurh RACCHURH ;
	label values color COLOR ;
	label values racname RACNAME ;
	label values rachisch RACHISCH ;
	label values racmix RACMIX ;
	label values racneigh RACNEIGH ;
	label values racnobuy EVWORK ;
	label values ractrust RACTRUST ;
	label values racparty RACPARTY ;
	label values racocc RACOCC ;
	label values racinc RACOCC ;
	label values racopnow RACOPNOW ;
	label values racopwil RACOPWIL ;
	label values racimp RACIMP ;
	label values racinfo RACINFO ;
	label values racfirm RACFIRM ;
	label values raccare RACCARE ;
	label values racthink RACTHINK ;
	label values racwrite EVWORK ;
	label values racgive EVWORK ;
	label values racjoin EVWORK ;
	label values affrmact AFFRMACT ;
	label values wrkwayup WRKWAYUP ;
	label values blksimp BLKSIMP ;
	label values closeblk CLOSEBLK ;
	label values closewht CLOSEBLK ;
	label values alienat1 ALIENAT1 ;
	label values alienat2 ALIENAT1 ;
	label values alienat3 ALIENAT1 ;
	label values alienat4 ALIENAT1 ;
	label values alienat5 ALIENAT1 ;
	label values alienat6 ALIENAT1 ;
	label values happy HAPPY ;
	label values hapmar HAPPY ;
	label values HAPCOHAB HAPCOHAB ;
	label values health HEALTH ;
	label values life LIFE ;
	label values helpful HELPFUL ;
	label values fair FAIR ;
	label values trust TRUST ;
	label values trusty EVWORK ;
	label values satcity SATCITY ;
	label values sathobby SATCITY ;
	label values satfam SATCITY ;
	label values satfrnd SATCITY ;
	label values sathealt SATCITY ;
	label values confinan CONFINAN ;
	label values conbus CONFINAN ;
	label values conclerg CONFINAN ;
	label values coneduc CONFINAN ;
	label values confed CONFINAN ;
	label values conlabor CONFINAN ;
	label values conpress CONFINAN ;
	label values conmedic CONFINAN ;
	label values contv CONFINAN ;
	label values conjudge CONFINAN ;
	label values consci CONFINAN ;
	label values conlegis CONFINAN ;
	label values conarmy CONFINAN ;
	label values confinay CONFINAY ;
	label values conbusy CONFINAY ;
	label values conclery CONFINAY ;
	label values coneducy CONFINAY ;
	label values confedy CONFINAY ;
	label values conlaboy CONFINAY ;
	label values conpresy CONFINAY ;
	label values conmediy CONFINAY ;
	label values contvy CONFINAY ;
	label values conjudgy CONFINAY ;
	label values consciy CONFINAY ;
	label values conlegiy CONFINAY ;
	label values conarmyy CONFINAY ;
	label values manners MANNERS ;
	label values success MANNERS ;
	label values honest MANNERS ;
	label values clean MANNERS ;
	label values judgment MANNERS ;
	label values control MANNERS ;
	label values role MANNERS ;
	label values amicable MANNERS ;
	label values obeys MANNERS ;
	label values responsi MANNERS ;
	label values consider MANNERS ;
	label values interest MANNERS ;
	label values studious MANNERS ;
	label values mannersy MANNERS ;
	label values successy MANNERS ;
	label values honesty MANNERS ;
	label values cleany MANNERS ;
	label values judgmeny MANNERS ;
	label values controly MANNERS ;
	label values roley MANNERS ;
	label values amicably MANNERS ;
	label values obeysy MANNERS ;
	label values responsy MANNERS ;
	label values considey MANNERS ;
	label values interesy MANNERS ;
	label values studiouy MANNERS ;
	label values mannersz MANNERSZ ;
	label values successz MANNERSZ ;
	label values honestz MANNERSZ ;
	label values cleanz MANNERSZ ;
	label values judgmenz MANNERSZ ;
	label values controlz MANNERSZ ;
	label values rolez MANNERSZ ;
	label values amicablz MANNERSZ ;
	label values obeysz MANNERSZ ;
	label values responsz MANNERSZ ;
	label values considez MANNERSZ ;
	label values interesz MANNERSZ ;
	label values studiouz MANNERSZ ;
	label values obey OBEY ;
	label values popular OBEY ;
	label values thnkself OBEY ;
	label values workhard OBEY ;
	label values helpoth OBEY ;
	label values chldsex CHLDSEX ;
	label values chldsex1 CHLDSEX ;
	label values youngen YOUNGEN ;
	label values socrel SOCREL ;
	label values socommun SOCREL ;
	label values socfrend SOCREL ;
	label values socbar SOCREL ;
	label values socpars SOCPARS ;
	label values socsibs SOCPARS ;
	label values aged AGED ;
	label values weekswrk HRS1 ;
	label values partfull PARTFULL ;
	label values drink EVWORK ;
	label values drunk EVWORK ;
	label values smoke EVWORK ;
	label values quitsmk EVWORK ;
	label values smokecig EVWORK ;
	label values cigweek EVWORK ;
	label values evsmoke EVWORK ;
	label values anomia1 ANOMIA1 ;
	label values anomia2 ANOMIA1 ;
	label values anomia3 ANOMIA1 ;
	label values anomia4 ANOMIA1 ;
	label values anomia5 ANOMIA1 ;
	label values anomia6 ANOMIA1 ;
	label values anomia7 ANOMIA1 ;
	label values anomia8 ANOMIA1 ;
	label values anomia9 ANOMIA1 ;
	label values joblose JOBLOSE ;
	label values jobfind JOBFIND ;
	label values satjob SATJOB ;
	label values richwork RICHWORK ;
	label values jobinc JOBINC ;
	label values jobsec JOBINC ;
	label values jobhour JOBINC ;
	label values jobpromo JOBINC ;
	label values jobmeans JOBINC ;
	label values jobkeep JOBKEEP ;
	label values jobpay JOBKEEP ;
	label values jobrise JOBKEEP ;
	label values jobhonor JOBKEEP ;
	label values joboff JOBKEEP ;
	label values jobinter JOBKEEP ;
	label values jobindep JOBKEEP ;
	label values jobresp JOBKEEP ;
	label values jobpeop JOBKEEP ;
	label values jobhelp JOBKEEP ;
	label values jobsoc JOBKEEP ;
	label values jobaccmp JOBKEEP ;
	label values jobsafe JOBKEEP ;
	label values class CLASS ;
	label values classy CLASSY ;
	label values rank RANK ;
	label values satfin SATFIN ;
	label values finalter FINALTER ;
	label values finrela FINRELA ;
	label values incneed INCNEED ;
	label values mininc MININC ;
	label values wksub EVWORK ;
	label values wksubs WKSUBS ;
	label values wksup EVWORK ;
	label values wksups WKSUBS ;
	label values unemp EVWORK ;
	label values govaid EVWORK ;
	label values getaid EVWORK ;
	label values union UNION ;
	label values getahead GETAHEAD ;
	label values parsol PARSOL ;
	label values kidssol KIDSSOL ;
	label values fehome FEHOME ;
	label values fework WIRTAP ;
	label values fepres FEPRES ;
	label values fepol FEHOME ;
	label values fepoly FEPOLY ;
	label values feimp RACIMP ;
	label values feinfo RACINFO ;
	label values fefirm CAPFIRM ;
	label values fecare RACCARE ;
	label values fethink RACTHINK ;
	label values fewrite EVWORK ;
	label values fegive EVWORK ;
	label values fejoin EVWORK ;
	label values abdefect EVWORK ;
	label values abnomore EVWORK ;
	label values abhlth EVWORK ;
	label values abpoor EVWORK ;
	label values abrape EVWORK ;
	label values absingle EVWORK ;
	label values abany EVWORK ;
	label values aborct EVWORK ;
	label values abpro1 ABPRO1 ;
	label values abpro2 ABPRO2 ;
	label values abpro3 ABPRO2 ;
	label values abcon1 ABPRO1 ;
	label values abcon2 ABPRO2 ;
	label values abcon3 ABPRO2 ;
	label values abimp RACIMP ;
	label values abinfo RACINFO ;
	label values abfirm CAPFIRM ;
	label values abcare RACCARE ;
	label values chldidel CHLDIDEL ;
	label values chldmore CHLDMORE ;
	label values chldnum CHLDNUM ;
	label values chldsoon CHLDSOON ;
	label values pill PILL ;
	label values teenpill TEENPILL ;
	label values pillok PILLOK ;
	label values sexeduc SEXEDUC ;
	label values divlaw DIVLAW ;
	label values divlawy DIVLAW ;
	label values spdue EVWORK ;
	label values sppaid SPPAID ;
	label values premarsx PREMARSX ;
	label values teensex PREMARSX ;
	label values xmarsex PREMARSX ;
	label values homosex PREMARSX ;
	label values homochng HOMOCHNG ;
	label values porninf EVWORK ;
	label values pornmorl EVWORK ;
	label values pornrape EVWORK ;
	label values pornout EVWORK ;
	label values pornlaw PORNLAW ;
	label values xmovie EVWORK ;
	label values xmovie1 EVWORK ;
	label values pornimp RACIMP ;
	label values porninfo RACINFO ;
	label values pornfirm CAPFIRM ;
	label values spanking PILLOK ;
	label values letdie1 EVWORK ;
	label values letdie2 EVWORK ;
	label values suicide1 EVWORK ;
	label values suicide2 EVWORK ;
	label values suicide3 EVWORK ;
	label values suicide4 EVWORK ;
	label values strike EVWORK ;
	label values civright EVWORK ;
	label values antiwar EVWORK ;
	label values prowar EVWORK ;
	label values school EVWORK ;
	label values hit EVWORK ;
	label values hitage HITAGE ;
	label values hitnum HITNUM ;
	label values gun EVWORK ;
	label values gunage HITAGE ;
	label values gunnum HITNUM ;
	label values hitok EVWORK ;
	label values hitmarch EVWORK ;
	label values hitdrunk EVWORK ;
	label values hitchild EVWORK ;
	label values hitbeatr EVWORK ;
	label values hitrobbr EVWORK ;
	label values polhitok EVWORK ;
	label values polabuse EVWORK ;
	label values polmurdr EVWORK ;
	label values polescap EVWORK ;
	label values polattak EVWORK ;
	label values fear EVWORK ;
	label values fearhome EVWORK ;
	label values burglr EVWORK ;
	label values robbry EVWORK ;
	label values owngun OWNGUN ;
	label values pistol OWNGUN ;
	label values shotgun OWNGUN ;
	label values rifle OWNGUN ;
	label values rowngun OWNGUN ;
	label values ticket OWNGUN ;
	label values arrest OWNGUN ;
	label values CONVICTD CONVICTD ;
	label values LOCKEDUP CONVICTD ;
	label values hunt HUNT ;
	label values huntothr EVWORK ;
	label values news NEWS ;
	label values tvhours HRS1 ;
	label values radiohrs HRS1 ;
	label values phone PHONE ;
	label values coop2 COOP2 ;
	label values coop COOP ;
	label values comprend COMPREND ;
	label values form FORM ;
	label values abspno EVWORK ;
	label values abhave1 EVWORK ;
	label values abhave2 EVWORK ;
	label values abhave3 EVWORK ;
	label values ablegal ABLEGAL ;
	label values fechld PILLOK ;
	label values fehelp PILLOK ;
	label values fepresch PILLOK ;
	label values fefam PILLOK ;
	label values eraread EVWORK ;
	label values erameans EVWORK ;
	label values era ERA ;
	label values eratell ERATELL ;
	label values erawhy1 ABPRO2 ;
	label values erawhy2 ABPRO2 ;
	label values erawhy3 ABPRO2 ;
	label values eraimp CAPIMP ;
	label values erainfo CAPINFO ;
	label values erafirm CAPFIRM ;
	label values febear EVWORK ;
	label values feworkif WIRTAP ;
	label values racsubs CAPPUN ;
	label values racsubgv RACSUBGV ;
	label values racmarel RACMAREL ;
	label values racmarpr ANOMIA1 ;
	label values racsups ANOMIA1 ;
	label values racteach ANOMIA1 ;
	label values racavoid EVWORK ;
	label values racchng RACCHNG ;
	label values racquit EVWORK ;
	label values racdif1 EVWORK ;
	label values racdif2 EVWORK ;
	label values racdif3 EVWORK ;
	label values racdif4 EVWORK ;
	label values salfergt SALFERGT ;
	label values sallabor SALFERGT ;
	label values salsatfn SALFERGT ;
	label values salabort SALFERGT ;
	label values salsci SALFERGT ;
	label values divorce5 DIVORCE5 ;
	label values unemp5 UNEMP5 ;
	label values hosdis5 DIVORCE5 ;
	label values death5 DEATH5 ;
	label values padeath PADEATH ;
	label values madeath PADEATH ;
	label values chlddth CHLDDTH ;
	label values sibdeath CHLDDTH ;
	label values spdeath CHLDDTH ;
	label values trauma1 TRAUMA1 ;
	label values trauma5 TRAUMA1 ;
	label values trarel1 TRAUMA1 ;
	label values trarel5 TRAUMA1 ;
	label values tratot1 TRAUMA1 ;
	label values tratot5 TRAUMA1 ;
	label values defspdr DEFSPDR ;
	label values defspdfg DEFSPDR ;
	label values hlpminr HLPMINR ;
	label values hlpminfg HLPMINR ;
	label values cutspdr CUTSPDR ;
	label values cutspdfg CUTSPDR ;
	label values impfam JOBKEEP ;
	label values impwork JOBKEEP ;
	label values imprelax JOBKEEP ;
	label values impfrend JOBKEEP ;
	label values impkin JOBKEEP ;
	label values impchurh JOBKEEP ;
	label values imppol JOBKEEP ;
	label values privacy PRIVACY ;
	label values civic CIVIC ;
	label values rushed RUSHED ;
	label values bored BORED ;
	label values pollgood POLLGOOD ;
	label values polltrue POLLTRUE ;
	label values feserve FESERVE ;
	label values meserve FESERVE ;
	label values taxserve FESERVE ;
	label values milqual MILQUAL ;
	label values milpay MILPAY ;
	label values fenumok FENUMOK ;
	label values hinumok FENUMOK ;
	label values blnumok FENUMOK ;
	label values hinumoky FENUMOK ;
	label values blnumoky FENUMOK ;
	label values milvolok MILVOLOK ;
	label values fightair FIGHTAIR ;
	label values mechanic FIGHTAIR ;
	label values nurse FIGHTAIR ;
	label values typist FIGHTAIR ;
	label values brass FIGHTAIR ;
	label values fightlnd FIGHTAIR ;
	label values transair FIGHTAIR ;
	label values gunner FIGHTAIR ;
	label values fightsea FIGHTAIR ;
	label values fefight FEFIGHT ;
	label values fedirty FEFIGHT ;
	label values febrass FEFIGHT ;
	label values fehlpmil FEHLPMIL ;
	label values draft DRAFT ;
	label values draftfe FIGHTAIR ;
	label values draftem DRAFT ;
	label values draftfem FIGHTAIR ;
	label values draftcol DRAFTCOL ;
	label values draftmar DRAFTCOL ;
	label values draftpar DRAFTCOL ;
	label values draftgay DRAFTCOL ;
	label values draftco DRAFTCOL ;
	label values draftdef DRAFTCOL ;
	label values vetfam EVWORK ;
	label values vetfamnw EVWORK ;
	label values minmilop MINMILOP ;
	label values femilop MINMILOP ;
	label values copunish EVWORK ;
	label values cojail WIRTAP ;
	label values milokme MILOKME ;
	label values milokfe MILOKME ;
	label values upgrade UPGRADE ;
	label values jobtrain JOBTRAIN ;
	label values nukewar NUKEWAR ;
	label values landwar NUKEWAR ;
	label values morenuke NUKEWAR ;
	label values lessnuke NUKEWAR ;
	label values nonuke NUKEWAR ;
	label values guerilla NUKEWAR ;
	label values vetaid EVWORK ;
	label values defwrkev EVWORK ;
	label values defwrknw EVWORK ;
	label values milwrkev EVWORK ;
	label values milwrknw EVWORK ;
	label values resdefwk RESDEFWK ;
	label values obvote OBVOTE ;
	label values obvol OBVOTE ;
	label values objury OBVOTE ;
	label values ob911 OBVOTE ;
	label values obeng OBVOTE ;
	label values obknow OBVOTE ;
	label values obmepax OBVOTE ;
	label values obmewar OBVOTE ;
	label values obfepax OBVOTE ;
	label values obfewar OBVOTE ;
	label values helppoor HELPPOOR ;
	label values helpnot HELPNOT ;
	label values helpsick HELPSICK ;
	label values helpblk HELPBLK ;
	label values numgiven TRAUMA1 ;
	label values eqclose EQCLOSE ;
	label values rclose1 RCLOSE1 ;
	label values rclose2 RCLOSE1 ;
	label values rclose3 RCLOSE1 ;
	label values rclose4 RCLOSE1 ;
	label values rclose5 RCLOSE1 ;
	label values close12 CLOSE12 ;
	label values close13 CLOSE12 ;
	label values close14 CLOSE12 ;
	label values close15 CLOSE12 ;
	label values close23 CLOSE12 ;
	label values close24 CLOSE12 ;
	label values close25 CLOSE12 ;
	label values close34 CLOSE12 ;
	label values close35 CLOSE12 ;
	label values close45 CLOSE12 ;
	label values sex1 SEX1 ;
	label values sex2 SEX1 ;
	label values sex3 SEX1 ;
	label values sex4 SEX1 ;
	label values sex5 SEX1 ;
	label values race1 RACE1 ;
	label values race2 RACE1 ;
	label values race3 RACE1 ;
	label values race4 RACE1 ;
	label values race5 RACE1 ;
	label values spouse1 SPOUSE1 ;
	label values spouse2 SPOUSE1 ;
	label values spouse3 SPOUSE1 ;
	label values spouse4 SPOUSE1 ;
	label values spouse5 SPOUSE1 ;
	label values parent1 SPOUSE1 ;
	label values parent2 SPOUSE1 ;
	label values parent3 SPOUSE1 ;
	label values parent4 SPOUSE1 ;
	label values parent5 SPOUSE1 ;
	label values sibling1 SPOUSE1 ;
	label values sibling2 SPOUSE1 ;
	label values sibling3 SPOUSE1 ;
	label values sibling4 SPOUSE1 ;
	label values sibling5 SPOUSE1 ;
	label values child1 SPOUSE1 ;
	label values child2 SPOUSE1 ;
	label values child3 SPOUSE1 ;
	label values child4 SPOUSE1 ;
	label values child5 SPOUSE1 ;
	label values othfam1 SPOUSE1 ;
	label values othfam2 SPOUSE1 ;
	label values othfam3 SPOUSE1 ;
	label values othfam4 SPOUSE1 ;
	label values othfam5 SPOUSE1 ;
	label values cowork1 SPOUSE1 ;
	label values cowork2 SPOUSE1 ;
	label values cowork3 SPOUSE1 ;
	label values cowork4 SPOUSE1 ;
	label values cowork5 SPOUSE1 ;
	label values memgrp1 SPOUSE1 ;
	label values memgrp2 SPOUSE1 ;
	label values memgrp3 SPOUSE1 ;
	label values memgrp4 SPOUSE1 ;
	label values memgrp5 SPOUSE1 ;
	label values neighbr1 SPOUSE1 ;
	label values neighbr2 SPOUSE1 ;
	label values neighbr3 SPOUSE1 ;
	label values neighbr4 SPOUSE1 ;
	label values neighbr5 SPOUSE1 ;
	label values friend1 SPOUSE1 ;
	label values friend2 SPOUSE1 ;
	label values friend3 SPOUSE1 ;
	label values friend4 SPOUSE1 ;
	label values friend5 SPOUSE1 ;
	label values advisor1 SPOUSE1 ;
	label values advisor2 SPOUSE1 ;
	label values advisor3 SPOUSE1 ;
	label values advisor4 SPOUSE1 ;
	label values advisor5 SPOUSE1 ;
	label values other1 SPOUSE1 ;
	label values other2 SPOUSE1 ;
	label values other3 SPOUSE1 ;
	label values other4 SPOUSE1 ;
	label values other5 SPOUSE1 ;
	label values talkto1 TALKTO1 ;
	label values talkto2 TALKTO1 ;
	label values talkto3 TALKTO1 ;
	label values talkto4 TALKTO1 ;
	label values talkto5 TALKTO1 ;
	label values known1 KNOWN1 ;
	label values known2 KNOWN1 ;
	label values known3 KNOWN1 ;
	label values known4 KNOWN1 ;
	label values known5 KNOWN1 ;
	label values educ1 EDUC1 ;
	label values educ2 EDUC1 ;
	label values educ3 EDUC1 ;
	label values educ4 EDUC1 ;
	label values educ5 EDUC1 ;
	label values age1 HRS1 ;
	label values age2 HRS1 ;
	label values age3 HRS1 ;
	label values age4 HRS1 ;
	label values age5 HRS1 ;
	label values relig1 RELIG1 ;
	label values relig2 RELIG1 ;
	label values relig3 RELIG1 ;
	label values relig4 RELIG1 ;
	label values relig5 RELIG1 ;
	label values partyid1 PARTYID1 ;
	label values partyid2 PARTYID1 ;
	label values partyid3 PARTYID1 ;
	label values talkpol1 TALKPOL1 ;
	label values talkpol2 TALKPOL1 ;
	label values talkpol3 TALKPOL1 ;
	label values talkpol TALKPOL ;
	label values frndknow FRNDKNOW ;
	label values memfrat EVWORK ;
	label values memserv EVWORK ;
	label values memvet EVWORK ;
	label values mempolit EVWORK ;
	label values memunion EVWORK ;
	label values memsport EVWORK ;
	label values memyouth EVWORK ;
	label values memschl EVWORK ;
	label values memhobby EVWORK ;
	label values memgreek EVWORK ;
	label values memnat EVWORK ;
	label values memfarm EVWORK ;
	label values memlit EVWORK ;
	label values memprof EVWORK ;
	label values memchurh EVWORK ;
	label values memother EVWORK ;
	label values memnum HRS1 ;
	label values solfrat EVWORK ;
	label values solserv EVWORK ;
	label values solvet EVWORK ;
	label values solpolit EVWORK ;
	label values solunion EVWORK ;
	label values solsport EVWORK ;
	label values solyouth EVWORK ;
	label values solschl EVWORK ;
	label values solhobby EVWORK ;
	label values solgreek EVWORK ;
	label values solnat EVWORK ;
	label values solfarm EVWORK ;
	label values sollit EVWORK ;
	label values solprof EVWORK ;
	label values solchurh EVWORK ;
	label values solother EVWORK ;
	label values actfrat EVWORK ;
	label values actserv EVWORK ;
	label values actvet EVWORK ;
	label values actpolit EVWORK ;
	label values actunion EVWORK ;
	label values actsport EVWORK ;
	label values actyouth EVWORK ;
	label values actschl EVWORK ;
	label values acthobby EVWORK ;
	label values actgreek EVWORK ;
	label values actnat EVWORK ;
	label values actfarm EVWORK ;
	label values actlit EVWORK ;
	label values actprof EVWORK ;
	label values actchurh EVWORK ;
	label values actother EVWORK ;
	label values churhgrp CHURHGRP ;
	label values mostact MOSTACT ;
	label values caregrp CAREGRP ;
	label values servegrp EVWORK ;
	label values leadgrp EVWORK ;
	label values givegrp EVWORK ;
	label values attndgrp EVWORK ;
	label values writegrp EVWORK ;
	label values lobbygrp EVWORK ;
	label values loclived LOCLIVED ;
	label values loctrust LOCTRUST ;
	label values locinflu LOCINFLU ;
	label values locprob EVWORK ;
	label values locgrp EVWORK ;
	label values loccare LOCCARE ;
	label values intpol INTPOL ;
	label values swayvote SWAYVOTE ;
	label values workpol WORKPOL ;
	label values polrally EVWORK ;
	label values loclobby EVWORK ;
	label values locself LOCSELF ;
	label values othlobby EVWORK ;
	label values othself LOCSELF ;
	label values governor GOVERNOR ;
	label values usrep GOVERNOR ;
	label values schlhead GOVERNOR ;
	label values fedtrust LOCTRUST ;
	label values locvote LOCVOTE ;
	label values gavepol EVWORK ;
	label values blkinflu BLKINFLU ;
	label values blkgains BLKGAINS ;
	label values feinflu BLKINFLU ;
	label values fegains FEGAINS ;
	label values scisolve ANOMIA1 ;
	label values scichng ANOMIA1 ;
	label values scipry ANOMIA1 ;
	label values scimoral ANOMIA1 ;
	label values switched EVWORK ;
	label values switch1 SWITCH1 ;
	label values switch2 SWITCH1 ;
	label values switch3 SWITCH1 ;
	label values switnum SWITNUM ;
	label values switage1 HRS1 ;
	label values switage2 HRS1 ;
	label values switwhy1 SWITWHY1 ;
	label values switwhy2 SWITWHY1 ;
	label values marelig RELIG1 ;
	label values maden MADEN ;
	label values maoth MAOTH ;
	label values majew MAJEW ;
	label values mafund FUND ;
	label values parelig SPREL16 ;
	label values paden PADEN ;
	label values paoth MAOTH ;
	label values pajew MAJEW ;
	label values pafund FUND ;
	label values churhsch CHURHSCH ;
	label values sunsch16 SUNSCH16 ;
	label values grace16 EVWORK ;
	label values join16 EVWORK ;
	label values lapsed EVWORK ;
	label values churhmem EVWORK ;
	label values churhact EVWORK ;
	label values god GOD ;
	label values reborn EVWORK ;
	label values savesoul EVWORK ;
	label values saygrace EVWORK ;
	label values readword READWORD ;
	label values punsin PUNSIN ;
	label values blkwhite PUNSIN ;
	label values rotapple PUNSIN ;
	label values permoral PUNSIN ;
	label values decbible DECBIBLE ;
	label values decoths DECBIBLE ;
	label values decchurh DECBIBLE ;
	label values decself DECBIBLE ;
	label values gochurch DECBIBLE ;
	label values believe DECBIBLE ;
	label values follow DECBIBLE ;
	label values goownway DECBIBLE ;
	label values myfaith MYFAITH ;
	label values madatgod MADATGOD ;
	label values doubts1 DOUBTS1 ;
	label values doubts2 DOUBTS1 ;
	label values doubts3 DOUBTS1 ;
	label values doubts4 DOUBTS1 ;
	label values faith1 DOUBTS1 ;
	label values faith2 DOUBTS1 ;
	label values faith3 DOUBTS1 ;
	label values faith4 DOUBTS1 ;
	label values frndcon1 FRNDCON1 ;
	label values frndcon2 FRNDCON1 ;
	label values frndcon3 FRNDCON1 ;
	label values frndcon4 FRNDCON1 ;
	label values frndcon5 FRNDCON1 ;
	label values frndrel1 RELIG1 ;
	label values frndrel2 RELIG1 ;
	label values frndrel3 RELIG1 ;
	label values frndrel4 RELIG1 ;
	label values frndrel5 RELIG1 ;
	label values frndden1 FRNDDEN1 ;
	label values frndden2 FRNDDEN1 ;
	label values frndden3 FRNDDEN1 ;
	label values frndden4 FRNDDEN1 ;
	label values frndden5 FRNDDEN1 ;
	label values frndoth1 FRNDOTH1 ;
	label values frndoth2 FRNDOTH1 ;
	label values frndoth3 FRNDOTH1 ;
	label values frndoth4 FRNDOTH1 ;
	label values frndoth5 FRNDOTH1 ;
	label values frndfnd1 FRNDFND1 ;
	label values frndfnd2 FRNDFND1 ;
	label values frndfnd3 FRNDFND1 ;
	label values frndfnd4 FRNDFND1 ;
	label values frndfnd5 FRNDFND1 ;
	label values frndrac1 FRNDRAC1 ;
	label values frndrac2 FRNDRAC1 ;
	label values frndrac3 FRNDRAC1 ;
	label values frndrac4 FRNDRAC1 ;
	label values frndrac5 FRNDRAC1 ;
	label values friends EVWORK ;
	label values numfrend NUMFREND ;
	label values numbwfrd NUMFREND ;
	label values bwfriend EVWORK ;
	label values godsells GODSELLS ;
	label values godsport GODSELLS ;
	label values givecong GIVECONG ;
	label values giverel GIVECONG ;
	label values giveoth GIVECONG ;
	label values givearts GIVEARTS ;
	label values relhrs1 LIBTEMP ;
	label values relhrs2 LIBTEMP ;
	label values numcong NUMCONG ;
	label values kid5up GIVEARTS ;
	label values pubsch GIVEARTS ;
	label values homesch GIVEARTS ;
	label values cathsch GIVEARTS ;
	label values chrissch GIVEARTS ;
	label values denomsch DENOMSCH ;
	label values relsch GIVEARTS ;
	label values privsch GIVEARTS ;
	label values othsch GIVEARTS ;
	label values shoprel GIVEARTS ;
	label values shopmove GIVEARTS ;
	label values shopnum SHOPNUM ;
	label values othchrch PILLOK ;
	label values implives PILLOK ;
	label values obeytch PILLOK ;
	label values preach PREACH ;
	label values ferespct PREACH ;
	label values sympcoun PREACH ;
	label values wrkyoung PREACH ;
	label values worship PREACH ;
	label values ownthing OWNTHING ;
	label values talkback OWNTHING ;
	label values twoclass OWNTHING ;
	label values openmind OWNTHING ;
	label values whypoor1 WHYPOOR1 ;
	label values whypoor2 WHYPOOR1 ;
	label values whypoor3 WHYPOOR1 ;
	label values whypoor4 WHYPOOR1 ;
	label values socdif1 SOCDIF1 ;
	label values socdif2 SOCDIF1 ;
	label values socdif3 SOCDIF1 ;
	label values socdif4 SOCDIF1 ;
	label values wlthwhts WLTHWHTS ;
	label values wlthjews WLTHWHTS ;
	label values wlthblks WLTHWHTS ;
	label values wlthasns WLTHWHTS ;
	label values wlthhsps WLTHWHTS ;
	label values wlthso WLTHWHTS ;
	label values workwhts WORKWHTS ;
	label values workjews WORKWHTS ;
	label values workblks WORKWHTS ;
	label values workasns WORKWHTS ;
	label values workhsps WORKWHTS ;
	label values workso WORKWHTS ;
	label values violwhts VIOLWHTS ;
	label values violjews VIOLWHTS ;
	label values violblks VIOLWHTS ;
	label values violasns VIOLWHTS ;
	label values violhsps VIOLWHTS ;
	label values violso VIOLWHTS ;
	label values intlwhts INTLWHTS ;
	label values intljews INTLWHTS ;
	label values intlblks INTLWHTS ;
	label values intlasns INTLWHTS ;
	label values intlhsps INTLWHTS ;
	label values intlso INTLWHTS ;
	label values farewhts FAREWHTS ;
	label values farejews FAREWHTS ;
	label values fareblks FAREWHTS ;
	label values fareasns FAREWHTS ;
	label values farehsps FAREWHTS ;
	label values fareso FAREWHTS ;
	label values patrwhts PATRWHTS ;
	label values patrjews PATRWHTS ;
	label values patrblks PATRWHTS ;
	label values patrasns PATRWHTS ;
	label values patrhsps PATRWHTS ;
	label values patrso PATRWHTS ;
	label values livejews LIVEJEWS ;
	label values liveblks LIVEJEWS ;
	label values liveasns LIVEJEWS ;
	label values livehsps LIVEJEWS ;
	label values liveno LIVEJEWS ;
	label values liveso LIVEJEWS ;
	label values livewhts LIVEJEWS ;
	label values marjew LIVEJEWS ;
	label values marblk LIVEJEWS ;
	label values marasian LIVEJEWS ;
	label values marhisp LIVEJEWS ;
	label values marno LIVEJEWS ;
	label values marso LIVEJEWS ;
	label values marwht LIVEJEWS ;
	label values workfare LIVEJEWS ;
	label values lessfare LIVEJEWS ;
	label values povzone LIVEJEWS ;
	label values povschs LIVEJEWS ;
	label values povcol LIVEJEWS ;
	label values blkzone LIVEJEWS ;
	label values blkschs LIVEJEWS ;
	label values blkcol LIVEJEWS ;
	label values racquota LIVEJEWS ;
	label values influwht INFLUWHT ;
	label values influjew INFLUWHT ;
	label values influblk INFLUWHT ;
	label values influasn INFLUWHT ;
	label values influhsp INFLUWHT ;
	label values influso INFLUWHT ;
	label values hspjobs HSPJOBS ;
	label values blkjobs HSPJOBS ;
	label values asnjobs HSPJOBS ;
	label values hsphouse HSPJOBS ;
	label values blkhouse HSPJOBS ;
	label values asnhouse HSPJOBS ;
	label values racwork RACWORK ;
	label values affact GIVEARTS ;
	label values discaff DISCAFF ;
	label values discwhy1 DISCWHY1 ;
	label values discwhy2 DISCWHY1 ;
	label values discwhy3 DISCWHY1 ;
	label values discwhy4 DISCWHY1 ;
	label values discwhy5 DISCWHY1 ;
	label values discwhy6 DISCWHY6 ;
	label values genejob FIGHTAIR ;
	label values genehire FIGHTAIR ;
	label values genecanx FIGHTAIR ;
	label values genecany FIGHTAIR ;
	label values genegets GENEGETS ;
	label values profits1 PILLOK ;
	label values profits2 PILLOK ;
	label values unpower PILLOK ;
	label values unprog PILLOK ;
	label values outofbiz OUTOFBIZ ;
	label values merged OUTOFBIZ ;
	label values reorg EVWORK ;
	label values orgfin ORGFIN ;
	label values wrkyears HRS1 ;
	label values evunemp EVUNEMP ;
	label values numunemp NUMUNEMP ;
	label values totunemp TOTUNEMP ;
	label values fndjob1 OUTOFBIZ ;
	label values fndjob2 OUTOFBIZ ;
	label values fndjob3 OUTOFBIZ ;
	label values fndjob4 OUTOFBIZ ;
	label values fndjob5 OUTOFBIZ ;
	label values fndjob6 OUTOFBIZ ;
	label values fndjob7 OUTOFBIZ ;
	label values fndjob8 OUTOFBIZ ;
	label values fndjob9 FNDJOB9 ;
	label values intltest EVWORK ;
	label values skiltest EVWORK ;
	label values drugtest EVWORK ;
	label values physical EVWORK ;
	label values ltrsref EVWORK ;
	label values samejob SAMEJOB ;
	label values thisjob1 OUTOFBIZ ;
	label values thisjob2 OUTOFBIZ ;
	label values thisjob3 OUTOFBIZ ;
	label values thisjob4 OUTOFBIZ ;
	label values thisjob5 OUTOFBIZ ;
	label values thisjob6 OUTOFBIZ ;
	label values thisjob7 THISJOB7 ;
	label values promotng EVWORK ;
	label values promoted OUTOFBIZ ;
	label values numpromo NUMPROMO ;
	label values imppromo IMPPROMO ;
	label values futpromo FUTPROMO ;
	label values sexpromo SEXPROMO ;
	label values racpromo SEXPROMO ;
	label values advances ADVANCES ;
	label values jobcntrl JOBCNTRL ;
	label values wrkindep WRKINDEP ;
	label values lottosay WRKINDEP ;
	label values idecide WRKINDEP ;
	label values automatn WRKINDEP ;
	label values monitred WRKINDEP ;
	label values offsup OUTOFBIZ ;
	label values yousup YOUSUP ;
	label values supothrs OUTOFBIZ ;
	label values levels AGEWED ;
	label values totsup WHENHS ;
	label values supduty1 EVWORK ;
	label values supduty2 EVWORK ;
	label values supduty3 EVWORK ;
	label values supduty4 EVWORK ;
	label values supduty5 EVWORK ;
	label values supduty6 EVWORK ;
	label values supduty7 EVWORK ;
	label values othduty1 EVWORK ;
	label values othduty2 EVWORK ;
	label values othduty3 EVWORK ;
	label values othduty4 EVWORK ;
	label values othduty5 EVWORK ;
	label values othduty6 EVWORK ;
	label values othduty7 EVWORK ;
	label values orgmoney EVWORK ;
	label values totmoney TOTMONEY ;
	label values youmoney TOTMONEY ;
	label values jobjudge EVWORK ;
	label values quantity QUANTITY ;
	label values quality QUANTITY ;
	label values wrkwell WRKWELL ;
	label values wrkmuch WRKMUCH ;
	label values imatter PILLOK ;
	label values helporg PILLOK ;
	label values notloyal PILLOK ;
	label values stayorg1 PILLOK ;
	label values samevals PILLOK ;
	label values proudorg PILLOK ;
	label values stayorg2 PILLOK ;
	label values noticed PILLOK ;
	label values chngeorg CHNGEORG ;
	label values othpay EVWORK ;
	label values raiseall EVWORK ;
	label values raisehrd EVWORK ;
	label values raisefav EVWORK ;
	label values fringe1 EVWORK ;
	label values fringe2 EVWORK ;
	label values fringe3 EVWORK ;
	label values fringe4 EVWORK ;
	label values fringe5 EVWORK ;
	label values fringe6 EVWORK ;
	label values fringe7 EVWORK ;
	label values fringe8 EVWORK ;
	label values fringe9 EVWORK ;
	label values fringe10 EVWORK ;
	label values fringe11 EVWORK ;
	label values jobvshme JOBVSHME ;
	label values unvote UNVOTE ;
	label values unmanrel UNMANREL ;
	label values cowrkrel UNMANREL ;
	label values schoolng SCHOOLNG ;
	label values training SCHOOLNG ;
	label values learning SCHOOLNG ;
	label values exptrain SCHOOLNG ;
	label values wherewrk WHEREWRK ;
	label values findout OUTOFBIZ ;
	label values baseofop OUTOFBIZ ;
	label values splocnum SPLOCNUM ;
	label values standup STANDUP ;
	label values selfirst SELFIRST ;
	label values richpoor SELFIRST ;
	label values opoutcme OPOUTCME ;
	label values united UNITED ;
	label values obtohelp OBTOHELP ;
	label values lfegod SCHOOLNG ;
	label values lfegenes SCHOOLNG ;
	label values lfesocty SCHOOLNG ;
	label values lfehrdwk SCHOOLNG ;
	label values lfechnce SCHOOLNG ;
	label values bigband BIGBAND ;
	label values blugrass BIGBAND ;
	label values country BIGBAND ;
	label values blues BIGBAND ;
	label values musicals BIGBAND ;
	label values classicl BIGBAND ;
	label values folk BIGBAND ;
	label values gospel BIGBAND ;
	label values jazz BIGBAND ;
	label values latin BIGBAND ;
	label values moodeasy BIGBAND ;
	label values newage BIGBAND ;
	label values opera BIGBAND ;
	label values rap BIGBAND ;
	label values reggae BIGBAND ;
	label values conrock BIGBAND ;
	label values oldies BIGBAND ;
	label values hvymetal BIGBAND ;
	label values attsprts EVWORK ;
	label values visitart EVWORK ;
	label values makeart EVWORK ;
	label values autorace EVWORK ;
	label values camping EVWORK ;
	label values garden EVWORK ;
	label values dance EVWORK ;
	label values gomusic EVWORK ;
	label values huntfish EVWORK ;
	label values perform EVWORK ;
	label values dosports EVWORK ;
	label values seemovie EVWORK ;
	label values usevcr EVWORK ;
	label values plymusic EVWORK ;
	label values tvshows TVSHOWS ;
	label values tvnews TVSHOWS ;
	label values tvpbs TVSHOWS ;
	label values judgeart PILLOK ;
	label values trstprof PILLOK ;
	label values classics PILLOK ;
	label values grtbooks PILLOK ;
	label values modpaint PILLOK ;
	label values english PILLOK ;
	label values pclit PILLOK ;
	label values excelart PILLOK ;
	label values hosthome PILLOK ;
	label values frdcreat FRDCREAT ;
	label values frdcultr FRDCREAT ;
	label values frddynam FRDCREAT ;
	label values frdfun FRDCREAT ;
	label values frdhonst FRDCREAT ;
	label values frdintel FRDCREAT ;
	label values frdresp FRDCREAT ;
	label values impfinan IMPFINAN ;
	label values impmar IMPFINAN ;
	label values impkids IMPFINAN ;
	label values impgod IMPFINAN ;
	label values impthngs IMPTHNGS ;
	label values impcultr IMPFINAN ;
	label values impjob IMPFINAN ;
	label values impself IMPFINAN ;
	label values mostimp1 MOSTIMP1 ;
	label values mostimp2 MOSTIMP1 ;
	label values mostimp3 MOSTIMP1 ;
	label values mostimp4 MOSTIMP1 ;
	label values colmajr1 COLMAJR1 ;
	label values colmajr2 COLMAJR2 ;
	label values hsclass1 COLMAJR1 ;
	label values hsclass2 COLMAJR2 ;
	label values malive1 EVWORK ;
	label values mayrborn WHENHS ;
	label values mayrdied WHENHS ;
	label values palive1 EVWORK ;
	label values payrborn WHENHS ;
	label values payrdied WHENHS ;
	label values datesch WHENHS ;
	label values neverwk NEVERWK ;
	label values occfirst FRNDOTH1 ;
	label values presfrst OCC ;
	label values wrkslfst WRKSLFST ;
	label values indfirst FRNDOTH1 ;
	label values datefrst WHENHS ;
	label values alike1 ALIKE1 ;
	label values alike2 ALIKE1 ;
	label values alike3 ALIKE1 ;
	label values alike4 ALIKE1 ;
	label values alike5 ALIKE1 ;
	label values alike6 ALIKE1 ;
	label values alike7 ALIKE1 ;
	label values alike8 ALIKE1 ;
	label values marnum EVWORK ;
	label values fstspyr WHENHS ;
	label values fstspedc EDUC ;
	label values fstspdeg DEGREE ;
	label values fstspped EDUC ;
	label values fstspmed EDUC ;
	label values agewedcr AGEWED ;
	label values spyrborn WHENHS ;
	label values spmarnum EVWORK ;
	label values spfam16 SPFAM16 ;
	label values sppaeduc HRS1 ;
	label values spmaeduc HRS1 ;
	label values sphedocc FRNDOTH1 ;
	label values sphedpre OCC ;
	label values sphedslf WRKSLFST ;
	label values sphedind FRNDOTH1 ;
	label values spsibs SPSIBS ;
	label values kdsex1 KDSEX1 ;
	label values kdsex2 KDSEX1 ;
	label values kdsex3 KDSEX1 ;
	label values kdsex4 KDSEX1 ;
	label values kdsex5 KDSEX1 ;
	label values kdsex6 KDSEX1 ;
	label values kdsex7 KDSEX1 ;
	label values kdsex8 KDSEX1 ;
	label values kdsex9 KDSEX1 ;
	label values kdyrbrn1 KDYRBRN1 ;
	label values kdyrbrn2 KDYRBRN1 ;
	label values kdyrbrn3 KDYRBRN1 ;
	label values kdyrbrn4 KDYRBRN1 ;
	label values kdyrbrn5 KDYRBRN1 ;
	label values kdyrbrn6 KDYRBRN1 ;
	label values kdyrbrn7 KDYRBRN1 ;
	label values kdyrbrn8 KDYRBRN1 ;
	label values kdyrbrn9 KDYRBRN1 ;
	label values kdrel1 KDREL1 ;
	label values kdrel2 KDREL1 ;
	label values kdrel3 KDREL1 ;
	label values kdrel4 KDREL1 ;
	label values kdrel5 KDREL1 ;
	label values kdrel6 KDREL1 ;
	label values kdrel7 KDREL1 ;
	label values kdrel8 KDREL1 ;
	label values kdrel9 KDREL1 ;
	label values kdalive1 EVWORK ;
	label values kdalive2 EVWORK ;
	label values kdalive3 EVWORK ;
	label values kdalive4 EVWORK ;
	label values kdalive5 EVWORK ;
	label values kdalive6 EVWORK ;
	label values kdalive7 EVWORK ;
	label values kdalive8 EVWORK ;
	label values kdalive9 EVWORK ;
	label values kdeduc1 HRS1 ;
	label values kdeduc2 HRS1 ;
	label values kdeduc3 HRS1 ;
	label values kdeduc4 HRS1 ;
	label values kdeduc5 HRS1 ;
	label values kdeduc6 HRS1 ;
	label values kdeduc7 HRS1 ;
	label values kdeduc8 HRS1 ;
	label values kdeduc9 HRS1 ;
	label values kdwork1 EVWORK ;
	label values kdwork2 EVWORK ;
	label values kdevwork EVWORK ;
	label values kdocc80 OCC80 ;
	label values kdpres80 OCC ;
	label values kdwrkslf WRKSLFST ;
	label values kdind80 INDUS80 ;
	label values sbsex1 KDSEX1 ;
	label values sbsex2 KDSEX1 ;
	label values sbsex3 KDSEX1 ;
	label values sbsex4 KDSEX1 ;
	label values sbsex5 KDSEX1 ;
	label values sbsex6 KDSEX1 ;
	label values sbsex7 KDSEX1 ;
	label values sbsex8 KDSEX1 ;
	label values sbsex9 KDSEX1 ;
	label values sbyrbrn1 KDYRBRN1 ;
	label values sbyrbrn2 KDYRBRN1 ;
	label values sbyrbrn3 KDYRBRN1 ;
	label values sbyrbrn4 KDYRBRN1 ;
	label values sbyrbrn5 KDYRBRN1 ;
	label values sbyrbrn6 KDYRBRN1 ;
	label values sbyrbrn7 KDYRBRN1 ;
	label values sbyrbrn8 KDYRBRN1 ;
	label values sbyrbrn9 KDYRBRN1 ;
	label values sbrel1 SBREL1 ;
	label values sbrel2 SBREL1 ;
	label values sbrel3 SBREL1 ;
	label values sbrel4 SBREL1 ;
	label values sbrel5 SBREL1 ;
	label values sbrel6 SBREL1 ;
	label values sbrel7 SBREL1 ;
	label values sbrel8 SBREL1 ;
	label values sbrel9 SBREL1 ;
	label values sbalive1 EVWORK ;
	label values sbalive2 EVWORK ;
	label values sbalive3 EVWORK ;
	label values sbalive4 EVWORK ;
	label values sbalive5 EVWORK ;
	label values sbalive6 EVWORK ;
	label values sbalive7 EVWORK ;
	label values sbalive8 EVWORK ;
	label values sbalive9 EVWORK ;
	label values sbeduc EDUC ;
	label values sbdeg DEGREE ;
	label values sbwork1 EVWORK ;
	label values sbwork2 EVWORK ;
	label values sbevwork EVWORK ;
	label values sbocc80 OCC80 ;
	label values sbpres80 OCC ;
	label values sbwrkslf WRKSLFST ;
	label values sbind80 INDUS80 ;
	label values ethid ETHID ;
	label values amissue AMISSUE ;
	label values ethissue AMISSUE ;
	label values ethid1 ETHID1 ;
	label values amissue1 AMISSUE ;
	label values ethissu1 AMISSUE ;
	label values amrank AMRANK ;
	label values amproud AMPROUD ;
	label values meltpot MELTPOT ;
	label values gvtapart GVTAPART ;
	label values gvtmelt GVTAPART ;
	label values ethorgs SELFIRST ;
	label values ethspkok SELFIRST ;
	label values ethspkno SELFIRST ;
	label values symptblk SYMPTBLK ;
	label values admirblk SYMPTBLK ;
	label values bilinged BILINGED ;
	label values engteach ENGTEACH ;
	label values engballt ENGBALLT ;
	label values engoffcl ENGOFFCL ;
	label values letin LETIN ;
	label values hspasn10 HSPASN10 ;
	label values immecon IMMECON ;
	label values immunemp IMMECON ;
	label values immunite IMMECON ;
	label values immfare IMMFARE ;
	label values undocwrk UNDOCWRK ;
	label values undoccol UNDOCWRK ;
	label values undockid UNDOCKID ;
	label values immpush SELFIRST ;
	label values immwrkup SELFIRST ;
	label values colaff COLAFF ;
	label values colaffy COLAFF ;
	label values discaffy COLAFF ;
	label values jobaff JOBAFF ;
	label values owneth OWNETH ;
	label values congeth CONGETH ;
	label values teacheth CONGETH ;
	label values schleth CONGETH ;
	label values ethhist ETHHIST ;
	label values whoteach SELFIRST ;
	label values whtgovt WHTGOVT ;
	label values blkgovt WHTGOVT ;
	label values hspgovt WHTGOVT ;
	label values asngovt WHTGOVT ;
	label values wlthimm WLTHIMM ;
	label values wlthundc WLTHIMM ;
	label values workimm WORKIMM ;
	label values workundc WORKIMM ;
	label values obrespct PILLOK ;
	label values econpast ECONPAST ;
	label values pastup PASTUP ;
	label values pastdown PASTDOWN ;
	label values econfutr ECONFUTR ;
	label values futrup PASTUP ;
	label values futrdown PASTDOWN ;
	label values rdiscaff RDISCAFF ;
	label values rimmdisc RDISCAFF ;
	label values romance ROMANCE ;
	label values livewith ROMANCE ;
	label values haprom HAPROM ;
	label values willwed1 RDISCAFF ;
	label values willwed2 ROMANCE ;
	label values hapgirls HAPGIRLS ;
	label values hapboys HAPGIRLS ;
	label values fejobaff FEJOBAFF ;
	label values tradmod TRADMOD ;
	label values sharesep SHARESEP ;
	label values emoteoth EMOTEOTH ;
	label values rhmewrk RHMEWRK ;
	label values sphmewrk RHMEWRK ;
	label values fairhwrk FAIRHWRK ;
	label values earnmore EARNMORE ;
	label values famlife FAMLIFE ;
	label values worklife FAMLIFE ;
	label values balwkfam FAMLIFE ;
	label values refpromo EVWORK ;
	label values refmorwk EVWORK ;
	label values refxhour EVWORK ;
	label values workless EVWORK ;
	label values noathome EVWORK ;
	label values nonurse EVWORK ;
	label values nohmewrk EVWORK ;
	label values discaffm DISCAFFM ;
	label values discaffw DISCAFFM ;
	label values flextime FLEXTIME ;
	label values parleave PARLEAVE ;
	label values menben EVWORK ;
	label values womenben EVWORK ;
	label values chldben EVWORK ;
	label values allben EVWORK ;
	label values nooneben EVWORK ;
	label values menhrt EVWORK ;
	label values womenhrt EVWORK ;
	label values chldhrt EVWORK ;
	label values allhrt EVWORK ;
	label values noonehrt EVWORK ;
	label values feless1 FELESS1 ;
	label values feless2 FELESS1 ;
	label values feless3 FELESS1 ;
	label values fekids1 FELESS1 ;
	label values fekids2 FELESS1 ;
	label values fekids3 FELESS1 ;
	label values fekids4 FELESS1 ;
	label values fekids5 FELESS1 ;
	label values mebear GIVEARTS ;
	label values fehire FEHIRE ;
	label values feminist FEMINIST ;
	label values fenews SYMPTBLK ;
	label values hmemaker HMEMAKER ;
	label values wrkclass HMEMAKER ;
	label values manprof HMEMAKER ;
	label values men HMEMAKER ;
	label values children HMEMAKER ;
	label values yourself YOURSELF ;
	label values shakeblu CHLDSOON ;
	label values calm CHLDSOON ;
	label values outraged CHLDSOON ;
	label values hapfeel CHLDSOON ;
	label values sad CHLDSOON ;
	label values ashamed CHLDSOON ;
	label values excited CHLDSOON ;
	label values lonely CHLDSOON ;
	label values fearful CHLDSOON ;
	label values ovrjoyed CHLDSOON ;
	label values worried CHLDSOON ;
	label values contentd CHLDSOON ;
	label values anxious CHLDSOON ;
	label values restless CHLDSOON ;
	label values madat CHLDSOON ;
	label values atease CHLDSOON ;
	label values angry CHLDSOON ;
	label values embarrss CHLDSOON ;
	label values proud CHLDSOON ;
	label values noplan NOPLAN ;
	label values badbrks NOPLAN ;
	label values mostluck NOPLAN ;
	label values litcntrl NOPLAN ;
	label values showangr NOPLAN ;
	label values showfeel NOPLAN ;
	label values noemote NOPLAN ;
	label values notupset NOPLAN ;
	label values beplesnt NOPLAN ;
	label values notworry NOPLAN ;
	label values angrywrk EVWORK ;
	label values angryfam EVWORK ;
	label values angrygvt EVWORK ;
	label values angrywhy AGEWED ;
	label values angryev GIVEARTS ;
	label values whnangry WHNANGRY ;
	label values madat1 EVWORK ;
	label values madat2 EVWORK ;
	label values madat3 EVWORK ;
	label values madat4 EVWORK ;
	label values madat5 EVWORK ;
	label values madat6 EVWORK ;
	label values madat7 EVWORK ;
	label values madat8 EVWORK ;
	label values madat9 EVWORK ;
	label values madat10 EVWORK ;
	label values madat11 EVWORK ;
	label values madat12 EVWORK ;
	label values madat13 EVWORK ;
	label values madat14 EVWORK ;
	label values madat15 EVWORK ;
	label values madat16 EVWORK ;
	label values madat17 EVWORK ;
	label values madat18 EVWORK ;
	label values madat19 EVWORK ;
	label values madat20 EVWORK ;
	label values madat21 EVWORK ;
	label values madat22 EVWORK ;
	label values madat23 MADAT23 ;
	label values howangry HOWANGRY ;
	label values angrlast ANGRLAST ;
	label values thnkangr THNKANGR ;
	label values chnang1 CHNANG1 ;
	label values chnang2 CHNANG1 ;
	label values chnang3 CHNANG1 ;
	label values chnang4 CHNANG1 ;
	label values chnang5 CHNANG1 ;
	label values chnang6 CHNANG1 ;
	label values chnang7 CHNANG1 ;
	label values chnang8 CHNANG1 ;
	label values chnang9 CHNANG1 ;
	label values chnang10 CHNANG1 ;
	label values chnang11 CHNANG1 ;
	label values chnang12 CHNANG1 ;
	label values chnang13 CHNANG1 ;
	label values chnang14 CHNANG1 ;
	label values chnang15 CHNANG1 ;
	label values chnang16 CHNANG1 ;
	label values reactok REACTOK ;
	label values othresp OTHRESP ;
	label values selfresp OTHRESP ;
	label values likeoth LIKEOTH ;
	label values amimp AMIMP ;
	label values notam NOTAM ;
	label values usworry USWORRY ;
	label values ussat USWORRY ;
	label values usfrustr USWORRY ;
	label values usenthus USWORRY ;
	label values usangry USWORRY ;
	label values ushopefl USWORRY ;
	label values usupset USWORRY ;
	label values carprivt EVWORK ;
	label values relprivt RELPRIVT ;
	label values warrntyc WARRNTYC ;
	label values cardealr EVWORK ;
	label values newused NEWUSED ;
	label values typdealr TYPDEALR ;
	label values carbuya EVWORK ;
	label values carbuyb EVWORK ;
	label values carbuyc EVWORK ;
	label values carbuyd EVWORK ;
	label values carbuye EVWORK ;
	label values carbuyf EVWORK ;
	label values carbuyg EVWORK ;
	label values carbuy1 CARBUY1 ;
	label values reldealr RELDEALR ;
	label values satcar SATCAR ;
	label values evbuyhme EVWORK ;
	label values homeyear AGEWED ;
	label values learnhme LEARNHME ;
	label values newowned NEWOWNED ;
	label values relhome RELHOME ;
	label values whosold WHOSOLD ;
	label values realtora EVWORK ;
	label values realtorb EVWORK ;
	label values realtorc EVWORK ;
	label values realtord EVWORK ;
	label values realtore EVWORK ;
	label values realtorf EVWORK ;
	label values realtor1 CARBUY1 ;
	label values relagent RELHOME ;
	label values warrntyh WARRNTYC ;
	label values sathome SATCAR ;
	label values lawyer EVWORK ;
	label values lawyera EVWORK ;
	label values lawyerb EVWORK ;
	label values lawyerc EVWORK ;
	label values lawyerd EVWORK ;
	label values lawyere EVWORK ;
	label values lawyerf EVWORK ;
	label values lawyerg EVWORK ;
	label values lawyer1 LAWYER1 ;
	label values rellaw RELLAW ;
	label values satlawyr SATCAR ;
	label values fixhome EVWORK ;
	label values fixera EVWORK ;
	label values fixerb EVWORK ;
	label values fixerc EVWORK ;
	label values fixerd EVWORK ;
	label values fixere EVWORK ;
	label values fixerf EVWORK ;
	label values fixer1 LAWYER1 ;
	label values relfixer RELFIXER ;
	label values satfixes SATCAR ;
	label values borrowed EVWORK ;
	label values wholoand WHOLOAND ;
	label values sellbed SELLBED ;
	label values sellauto SELLBED ;
	label values sellhome SELLBED ;
	label values transoth TRANSOTH ;
	label values loaned EVWORK ;
	label values loanedto LOANEDTO ;
	label values buybed SELLBED ;
	label values buyauto SELLBED ;
	label values buylaw SELLBED ;
	label values buyfixes SELLBED ;
	label values buyhome SELLBED ;
	label values transrel TRANSOTH ;
	label values frnddeal FEHIRE ;
	label values frndawk FEHIRE ;
	label values tablprce TABLPRCE ;
	label values organsb ORGANSB ;
	label values organsw ORGANSB ;
	label values sellorgn SELLORGN ;
	label values adoption ADOPTION ;
	label values sellbaby SELLBABY ;
	label values sellsex SELLSEX ;
	label values reqinfo SELLSEX ;
	label values natrecon SELLSEX ;
	label values tagsales TAGSALES ;
	label values haggle HAGGLE ;
	label values wkfambiz EVWORK ;
	label values hrfambiz HRFAMBIZ ;
	label values fambiz FAMBIZ ;
	label values econsys ECONSYS ;
	label values famfinan FAMFINAN ;
	label values decauto DECAUTO ;
	label values decbed DECAUTO ;
	label values decgift DECAUTO ;
	label values layoffs LAYOFFS ;
	label values volhlth EVWORK ;
	label values voleduc EVWORK ;
	label values volrelig EVWORK ;
	label values volhuman EVWORK ;
	label values volenvir EVWORK ;
	label values volpub EVWORK ;
	label values volrec EVWORK ;
	label values volart EVWORK ;
	label values volwork EVWORK ;
	label values volpol EVWORK ;
	label values volyouth EVWORK ;
	label values volfound EVWORK ;
	label values volintl EVWORK ;
	label values volinfrm EVWORK ;
	label values voloth EVWORK ;
	label values monhlth EVWORK ;
	label values moneduc EVWORK ;
	label values monrelig EVWORK ;
	label values monhuman EVWORK ;
	label values monenvir EVWORK ;
	label values monpub EVWORK ;
	label values monrec EVWORK ;
	label values monart EVWORK ;
	label values monwork EVWORK ;
	label values monpol EVWORK ;
	label values monyouth EVWORK ;
	label values monfound EVWORK ;
	label values monintl EVWORK ;
	label values moninfrm EVWORK ;
	label values monoth EVWORK ;
	label values hrshlth HRS1 ;
	label values hrseduc HRS1 ;
	label values hrsrelig HRS1 ;
	label values hrshuman HRS1 ;
	label values hrsenvir HRS1 ;
	label values hrspub HRS1 ;
	label values hrsrec HRS1 ;
	label values hrsart HRS1 ;
	label values hrswork HRS1 ;
	label values hrspol HRS1 ;
	label values hrsyouth HRS1 ;
	label values hrsfound HRS1 ;
	label values hrsintl HRS1 ;
	label values hrsinfrm HRS1 ;
	label values hrsoth HRS1 ;
	label values givhlth EVWORK ;
	label values giveduc EVWORK ;
	label values givrelig EVWORK ;
	label values givhuman EVWORK ;
	label values givenvir EVWORK ;
	label values givpub EVWORK ;
	label values givrec EVWORK ;
	label values givart EVWORK ;
	label values givwork EVWORK ;
	label values givpol EVWORK ;
	label values givyouth EVWORK ;
	label values givfound EVWORK ;
	label values givintl EVWORK ;
	label values givinfrm EVWORK ;
	label values givoth EVWORK ;
	label values tothlth TOTHLTH ;
	label values toteduc TOTHLTH ;
	label values totrelig TOTHLTH ;
	label values tothuman TOTHLTH ;
	label values totenvir TOTHLTH ;
	label values totpub TOTHLTH ;
	label values totrec TOTHLTH ;
	label values totart TOTHLTH ;
	label values totwork TOTHLTH ;
	label values totpol TOTHLTH ;
	label values totyouth TOTHLTH ;
	label values totfound TOTHLTH ;
	label values totintl TOTHLTH ;
	label values totinfrm TOTHLTH ;
	label values tototh TOTHLTH ;
	label values valhlth TOTHLTH ;
	label values valeduc TOTHLTH ;
	label values valrelig TOTHLTH ;
	label values valhuman TOTHLTH ;
	label values valenvir TOTHLTH ;
	label values valpub TOTHLTH ;
	label values valrec TOTHLTH ;
	label values valart TOTHLTH ;
	label values valwork TOTHLTH ;
	label values valpol TOTHLTH ;
	label values valyouth TOTHLTH ;
	label values valfound TOTHLTH ;
	label values valintl TOTHLTH ;
	label values valinfrm TOTHLTH ;
	label values valoth TOTHLTH ;
	label values homeless EVWORK ;
	label values needynei EVWORK ;
	label values needyrel EVWORK ;
	label values needyfrd EVWORK ;
	label values needyoth EVWORK ;
	label values probfix1 AGEWED ;
	label values probfix2 AGEWED ;
	label values probfix3 AGEWED ;
	label values probhlp1 FRNDOTH1 ;
	label values probhlp2 FRNDOTH1 ;
	label values probhlp3 FRNDOTH1 ;
	label values vigversn VIGVERSN ;
	label values seriousp SERIOUSP ;
	label values charactr CHARACTR ;
	label values imbalnce CHARACTR ;
	label values wayraise CHARACTR ;
	label values stresses CHARACTR ;
	label values genetics CHARACTR ;
	label values godswill CHARACTR ;
	label values upsdowns CHARACTR ;
	label values breakdwn CHARACTR ;
	label values mentlill CHARACTR ;
	label values physill CHARACTR ;
	label values viglabel CHARACTR ;
	label values dectreat DECTREAT ;
	label values decmoney DECTREAT ;
	label values imprvown IMPRVOWN ;
	label values imprvtrt IMPRVOWN ;
	label values vignei VIGNEI ;
	label values vigsoc VIGNEI ;
	label values vigfrnd VIGNEI ;
	label values vigwork VIGNEI ;
	label values viggrp VIGNEI ;
	label values vigmar VIGNEI ;
	label values hurtoth HURTOTH ;
	label values hurtself HURTOTH ;
	label values tlkfam EVWORK ;
	label values tlkclrgy EVWORK ;
	label values meddoc EVWORK ;
	label values mentldoc EVWORK ;
	label values mentloth EVWORK ;
	label values sphealer EVWORK ;
	label values selfhelp EVWORK ;
	label values otcmed EVWORK ;
	label values rxmed EVWORK ;
	label values mentlhos EVWORK ;
	label values ortlkfm AGEWED ;
	label values ortlkclr AGEWED ;
	label values ormeddoc AGEWED ;
	label values ormntldc AGEWED ;
	label values ormntlot AGEWED ;
	label values orhealer AGEWED ;
	label values orslfhlp AGEWED ;
	label values orotcmed AGEWED ;
	label values orrxmed AGEWED ;
	label values ormntlhs AGEWED ;
	label values mustdoc EVWORK ;
	label values mustmed EVWORK ;
	label values musthosp EVWORK ;
	label values dangrslf EVWORK ;
	label values dangroth EVWORK ;
	label values medcare1 MEDCARE1 ;
	label values medcare2 MEDCARE2 ;
	label values spmentl SPMENTL ;
	label values govmentl GOVMENTL ;
	label values mntlas1 AGEWED ;
	label values mntlas2 AGEWED ;
	label values mntlimp1 FRNDOTH1 ;
	label values mntlimp2 FRNDOTH1 ;
	label values mntlimp3 FRNDOTH1 ;
	label values mntlsym1 FRNDOTH1 ;
	label values mntlsym2 FRNDOTH1 ;
	label values mntlsym3 FRNDOTH1 ;
	label values mntloth MNTLOTH ;
	label values brkdas1 AGEWED ;
	label values brkdas2 AGEWED ;
	label values brkdimp1 FRNDOTH1 ;
	label values brkdimp2 FRNDOTH1 ;
	label values brkdimp3 FRNDOTH1 ;
	label values brkdsym1 FRNDOTH1 ;
	label values brkdsym2 FRNDOTH1 ;
	label values brkdsym3 FRNDOTH1 ;
	label values brkdoth MNTLOTH ;
	label values knwmhosp KNWMHOSP ;
	label values relmhsp1 RELMHSP1 ;
	label values relmhsp2 RELMHSP2 ;
	label values relmhsp3 RELMHSP3 ;
	label values relmhsp4 RELMHSP4 ;
	label values relmhsp5 RELMHSP5 ;
	label values relmhsp6 RELMHSP6 ;
	label values knwpatnt GIVEARTS ;
	label values evbrkdwn GIVEARTS ;
	label values brkdwhy1 FRNDOTH1 ;
	label values brkdwhy2 FRNDOTH1 ;
	label values brkdwhy3 FRNDOTH1 ;
	label values brkddo1 AGEWED ;
	label values brkddo2 AGEWED ;
	label values brkddo3 AGEWED ;
	label values brkdhlp1 FRNDOTH1 ;
	label values brkdhlp2 FRNDOTH1 ;
	label values brkdhlp3 FRNDOTH1 ;
	label values brkdtime CARBUY1 ;
	label values brkddur CARBUY1 ;
	label values evmhp KNWMHOSP ;
	label values mnilwhy1 FRNDOTH1 ;
	label values mnilwhy2 FRNDOTH1 ;
	label values mnilwhy3 FRNDOTH1 ;
	label values mnildo1 AGEWED ;
	label values mnildo2 AGEWED ;
	label values mnildo3 AGEWED ;
	label values mnilhlp1 FRNDOTH1 ;
	label values mnilhlp2 FRNDOTH1 ;
	label values mnilhlp3 FRNDOTH1 ;
	label values mniltime CARBUY1 ;
	label values mnildur CARBUY1 ;
	label values privpray PRIVPRAY ;
	label values meditate PRIVPRAY ;
	label values conghlp1 CONGHLP1 ;
	label values conghlp2 CONGHLP1 ;
	label values conghrm1 CONGHRM1 ;
	label values conghrm2 CONGHRM1 ;
	label values cope1 COPE1 ;
	label values cope2 COPE1 ;
	label values cope3 COPE1 ;
	label values cope4 COPE1 ;
	label values cope5 COPE1 ;
	label values cope6 COPE1 ;
	label values godwatch GODWATCH ;
	label values lesspain GODWATCH ;
	label values rellife GODWATCH ;
	label values forgive1 FORGIVE1 ;
	label values forgive2 FORGIVE1 ;
	label values forgive3 FORGIVE1 ;
	label values feelgod FEELGOD ;
	label values relcmfrt FEELGOD ;
	label values harmony FEELGOD ;
	label values uniongod FEELGOD ;
	label values godlove FEELGOD ;
	label values beausprt FEELGOD ;
	label values nocheer NOCHEER ;
	label values nervous NOCHEER ;
	label values fidgety NOCHEER ;
	label values hopeless NOCHEER ;
	label values effort NOCHEER ;
	label values wrthless NOCHEER ;
	label values relpersn RELPERSN ;
	label values sprtprsn SPRTPRSN ;
	label values relexp EVWORK ;
	label values natarts NATARTS ;
	label values artgod GODWATCH ;
	label values artists GODWATCH ;
	label values irrelart IRRELART ;
	label values irreloff IRRELOFF ;
	label values aimofart AIMOFART ;
	label values readfict EVWORK ;
	label values popmusic EVWORK ;
	label values drama EVWORK ;
	label values relart EVWORK ;
	label values volarts EVWORK ;
	label values natlart EVWORK ;
	label values stateart EVWORK ;
	label values localart EVWORK ;
	label values occyrs HRS1 ;
	label values occtrain GIVEARTS ;
	label values trainsch TRAINSCH ;
	label values typeorg TYPEORG ;
	label values wrkoth GIVEARTS ;
	label values othyrs SHOPNUM ;
	label values partorg PARTORG ;
	label values orgsize ORGSIZE ;
	label values genderwk GENDERWK ;
	label values locyrs SHOPNUM ;
	label values samework GIVEARTS ;
	label values siteyrs SHOPNUM ;
	label values otjtrain OTJTRAIN ;
	label values formltrn GIVEARTS ;
	label values formlfin FORMLFIN ;
	label values formldys FORMLDYS ;
	label values formlhrs FORMLHRS ;
	label values doingtrn GIVEARTS ;
	label values doingfin DOINGFIN ;
	label values doingdys DOINGDYS ;
	label values wojob GIVEARTS ;
	label values wojobyrs WOJOBYRS ;
	label values numemp NUMEMP ;
	label values howpaid HOWPAID ;
	label values hourly HOURLY ;
	label values daily DAILY ;
	label values weekly DAILY ;
	label values monthly MONTHLY ;
	label values yearly YEARLY ;
	label values trusting TRUSTING ;
	label values seenmntl GIVEARTS ;
	label values psycmed1 PSYCMED1 ;
	label values psycmed2 PSYCMED1 ;
	label values psycmed3 PSYCMED1 ;
	label values psycmed4 PSYCMED1 ;
	label values psycmed5 PSYCMED1 ;
	label values psycmed6 PSYCMED1 ;
	label values psycmed7 PSYCMED1 ;
	label values usepsyc1 USEPSYC1 ;
	label values usepsyc2 USEPSYC1 ;
	label values usepsyc3 USEPSYC1 ;
	label values usepsyc4 USEPSYC1 ;
	label values psyckid1 USEPSYC1 ;
	label values psyckid2 USEPSYC1 ;
	label values psyckid3 USEPSYC1 ;
	label values psycdrct USEPSYC1 ;
	label values psycfdoc USEPSYC1 ;
	label values psycpsyc USEPSYC1 ;
	label values hlthinsr HLTHINSR ;
	label values doclist DOCLIST ;
	label values anydoc GIVEARTS ;
	label values swithlth SWITHLTH ;
	label values usedmntl DOCLIST ;
	label values mntlcare DOCLIST ;
	label values mntldif MNTLDIF ;
	label values mntldeny GIVEARTS ;
	label values hmo1 HMO1 ;
	label values hmo2 HMO1 ;
	label values hmo3 HMO1 ;
	label values hmo4 HMO1 ;
	label values hmo5 HMO1 ;
	label values hmo6 HMO1 ;
	label values hmo7 HMO1 ;
	label values doc1 DOC1 ;
	label values doc2 DOC1 ;
	label values doc3 DOC1 ;
	label values doc4 DOC1 ;
	label values doc5 DOC1 ;
	label values doc6 DOC1 ;
	label values doc7 DOC1 ;
	label values doc8 DOC1 ;
	label values doc9 DOC1 ;
	label values doc10 DOC1 ;
	label values doc11 DOC1 ;
	label values doc12 DOC1 ;
	label values doc13 DOC1 ;
	label values doc14 DOC1 ;
	label values doc15 DOC15 ;
	label values doc16 DOC15 ;
	label values doc17 DOC1 ;
	label values doc18 DOC15 ;
	label values doc19 DOC15 ;
	label values doc20 DOC15 ;
	label values prozac KNWMHOSP ;
	label values usedproz KNWMHOSP ;
	label values knwnproz KNWMHOSP ;
	label values prozfor1 PROZFOR1 ;
	label values prozfor2 PROZFOR1 ;
	label values prozfor3 PROZFOR1 ;
	label values proz1 PROZ1 ;
	label values proz2 PROZ1 ;
	label values proz3 PROZ1 ;
	label values proz4 PROZ1 ;
	label values proz5 PROZ1 ;
	label values proz6 PROZ1 ;
	label values proz7 PROZ1 ;
	label values proz8 PROZ1 ;
	label values proz9 PROZ1 ;
	label values prozslf1 PROZSLF1 ;
	label values prozslf2 PROZSLF1 ;
	label values prozslf3 PROZSLF1 ;
	label values prozslf4 PROZSLF1 ;
	label values prozkid1 PROZSLF1 ;
	label values prozkid2 PROZSLF1 ;
	label values prozkid3 PROZSLF1 ;
	label values socsecrt PARSOL ;
	label values socsecfx SOCSECFX ;
	label values socsecnu SOCSECNU ;
	label values terminal TERMINAL ;
	label values termecon TERMECON ;
	label values termrel TERMECON ;
	label values termemot TERMECON ;
	label values termpain TERMECON ;
	label values termpay TERMECON ;
	label values trustfam TRUSTFAM ;
	label values trustdoc TRUSTFAM ;
	label values trustcrt TRUSTFAM ;
	label values termvig TERMVIG ;
	label values rightref RIGHTREF ;
	label values notreat RIGHTREF ;
	label values instrctn RIGHTREF ;
	label values hospice RIGHTREF ;
	label values painmed RIGHTREF ;
	label values docsui TERMECON ;
	label values famwhts FAMWHTS ;
	label values famblks FAMWHTS ;
	label values famjews FAMWHTS ;
	label values famhsps FAMWHTS ;
	label values famasns FAMWHTS ;
	label values fairwhts FAIRWHTS ;
	label values fairblks FAIRWHTS ;
	label values fairjews FAIRWHTS ;
	label values fairhsps FAIRWHTS ;
	label values fairasns FAIRWHTS ;
	label values conteng CONTENG ;
	label values contitl CONTENG ;
	label values contchn CONTENG ;
	label values contjew CONTENG ;
	label values contblk CONTENG ;
	label values contmex CONTENG ;
	label values contvn CONTENG ;
	label values contcuba CONTENG ;
	label values contirsh CONTENG ;
	label values contpr CONTENG ;
	label values contjpn CONTENG ;
	label values contmslm CONTENG ;
	label values othlang EVWORK ;
	label values othlang1 OTHLANG1 ;
	label values othlang2 OTHLANG1 ;
	label values othbest OTHBEST ;
	label values spklang SPKLANG ;
	label values uselang USELANG ;
	label values getlang GETLANG ;
	label values parlang EVWORK ;
	label values granlang EVWORK ;
	label values langcom USELANG ;
	label values langwrk LANGWRK ;
	label values engoff1 CAPPUN ;
	label values twolang PILLOK ;
	label values nobiling PILLOK ;
	label values engunite PILLOK ;
	label values forlang1 PILLOK ;
	label values engthrtn PILLOK ;
	label values engvote PILLOK ;
	label values othhome OTHHOME ;
	label values betrlang BETRLANG ;
	label values spklangw SPKLANGW ;
	label values letinhsp LETINHSP ;
	label values letinasn LETINHSP ;
	label values letineur LETINHSP ;
	label values immcrmup POSTLF1 ;
	label values immnew POSTLF1 ;
	label values immnojob POSTLF1 ;
	label values uswht LIBTEMP ;
	label values usblk LIBTEMP ;
	label values usjews LIBTEMP ;
	label values ushisp LIBTEMP ;
	label values usasn LIBTEMP ;
	label values usamind LIBTEMP ;
	label values usmixed LIBTEMP ;
	label values whtchng WHTCHNG ;
	label values blkchng WHTCHNG ;
	label values jewschng WHTCHNG ;
	label values hispchng WHTCHNG ;
	label values asnchng WHTCHNG ;
	label values ethchng ETHCHNG ;
	label values comwht LIBTEMP ;
	label values comblk LIBTEMP ;
	label values comjews LIBTEMP ;
	label values comhisp LIBTEMP ;
	label values comasn LIBTEMP ;
	label values comamind LIBTEMP ;
	label values hispwork HISPWORK ;
	label values knwwht EVWORK ;
	label values knwblk EVWORK ;
	label values knwjew EVWORK ;
	label values knwhisp EVWORK ;
	label values knwasn EVWORK ;
	label values whtschl EVWORK ;
	label values whtcom EVWORK ;
	label values whtrel EVWORK ;
	label values whtwrk EVWORK ;
	label values whtcls EVWORK ;
	label values blkschl EVWORK ;
	label values blkcom EVWORK ;
	label values blkrel EVWORK ;
	label values blkwrk EVWORK ;
	label values blkcls EVWORK ;
	label values jewsschl EVWORK ;
	label values jewscom EVWORK ;
	label values jewsrel EVWORK ;
	label values jewswrk EVWORK ;
	label values jewscls EVWORK ;
	label values hispschl EVWORK ;
	label values hispcom EVWORK ;
	label values hisprel EVWORK ;
	label values hispwrk EVWORK ;
	label values hispcls EVWORK ;
	label values asnschl EVWORK ;
	label values asncom EVWORK ;
	label values asnrel EVWORK ;
	label values asnwrk EVWORK ;
	label values asncls EVWORK ;
	label values mostcom MOSTCOM ;
	label values leastcom MOSTCOM ;
	label values neieth1 NEIETH1 ;
	label values neieth2 NEIETH1 ;
	label values neieth3 NEIETH1 ;
	label values neieth4 NEIETH1 ;
	label values neieth5 NEIETH1 ;
	label values neieth6 NEIETH1 ;
	label values neieth7 NEIETH1 ;
	label values neieth8 NEIETH1 ;
	label values neieth9 NEIETH1 ;
	label values neieth10 NEIETH1 ;
	label values neieth11 NEIETH1 ;
	label values neieth12 NEIETH1 ;
	label values neieth13 NEIETH1 ;
	label values neieth14 NEIETH1 ;
	label values hswht HSWHT ;
	label values hseth HSETH ;
	label values compuse EVWORK ;
	label values webtv EVWORK ;
	label values WEBMOB CONVICTD ;
	label values emailmin HRS1 ;
	label values emailhr LIBTEMP ;
	label values usewww EVWORK ;
	label values wwwhr LIBTEMP ;
	label values wwwmin HRS1 ;
	label values chathr LIBTEMP ;
	label values chatmin HRS1 ;
	label values drctlink DRCTLINK ;
	label values typeurl DRCTLINK ;
	label values srcheng DRCTLINK ;
	label values bookmark DRCTLINK ;
	label values catdrcty DRCTLINK ;
	label values hyperlnk DRCTLINK ;
	label values emaillnk EMAILLNK ;
	label values fin30 FIN30 ;
	label values schl30 FIN30 ;
	label values educ30 FIN30 ;
	label values work30 FIN30 ;
	label values news30 FIN30 ;
	label values govt30 FIN30 ;
	label values pol30 FIN30 ;
	label values travel30 FIN30 ;
	label values sports30 FIN30 ;
	label values music30 FIN30 ;
	label values art30 FIN30 ;
	label values tvmov30 FIN30 ;
	label values health30 FIN30 ;
	label values relig30 FIN30 ;
	label values games30 FIN30 ;
	label values humor30 FIN30 ;
	label values porn30 FIN30 ;
	label values person30 FIN30 ;
	label values sci30 FIN30 ;
	label values hobby30 FIN30 ;
	label values cook30 FIN30 ;
	label values work12 EVWORK ;
	label values hmefin12 EVWORK ;
	label values buyinf12 EVWORK ;
	label values buyit12 EVWORK ;
	label values invest12 EVWORK ;
	label values people12 EVWORK ;
	label values health12 EVWORK ;
	label values travel12 EVWORK ;
	label values locate12 EVWORK ;
	label values game12 EVWORK ;
	label values newjob12 EVWORK ;
	label values chat12 EVWORK ;
	label values polinf12 EVWORK ;
	label values econ12 EVWORK ;
	label values abort12 EVWORK ;
	label values moral12 EVWORK ;
	label values foraff12 EVWORK ;
	label values racrel12 EVWORK ;
	label values enviro12 EVWORK ;
	label values polcam12 EVWORK ;
	label values gun12 EVWORK ;
	label values taxes12 EVWORK ;
	label values fe12 EVWORK ;
	label values news12 EVWORK ;
	label values polagree POLAGREE ;
	label values polneutl POLNEUTL ;
	label values poldsagr POLNEUTL ;
	label values petition EVWORK ;
	label values contact EVWORK ;
	label values meeting EVWORK ;
	label values polnew POLNEW ;
	label values votefor OTHHOME ;
	label values polchnge EVWORK ;
	label values polforms POLNEUTL ;
	label values polconf POLNEUTL ;
	label values polalter POLNEUTL ;
	label values poltough POLNEUTL ;
	label values artsmin HRS1 ;
	label values artshr LIBTEMP ;
	label values artschat OUTOFBIZ ;
	label values artsnew POLNEW ;
	label values artschng EVWORK ;
	label values wwwmusic EVWORK ;
	label values musicinf EVWORK ;
	label values musicget EVWORK ;
	label values musiclst EVWORK ;
	label values musicbuy EVWORK ;
	label values wwwclass WWWCLASS ;
	label values wwwcntry WWWCLASS ;
	label values wwwgthic WWWCLASS ;
	label values wwwjazz WWWCLASS ;
	label values wwwoldie WWWCLASS ;
	label values wwwrap WWWCLASS ;
	label values wwwrelig WWWCLASS ;
	label values wwwrock WWWCLASS ;
	label values wwwworld WWWCLASS ;
	label values musiclke POLNEUTL ;
	label values musicdif POLNEUTL ;
	label values musicnew POLNEUTL ;
	label values wwwart EVWORK ;
	label values artmus1 EVWORK ;
	label values artmus2 EVWORK ;
	label values artview EVWORK ;
	label values artinfo EVWORK ;
	label values artmus3 EVWORK ;
	label values wwwlit EVWORK ;
	label values litsite EVWORK ;
	label values litget EVWORK ;
	label values litauth EVWORK ;
	label values litread EVWORK ;
	label values wwwpersn EVWORK ;
	label values wwwsp EVWORK ;
	label values wwwgfbf EVWORK ;
	label values wwwcowrk EVWORK ;
	label values wwwbiz EVWORK ;
	label values wwwnei EVWORK ;
	label values wwwfrnd EVWORK ;
	label values wwwvol EVWORK ;
	label values online EVWORK ;
	label values manual EVWORK ;
	label values callcomp EVWORK ;
	label values askwork EVWORK ;
	label values askother EVWORK ;
	label values payother EVWORK ;
	label values doonown EVWORK ;
	label values advsp EVWORK ;
	label values advchld EVWORK ;
	label values advpar EVWORK ;
	label values advsib EVWORK ;
	label values advfam EVWORK ;
	label values advtchr EVWORK ;
	label values advstu EVWORK ;
	label values advsup EVWORK ;
	label values advcowrk EVWORK ;
	label values advcfrnd EVWORK ;
	label values advofrnd EVWORK ;
	label values advlib EVWORK ;
	label values srcheng1 EVWORK ;
	label values srcheng2 SRCHENG2 ;
	label values download EVWORK ;
	label values upload EVWORK ;
	label values cmpvirus EVWORK ;
	label values hlthinfo HLTHINFO ;
	label values hlthpapr HLTHINFO ;
	label values hlthmag1 HLTHINFO ;
	label values hlthmag2 HLTHINFO ;
	label values hlthdoc HLTHINFO ;
	label values hlthfrel HLTHINFO ;
	label values hlthtv HLTHINFO ;
	label values hlthwww HLTHINFO ;
	label values polinfo POLINFO ;
	label values polpapr POLINFO ;
	label values polmag1 POLINFO ;
	label values polmag2 POLINFO ;
	label values poltv POLINFO ;
	label values polfrel POLINFO ;
	label values polcamp POLINFO ;
	label values polwww POLINFO ;
	label values buyinfgn HLTHINFO ;
	label values investgn HLTHINFO ;
	label values travelgn HLTHINFO ;
	label values peoplegn HLTHINFO ;
	label values gamegn HLTHINFO ;
	label values newjobgn HLTHINFO ;
	label values poldisgn HLTHINFO ;
	label values polinfgn HLTHINFO ;
	label values perfrmgn HLTHINFO ;
	label values artgn HLTHINFO ;
	label values polcangn HLTHINFO ;
	label values numcntct NUMCNTCT ;
	label values inperson INPERSON ;
	label values byphone INPERSON ;
	label values letters INPERSON ;
	label values meetings INPERSON ;
	label values byemail INPERSON ;
	label values comphome EVWORK ;
	label values usehome EVWORK ;
	label values numhome NUMHOME ;
	label values wwwhome EVWORK ;
	label values paywww PAYWWW ;
	label values wwwline1 WWWLINE1 ;
	label values wwwline2 WWWLINE2 ;
	label values ecomminh HRS1 ;
	label values ecomhrh LIBTEMP ;
	label values perminh HRS1 ;
	label values perhrh LIBTEMP ;
	label values wrkminh HRS1 ;
	label values wrkhrh LIBTEMP ;
	label values emminh HRS1 ;
	label values emhrh LIBTEMP ;
	label values wwwminh HRS1 ;
	label values wwwhrh LIBTEMP ;
	label values compwork EVWORK ;
	label values jobminw HRS1 ;
	label values jobhrw LIBTEMP ;
	label values incminw HRS1 ;
	label values inchrw LIBTEMP ;
	label values ecomminw HRS1 ;
	label values ecomhrw LIBTEMP ;
	label values perminw HRS1 ;
	label values perhrw LIBTEMP ;
	label values emminw HRS1 ;
	label values emhrw LIBTEMP ;
	label values wwwminw HRS1 ;
	label values wwwhrw LIBTEMP ;
	label values compoth EVWORK ;
	label values compschl EVWORK ;
	label values complib EVWORK ;
	label values compfri EVWORK ;
	label values compelse EVWORK ;
	label values mostloc MOSTLOC ;
	label values ecommino HRS1 ;
	label values ecomhro LIBTEMP ;
	label values permino HRS1 ;
	label values perhro LIBTEMP ;
	label values wrkmino HRS1 ;
	label values wrkhro LIBTEMP ;
	label values emmino HRS1 ;
	label values emhro LIBTEMP ;
	label values wwwmino HRS1 ;
	label values wwwhro LIBTEMP ;
	label values emsent LIBTEMP ;
	label values emsentp LIBTEMP ;
	label values emget LIBTEMP ;
	label values emgetp LIBTEMP ;
	label values emwrkloc EVWORK ;
	label values emwrkawy EVWORK ;
	label values emfamloc EVWORK ;
	label values emfamoth EVWORK ;
	label values emfri EVWORK ;
	label values emchurch EVWORK ;
	label values emgroups EVWORK ;
	label values numprobs NUMPROBS ;
	label values byemprob NUMPROBS ;
	label values intaccss OTHHOME ;
	label values jobinfo JOBINFO ;
	label values jobpaper JOBPAPER ;
	label values jobpub JOBPAPER ;
	label values jobcowrk JOBPAPER ;
	label values jobcntct JOBPAPER ;
	label values jobfrnds JOBPAPER ;
	label values jobplace JOBPAPER ;
	label values jobtvrad JOBPAPER ;
	label values jobonwww JOBPAPER ;
	label values emailyr EMAILYR ;
	label values webyr WEBYR ;
	label values webable WEBABLE ;
	label values manbook EVWORK ;
	label values cussup OTHHOME ;
	label values tecsup OTHHOME ;
	label values askwksch EVWORK ;
	label values askelse EVWORK ;
	label values payelse EVWORK ;
	label values doself EVWORK ;
	label values processr PROCESSR ;
	label values browser1 OTHHOME ;
	label values browser2 OTHHOME ;
	label values browser3 BROWSER3 ;
	label values advsrch ADVSRCH ;
	label values mp3 ADVSRCH ;
	label values ezines ADVSRCH ;
	label values prefsets ADVSRCH ;
	label values newsgrps ADVSRCH ;
	label values timekid1 TIMEKID1 ;
	label values timekid2 TIMEKID1 ;
	label values timekid3 TIMEKID1 ;
	label values timekid4 TIMEKID1 ;
	label values sptmkid1 TIMEKID1 ;
	label values sptmkid2 TIMEKID1 ;
	label values sptmkid3 TIMEKID1 ;
	label values sptmkid4 TIMEKID1 ;
	label values kdtmkid1 TIMEKID1 ;
	label values kdtmkid2 TIMEKID1 ;
	label values kdtmkid3 TIMEKID1 ;
	label values kdtmkid4 TIMEKID1 ;
	label values knowkid1 KNOWKID1 ;
	label values knowkid2 KNOWKID1 ;
	label values knowkid3 KNOWKID1 ;
	label values knowkid4 KNOWKID1 ;
	label values huclean HUCLEAN ;
	label values homeband HOMEBAND ;
	label values freemns1 FREEMNS1 ;
	label values freemns2 FREEMNS1 ;
	label values freemns3 FREEMNS1 ;
	label values freeexp1 FREEEXP1 ;
	label values freeexp2 FREEEXP1 ;
	label values freeexp3 FREEEXP1 ;
	label values howfree HOWFREE ;
	label values rhowfree HOWFREE ;
	label values freenow FREENOW ;
	label values rfreenow FREENOW ;
	label values satdemoc SATDEMOC ;
	label values leftlone LEFTLONE ;
	label values nogovt LEFTLONE ;
	label values inpeace LEFTLONE ;
	label values partpol LEFTLONE ;
	label values choice LEFTLONE ;
	label values expunpop LEFTLONE ;
	label values freeprss FREEPRSS ;
	label values wlthpov WLTHPOV ;
	label values cntrlife CNTRLIFE ;
	label values modact MODACT ;
	label values stairs MODACT ;
	label values didlessp EVWORK ;
	label values limitedp EVWORK ;
	label values didlesse EVWORK ;
	label values crelesse EVWORK ;
	label values pain PAIN ;
	label values peaceful PEACEFUL ;
	label values energy PEACEFUL ;
	label values downblue PEACEFUL ;
	label values socacts PEACEFUL ;
	label values treat1 TREAT1 ;
	label values treat2 TREAT1 ;
	label values treat3 TREAT1 ;
	label values treat4 TREAT1 ;
	label values treat5 TREAT1 ;
	label values treat6 TREAT1 ;
	label values treat7 TREAT1 ;
	label values treat8 TREAT1 ;
	label values treat9 TREAT1 ;
	label values treat10 TREAT1 ;
	label values treat11 TREAT1 ;
	label values wait1 WAIT1 ;
	label values wait2 WAIT1 ;
	label values wait3 WAIT1 ;
	label values wait4 WAIT1 ;
	label values wait5 WAIT1 ;
	label values wait6 WAIT1 ;
	label values wait7 WAIT1 ;
	label values wait8 WAIT1 ;
	label values wait9 WAIT1 ;
	label values wait10 WAIT1 ;
	label values wait11 WAIT1 ;
	label values downqol DOWNQOL ;
	label values downfam DOWNQOL ;
	label values downcure DOWNQOL ;
	label values downrely DOWNQOL ;
	label values downfeel DOWNQOL ;
	label values painqol DOWNQOL ;
	label values painfam DOWNQOL ;
	label values paincure DOWNQOL ;
	label values painrely DOWNQOL ;
	label values painfeel DOWNQOL ;
	label values emotqol DOWNQOL ;
	label values emotfam DOWNQOL ;
	label values emotcure DOWNQOL ;
	label values emotrely DOWNQOL ;
	label values emotfeel DOWNQOL ;
	label values ethimp ETHIMP ;
	label values ethignor ETHIGNOR ;
	label values ethnofit ETHIGNOR ;
	label values ethtrads ETHIGNOR ;
	label values ethadapt ETHIGNOR ;
	label values feelblks FEELBLKS ;
	label values feelasns FEELBLKS ;
	label values feelhsps FEELBLKS ;
	label values feelwhts FEELBLKS ;
	label values ethsame ETHIGNOR ;
	label values ethdiff ETHIGNOR ;
	label values whtsdiff ETHIGNOR ;
	label values docvig DOCVIG ;
	label values regdoc OTHHOME ;
	label values regdocyr OTHHOME ;
	label values docaskme DOCASKME ;
	label values docdecid DOCASKME ;
	label values docrely DOCASKME ;
	label values hlthplan OTHHOME ;
	label values chosedoc OTHHOME ;
	label values insrlmts OTHHOME ;
	label values diffcare OTHHOME ;
	label values fininc OTHHOME ;
	label values fininc1 FININC1 ;
	label values fininc2 FININC2 ;
	label values fininc3 FININC3 ;
	label values fininc4 FININC4 ;
	label values belvedoc BELVEDOC ;
	label values docinfo BELVEDOC ;
	label values docnomri BELVEDOC ;
	label values docsat DOCSAT ;
	label values doccosts DOCCOSTS ;
	label values docswtch BELVEDOC ;
	label values insrchng BELVEDOC ;
	label values secopin BELVEDOC ;
	label values wrktype WRKTYPE ;
	label values yearsjob YEARSJOB ;
	label values waypaid WAYPAID ;
	label values wrksched WRKSCHED ;
	label values moredays MOREDAYS ;
	label values mustwork OTHHOME ;
	label values chngtme CHNGTME ;
	label values wrkhome WRKHOME ;
	label values whywkhme WHYWKHME ;
	label values famwkoff FAMWKOFF ;
	label values wkvsfam CHNGTME ;
	label values famvswk CHNGTME ;
	label values hrsrelax MOREDAYS ;
	label values secondwk OTHHOME ;
	label values learnnew LEARNNEW ;
	label values workfast LEARNNEW ;
	label values workdiff LEARNNEW ;
	label values lotofsay LEARNNEW ;
	label values wktopsat LEARNNEW ;
	label values overwork LEARNNEW ;
	label values knowwhat LEARNNEW ;
	label values myskills LEARNNEW ;
	label values respect LEARNNEW ;
	label values trustman LEARNNEW ;
	label values safetywk LEARNNEW ;
	label values safefrst LEARNNEW ;
	label values teamsafe LEARNNEW ;
	label values safehlth LEARNNEW ;
	label values proudemp LEARNNEW ;
	label values prodctiv LEARNNEW ;
	label values wksmooth LEARNNEW ;
	label values trdunion LEARNNEW ;
	label values partteam PARTTEAM ;
	label values wkdecide CHNGTME ;
	label values setthngs CHNGTME ;
	label values toofewwk CHNGTME ;
	label values promteok PROMTEOK ;
	label values opdevel PROMTEOK ;
	label values hlpequip PROMTEOK ;
	label values haveinfo PROMTEOK ;
	label values wkfreedm PROMTEOK ;
	label values fringeok PROMTEOK ;
	label values supcares PROMTEOK ;
	label values condemnd PROMTEOK ;
	label values promtefr PROMTEOK ;
	label values cowrkint PROMTEOK ;
	label values jobsecok PROMTEOK ;
	label values suphelp PROMTEOK ;
	label values wrktime PROMTEOK ;
	label values cowrkhlp PROMTEOK ;
	label values trainops PROMTEOK ;
	label values manvsemp MANVSEMP ;
	label values hvylift OTHHOME ;
	label values handmove OTHHOME ;
	label values wkpraise WKPRAISE ;
	label values wkbonus WKPRAISE ;
	label values fairearn FAIREARN ;
	label values rincblls OTHHOME ;
	label values laidoff OTHHOME ;
	label values jobfind1 JOBFIND1 ;
	label values trynewjb TRYNEWJB ;
	label values wkageism OTHHOME ;
	label values wkracism OTHHOME ;
	label values wksexism OTHHOME ;
	label values wkharsex OTHHOME ;
	label values wkharoth OTHHOME ;
	label values health1 DOCSAT ;
	label values physhlth MOREDAYS ;
	label values mntlhlth MOREDAYS ;
	label values hlthdays MOREDAYS ;
	label values usedup USEDUP ;
	label values backpain OTHHOME ;
	label values painarms OTHHOME ;
	label values hurtatwk HURTATWK ;
	label values SPVTRFAIR SPVTRFAI ;
	label values suprvsjb CONVICTD ;
	label values STRREDPG CONVICTD ;
	label values PHYEFFRT PHYEFFRT ;
	label values SLPPRBLM SLPPRBLM ;
	label values satjob1 SATJOB1 ;
	label values KNOWSCHD KNOWSCHD ;
	label values USETECH LIBTEMP ;
	label values STRESS12 CONVICTD ;
	label values HYPERTEN CONVICTD ;
	label values arthrtis CONVICTD ;
	label values DIABETES CONVICTD ;
	label values DEPRESS CONVICTD ;
	label values WEIGHT WEIGHT ;
	label values HEIGHT HEIGHT ;
	label values NTWKHARD LIBTEMP ;
	label values MISSWORK HRS1 ;
	label values workfor WORKFOR ;
	label values WORKFOR1 WORKFOR1 ;
	label values ownstock OWNSTOCK ;
	label values stockval STOCKVAL ;
	label values stockops OTHHOME ;
	label values extrapay OTHHOME ;
	label values compperf OTHHOME ;
	label values deptperf OTHHOME ;
	label values indperf OTHHOME ;
	label values extr2001 OTHHOME ;
	label values extraval STOCKVAL ;
	label values extrayr EXTRAYR ;
	label values yearval STOCKVAL ;
	label values seecowrk SEECOWRK ;
	label values cowrkhrd COWRKHRD ;
	label values talkemp TALKEMP ;
	label values talksup TALKSUP ;
	label values donothng TALKEMP ;
	label values lastwkmo LASTWKMO ;
	label values lastwkyr EXTRAYR ;
	label values empathy1 EMPATHY1 ;
	label values empathy2 EMPATHY1 ;
	label values empathy3 EMPATHY1 ;
	label values empathy4 EMPATHY1 ;
	label values empathy5 EMPATHY1 ;
	label values empathy6 EMPATHY1 ;
	label values empathy7 EMPATHY1 ;
	label values givblood GIVBLOOD ;
	label values givhmlss GIVBLOOD ;
	label values retchnge GIVBLOOD ;
	label values cutahead GIVBLOOD ;
	label values volchrty GIVBLOOD ;
	label values givchrty GIVBLOOD ;
	label values givseat GIVBLOOD ;
	label values helpaway GIVBLOOD ;
	label values carried GIVBLOOD ;
	label values directns GIVBLOOD ;
	label values loanitem GIVBLOOD ;
	label values selfless SELFLESS ;
	label values accptoth SELFLESS ;
	label values othshelp ETHIGNOR ;
	label values careself ETHIGNOR ;
	label values peoptrbl ETHIGNOR ;
	label values selffrst ETHIGNOR ;
	label values VOLMONTH CONVICTD ;
	label values VALGIVEN VALGIVEN ;
	label values finind FININD ;
	label values finind1 MOREDAYS ;
	label values ownhh FININD ;
	label values ownhh1 MOREDAYS ;
	label values eddone FININD ;
	label values eddone1 MOREDAYS ;
	label values ftwork FININD ;
	label values ftwork1 MOREDAYS ;
	label values supfam FININD ;
	label values supfam1 MOREDAYS ;
	label values havchld FININD ;
	label values havchld1 MOREDAYS ;
	label values getmar FININD ;
	label values getmar1 MOREDAYS ;
	label values boycott OTHHOME ;
	label values signpet OTHHOME ;
	label values protest OTHHOME ;
	label values conoffcl OTHHOME ;
	label values givchng OTHHOME ;
	label values hlpneedy OTHHOME ;
	label values partthon OTHHOME ;
	label values chldvig VIGVERSN ;
	label values chldprb CHLDPRB ;
	label values chldprob CHLDPROB ;
	label values chldhlp CHLDHLP ;
	label values badchar BADCHAR ;
	label values chembal BADCHAR ;
	label values stressfl BADCHAR ;
	label values geneprob BADCHAR ;
	label values raised BADCHAR ;
	label values violtv BADCHAR ;
	label values discipln BADCHAR ;
	label values allergic BADCHAR ;
	label values bettrown BADCHAR ;
	label values imprvdis BADCHAR ;
	label values imprveat BADCHAR ;
	label values imprvmed BADCHAR ;
	label values nextdoor NEXTDOOR ;
	label values spendeve NEXTDOOR ;
	label values chldfrnd NEXTDOOR ;
	label values chldsch NEXTDOOR ;
	label values adfam OTHHOME ;
	label values adfammed BADCHAR ;
	label values adtch OTHHOME ;
	label values adtchmed BADCHAR ;
	label values addoc OTHHOME ;
	label values addocmed BADCHAR ;
	label values adcou OTHHOME ;
	label values adcoumed BADCHAR ;
	label values adpsy OTHHOME ;
	label values adpsymed BADCHAR ;
	label values adhos OTHHOME ;
	label values adhosmed BADCHAR ;
	label values forcedoc OTHHOME ;
	label values forcemed OTHHOME ;
	label values forcehos OTHHOME ;
	label values grwingup GRWINGUP ;
	label values mntlill GRWINGUP ;
	label values illphys GRWINGUP ;
	label values violpeop GRWINGUP ;
	label values violself GRWINGUP ;
	label values outsider OUTSIDER ;
	label values sufadult OUTSIDER ;
	label values comknows OUTSIDER ;
	label values failure OUTSIDER ;
	label values ovrmedkd OUTSIDER ;
	label values medkdneg OUTSIDER ;
	label values putsoff OUTSIDER ;
	label values trbllaw OUTSIDER ;
	label values medsavtx OUTSIDER ;
	label values zombies OUTSIDER ;
	label values pryntfam OUTSIDER ;
	label values adhdknow ADHDKNOW ;
	label values adhdknw ADHDKNW ;
	label values adhdreal OTHHOME ;
	label values adhdcon OTHHOME ;
	label values adhdmed OTHHOME ;
	label values mntlrel MNTLREL ;
	label values medsymps OUTSIDER ;
	label values medaddct OUTSIDER ;
	label values medweak OUTSIDER ;
	label values medunacc OUTSIDER ;
	label values solveown SOLVEOWN ;
	label values doc15a DOC15A ;
	label values doc16a DOC15A ;
	label values doc18a DOC15A ;
	label values doc19a DOC15A ;
	label values doc20a DOC15A ;
	label values caninf1 CANINF1 ;
	label values caninf2 CANINF1 ;
	label values caninf3 CANINF1 ;
	label values caninf4 CANINF1 ;
	label values caninf5 CANINF1 ;
	label values caninf6 CANINF1 ;
	label values caninf7 CANINF1 ;
	label values caninf8 CANINF1 ;
	label values caninf9 CANINF1 ;
	label values caninf10 CANINF1 ;
	label values caninf11 CANINF1 ;
	label values caninf12 CANINF1 ;
	label values caninf13 CANINF1 ;
	label values caninf14 CANINF14 ;
	label values difstand DIFSTAND ;
	label values rptprobs DIFSTAND ;
	label values othcredt DIFSTAND ;
	label values putdown DIFSTAND ;
	label values lackinfo DIFSTAND ;
	label values perspace DIFSTAND ;
	label values physharm DIFSTAND ;
	label values actupset DIFSTAND ;
	label values shout DIFSTAND ;
	label values hotargus DIFSTAND ;
	label values reliedon RELIEDON ;
	label values gdjobsec RELIEDON ;
	label values treatres OWNTHING ;
	label values lookaway OWNTHING ;
	label values skipwork DIFSTAND ;
	label values numemps HRS1 ;
	label values IGNORWK IGNORWK ;
	label values RUMORWK IGNORWK ;
	label values JOKESWK IGNORWK ;
	label values EHARASWK IGNORWK ;
	label values RUDEWK IGNORWK ;
	label values LIEDCWKR IGNORWK ;
	label values DENYRAIS IGNORWK ;
	label values WKBHVRS WKBHVRS ;
	label values WKRSPNS WKRSPNS ;
	label values natborn NATBORN ;
	label values bornhome BORNHOME ;
	label values travelus BORNHOME ;
	label values immstats BORNHOME ;
	label values rundrstd RUNDRSTD ;
	label values robject ROBJECT ;
	label values genevig1 VIGVERSN ;
	label values genevig2 VIGVERSN ;
	label values genenvo1 GENENVO1 ;
	label values genenvo2 GENENVO1 ;
	label values genenvo3 GENENVO1 ;
	label values genenvo4 GENENVO1 ;
	label values satself LEARNNEW ;
	label values afailure LEARNNEW ;
	label values slfrspct LEARNNEW ;
	label values ofworth LEARNNEW ;
	label values nogood LEARNNEW ;
	label values optimist LEARNNEW ;
	label values pessimst LEARNNEW ;
	label values notcount LEARNNEW ;
	label values moregood LEARNNEW ;
	label values owndoing OWNDOING ;
	label values geneexps GENEEXPS ;
	label values depndabl DEPNDABL ;
	label values sadblue DEPNDABL ;
	label values athletic DEPNDABL ;
	label values kindpers DEPNDABL ;
	label values selfish DEPNDABL ;
	label values intrwght INTRWGHT ;
	label values agape1 AGAPE1 ;
	label values agape2 AGAPE1 ;
	label values agape3 AGAPE1 ;
	label values agape4 AGAPE1 ;
	label values hgunlaw HGUNLAW ;
	label values hguncrim HGUNCRIM ;
	label values crimup CRIMUP ;
	label values crimdown CRIMDOWN ;
	label values numrelex NUMRELEX ;
	label values agerelex MOREDAYS ;
	label values chngrel GIVEARTS ;
	label values numrborn NUMRBORN ;
	label values agerborn MOREDAYS ;
	label values chngrbrn GIVEARTS ;
	label values entity ENTITY ;
	label values expchng1 EXPCHNG1 ;
	label values expchng2 EXPCHNG1 ;
	label values expchng3 EXPCHNG1 ;
	label values whychng1 EXPCHNG1 ;
	label values whychng2 EXPCHNG1 ;
	label values whychng3 EXPCHNG1 ;
	label values changed1 EXPCHNG1 ;
	label values changed2 EXPCHNG1 ;
	label values changed3 EXPCHNG1 ;
	label values relalt1 RELALT1 ;
	label values relalt2 RELALT1 ;
	label values relalt3 RELALT1 ;
	label values relalt4 RELALT1 ;
	label values relalt5 RELALT1 ;
	label values relalt6 RELALT1 ;
	label values alloflfe SELFLESS ;
	label values joylifts SELFLESS ;
	label values relsprt1 SELFLESS ;
	label values relsprt2 SELFLESS ;
	label values godhelp SELFLESS ;
	label values godguide SELFLESS ;
	label values godlvdir SELFLESS ;
	label values godlvoth SELFLESS ;
	label values blessngs SELFLESS ;
	label values closrgod SELFLESS ;
	label values godclose GODCLOSE ;
	label values idols ETHIGNOR ;
	label values rosaries ETHIGNOR ;
	label values notthink ETHIGNOR ;
	label values evdrink OTHHOME ;
	label values drinkyr DRINKYR ;
	label values drinkday GENENVO1 ;
	label values drink6up DRINKYR ;
	label values drinkmax DRINKMAX ;
	label values drink12 DRINK12 ;
	label values drink8 DRINK12 ;
	label values drink5 DRINK12 ;
	label values drink3 DRINK12 ;
	label values drink1 DRINK12 ;
	label values drinkmin DRINK12 ;
	label values churchtx OTHHOME ;
	label values infrmgrp OTHHOME ;
	label values typfrat OTHHOME ;
	label values typserv OTHHOME ;
	label values typvet OTHHOME ;
	label values typpolit OTHHOME ;
	label values typunion OTHHOME ;
	label values typsport OTHHOME ;
	label values typyouth OTHHOME ;
	label values typschl OTHHOME ;
	label values typhobby OTHHOME ;
	label values typgreek OTHHOME ;
	label values typnat OTHHOME ;
	label values typfarm OTHHOME ;
	label values typlit OTHHOME ;
	label values typprof OTHHOME ;
	label values typchurh OTHHOME ;
	label values typother OTHHOME ;
	label values typinfrm OTHHOME ;
	label values numfrat NUMFRAT ;
	label values numserv NUMFRAT ;
	label values numvet NUMFRAT ;
	label values numpolit NUMFRAT ;
	label values numunion NUMFRAT ;
	label values numsport NUMFRAT ;
	label values numyouth NUMFRAT ;
	label values numschl NUMFRAT ;
	label values numhobby NUMFRAT ;
	label values numgreek NUMFRAT ;
	label values numnat NUMFRAT ;
	label values numfarm NUMFRAT ;
	label values numlit NUMFRAT ;
	label values numprof NUMFRAT ;
	label values numchurh NUMFRAT ;
	label values numother NUMFRAT ;
	label values numinfrm NUMFRAT ;
	label values yrfrat1 MOREDAYS ;
	label values yrfrat2 MOREDAYS ;
	label values yrfrat3 MOREDAYS ;
	label values yrfrat4 MOREDAYS ;
	label values yrserv1 MOREDAYS ;
	label values yrserv2 MOREDAYS ;
	label values yrserv3 MOREDAYS ;
	label values yrserv4 MOREDAYS ;
	label values yrserv5 MOREDAYS ;
	label values yrserv6 MOREDAYS ;
	label values yrserv7 MOREDAYS ;
	label values yrserv8 MOREDAYS ;
	label values yrvet1 MOREDAYS ;
	label values yrvet2 MOREDAYS ;
	label values yrvet3 MOREDAYS ;
	label values yrvet4 MOREDAYS ;
	label values yrvet5 MOREDAYS ;
	label values yrpolit1 MOREDAYS ;
	label values yrpolit2 MOREDAYS ;
	label values yrpolit3 MOREDAYS ;
	label values yrunion1 MOREDAYS ;
	label values yrunion2 MOREDAYS ;
	label values yrunion3 MOREDAYS ;
	label values yrunion4 MOREDAYS ;
	label values yrsport1 MOREDAYS ;
	label values yrsport2 MOREDAYS ;
	label values yrsport3 MOREDAYS ;
	label values yrsport4 MOREDAYS ;
	label values yrsport5 MOREDAYS ;
	label values yrsport6 MOREDAYS ;
	label values yryouth1 MOREDAYS ;
	label values yryouth2 MOREDAYS ;
	label values yryouth3 MOREDAYS ;
	label values yryouth4 MOREDAYS ;
	label values yryouth5 MOREDAYS ;
	label values yrschl1 MOREDAYS ;
	label values yrschl2 MOREDAYS ;
	label values yrschl3 MOREDAYS ;
	label values yrschl4 MOREDAYS ;
	label values yrhobby1 MOREDAYS ;
	label values yrhobby2 MOREDAYS ;
	label values yrhobby3 MOREDAYS ;
	label values yrgreek1 MOREDAYS ;
	label values yrgreek2 MOREDAYS ;
	label values yrgreek3 MOREDAYS ;
	label values yrnat1 MOREDAYS ;
	label values yrnat2 MOREDAYS ;
	label values yrnat3 MOREDAYS ;
	label values yrfarm1 MOREDAYS ;
	label values yrfarm2 MOREDAYS ;
	label values yrfarm3 MOREDAYS ;
	label values yrlit1 MOREDAYS ;
	label values yrlit2 MOREDAYS ;
	label values yrlit3 MOREDAYS ;
	label values yrlit4 MOREDAYS ;
	label values yrprof1 MOREDAYS ;
	label values yrprof2 MOREDAYS ;
	label values yrprof3 MOREDAYS ;
	label values yrprof4 MOREDAYS ;
	label values yrprof5 MOREDAYS ;
	label values yrprof6 MOREDAYS ;
	label values yrchurh1 MOREDAYS ;
	label values yrchurh2 MOREDAYS ;
	label values yrchurh3 MOREDAYS ;
	label values yrchurh4 MOREDAYS ;
	label values yrchurh5 MOREDAYS ;
	label values yrchurh6 MOREDAYS ;
	label values yrother1 MOREDAYS ;
	label values yrother2 MOREDAYS ;
	label values yrother3 MOREDAYS ;
	label values yrother4 MOREDAYS ;
	label values yrother5 MOREDAYS ;
	label values yrinfrm1 MOREDAYS ;
	label values yrinfrm2 MOREDAYS ;
	label values yrinfrm3 MOREDAYS ;
	label values yrinfrm4 MOREDAYS ;
	label values yrinfrm5 MOREDAYS ;
	label values mtfrat1 OTHHOME ;
	label values mtfrat2 OTHHOME ;
	label values mtfrat3 OTHHOME ;
	label values mtfrat4 OTHHOME ;
	label values mtserv1 OTHHOME ;
	label values mtserv2 OTHHOME ;
	label values mtserv3 OTHHOME ;
	label values mtserv4 OTHHOME ;
	label values mtserv5 OTHHOME ;
	label values mtserv6 OTHHOME ;
	label values mtserv7 OTHHOME ;
	label values mtserv8 OTHHOME ;
	label values mtvet1 OTHHOME ;
	label values mtvet2 OTHHOME ;
	label values mtvet3 OTHHOME ;
	label values mtvet4 OTHHOME ;
	label values mtvet5 OTHHOME ;
	label values mtpolit1 OTHHOME ;
	label values mtpolit2 OTHHOME ;
	label values mtpolit3 OTHHOME ;
	label values mtunion1 OTHHOME ;
	label values mtunion2 OTHHOME ;
	label values mtunion3 OTHHOME ;
	label values mtunion4 OTHHOME ;
	label values mtsport1 OTHHOME ;
	label values mtsport2 OTHHOME ;
	label values mtsport3 OTHHOME ;
	label values mtsport4 OTHHOME ;
	label values mtsport5 OTHHOME ;
	label values mtsport6 OTHHOME ;
	label values mtyouth1 OTHHOME ;
	label values mtyouth2 OTHHOME ;
	label values mtyouth3 OTHHOME ;
	label values mtyouth4 OTHHOME ;
	label values mtyouth5 OTHHOME ;
	label values mtschl1 OTHHOME ;
	label values mtschl2 OTHHOME ;
	label values mtschl3 OTHHOME ;
	label values mtschl4 OTHHOME ;
	label values mthobby1 OTHHOME ;
	label values mthobby2 OTHHOME ;
	label values mthobby3 OTHHOME ;
	label values mtgreek1 OTHHOME ;
	label values mtgreek2 OTHHOME ;
	label values mtgreek3 OTHHOME ;
	label values mtnat1 OTHHOME ;
	label values mtnat2 OTHHOME ;
	label values mtnat3 OTHHOME ;
	label values mtfarm1 OTHHOME ;
	label values mtfarm2 OTHHOME ;
	label values mtfarm3 OTHHOME ;
	label values mtlit1 OTHHOME ;
	label values mtlit2 OTHHOME ;
	label values mtlit3 OTHHOME ;
	label values mtlit4 OTHHOME ;
	label values mtprof1 OTHHOME ;
	label values mtprof2 OTHHOME ;
	label values mtprof3 OTHHOME ;
	label values mtprof4 OTHHOME ;
	label values mtprof5 OTHHOME ;
	label values mtprof6 OTHHOME ;
	label values mtchurh1 OTHHOME ;
	label values mtchurh2 OTHHOME ;
	label values mtchurh3 OTHHOME ;
	label values mtchurh4 OTHHOME ;
	label values mtchurh5 OTHHOME ;
	label values mtchurh6 OTHHOME ;
	label values mtother1 OTHHOME ;
	label values mtother2 OTHHOME ;
	label values mtother3 OTHHOME ;
	label values mtother4 OTHHOME ;
	label values mtother5 OTHHOME ;
	label values mtinfrm1 OTHHOME ;
	label values mtinfrm2 OTHHOME ;
	label values mtinfrm3 OTHHOME ;
	label values mtinfrm4 OTHHOME ;
	label values mtinfrm5 OTHHOME ;
	label values grpboth1 OTHHOME ;
	label values grpboth2 OTHHOME ;
	label values grpboth3 OTHHOME ;
	label values grpboth4 OTHHOME ;
	label values grpboth5 OTHHOME ;
	label values frstmet1 FRSTMET1 ;
	label values frstmet2 FRSTMET1 ;
	label values frstmet3 FRSTMET1 ;
	label values frstmet4 FRSTMET1 ;
	label values frstmet5 FRSTMET1 ;
	label values yrskwn1 MOREDAYS ;
	label values yrskwn2 MOREDAYS ;
	label values yrskwn3 MOREDAYS ;
	label values yrskwn4 MOREDAYS ;
	label values yrskwn5 MOREDAYS ;
	label values relneg OTHHOME ;
	label values newsfrom NEWSFROM ;
	label values scifrom NEWSFROM ;
	label values seeksci SEEKSCI ;
	label values nextgen LEARNNEW ;
	label values toofast LEARNNEW ;
	label values advfront LEARNNEW ;
	label values scispec LEARNNEW ;
	label values leadsci LEARNNEW ;
	label values whichsci LEARNNEW ;
	label values astrolgy OTHHOME ;
	label values astrosci ASTROSCI ;
	label values scibnfts SCIBNFTS ;
	label values balpos BALPOS ;
	label values balneg BALPOS ;
	label values scistudy SCISTUDY ;
	label values scitext SCITEXT ;
	label values expdesgn EXPDESGN ;
	label values exptext EXPTEXT ;
	label values odds1 OTHHOME ;
	label values odds2 OTHHOME ;
	label values hotcore HOTCORE ;
	label values radioact HOTCORE ;
	label values boyorgrl HOTCORE ;
	label values lasers HOTCORE ;
	label values electron HOTCORE ;
	label values viruses HOTCORE ;
	label values bigbang HOTCORE ;
	label values condrift HOTCORE ;
	label values evolved HOTCORE ;
	label values earthsun EARTHSUN ;
	label values solarrev SOLARREV ;
	label values TOMATOES TOMATOES ;
	label values intrhome OTHHOME ;
	label values coldeg1 COLDEG1 ;
	label values majorcol MAJORCOL ;
	label values colsci OTHHOME ;
	label values colscinm GENENVO1 ;
	label values hsmath HSMATH ;
	label values hsbio OTHHOME ;
	label values hschem OTHHOME ;
	label values hsphys OTHHOME ;
	label values gwsci GWSCI ;
	label values gwpol GWSCI ;
	label values gwbiz GWSCI ;
	label values sciagrgw SCIAGRGW ;
	label values sciinfgw SCIINFGW ;
	label values polinfgw SCIINFGW ;
	label values bizinfgw SCIINFGW ;
	label values scibstgw SCIBSTGW ;
	label values polbstgw SCIBSTGW ;
	label values bizbstgw SCIBSTGW ;
	label values gasregs GASREGS ;
	label values scmed GWSCI ;
	label values screlig GWSCI ;
	label values scpol GWSCI ;
	label values medagrsc SCIAGRGW ;
	label values medinfsc SCIINFGW ;
	label values relinfsc SCIINFGW ;
	label values polinfsc SCIINFGW ;
	label values medbstsc SCIBSTGW ;
	label values relbstsc SCIBSTGW ;
	label values polbstsc SCIBSTGW ;
	label values scresrch SCRESRCH ;
	label values txeco GWSCI ;
	label values txbiz GWSCI ;
	label values txpol GWSCI ;
	label values ecoagree SCIAGRGW ;
	label values ecoinftx SCIINFGW ;
	label values bizinftx SCIINFGW ;
	label values polinftx SCIINFGW ;
	label values ecobsttx SCIBSTGW ;
	label values bizbsttx SCIBSTGW ;
	label values polbsttx SCIBSTGW ;
	label values gmmed GWSCI ;
	label values gmpol GWSCI ;
	label values gmbiz GWSCI ;
	label values medagrgm SCIAGRGW ;
	label values medinfgm SCIINFGW ;
	label values polinfgm SCIINFGW ;
	label values bizinfgm SCIINFGW ;
	label values medbstgm SCIBSTGW ;
	label values polbstgm SCIBSTGW ;
	label values bizbstgm SCIBSTGW ;
	label values eatgm EATGM ;
	label values sciimp1 SCIIMP1 ;
	label values sciimp2 SCIIMP1 ;
	label values sciimp3 SCIIMP1 ;
	label values sciimp4 SCIIMP1 ;
	label values sciimp5 SCIIMP1 ;
	label values sciimp6 SCIIMP1 ;
	label values sciimp7 SCIIMP1 ;
	label values sciimp8 SCIIMP1 ;
	label values socsci SOCSCI ;
	label values physcsci SOCSCI ;
	label values histsci SOCSCI ;
	label values accntsci SOCSCI ;
	label values biosci SOCSCI ;
	label values econsci SOCSCI ;
	label values medsci SOCSCI ;
	label values engnrsci SOCSCI ;
	label values knwforgn KNWFORGN ;
	label values knwecon KNWFORGN ;
	label values knwsci KNWFORGN ;
	label values knwgw KNWFORGN ;
	label values knwpolar KNWFORGN ;
	label values tvbears TVBEARS ;
	label values tvinuit TVBEARS ;
	label values tvozone TVBEARS ;
	label values tvmeltng TVBEARS ;
	label values tvoil TVBEARS ;
	label values polaryr1 TVBEARS ;
	label values polaryr2 TVBEARS ;
	label values polaryr3 TVBEARS ;
	label values polaryr4 TVBEARS ;
	label values polaryr5 TVBEARS ;
	label values polaryr6 TVBEARS ;
	label values polaryr7 TVBEARS ;
	label values polaryr8 TVBEARS ;
	label values icesheet HOTCORE ;
	label values nosun HOTCORE ;
	label values inuit HOTCORE ;
	label values huntbear HOTCORE ;
	label values icecaps ICECAPS ;
	label values comorsci COMORSCI ;
	label values extinct EXTINCT ;
	label values sealevel EXTINCT ;
	label values artseals EXTINCT ;
	label values penguins PENGUINS ;
	label values inuitway EXTINCT ;
	label values noicecap EXTINCT ;
	label values caremost CAREMOST ;
	label values nanotech NANOTECH ;
	label values nanoknw1 HOTCORE ;
	label values nanoknw2 HOTCORE ;
	label values nanowill NANOWILL ;
	label values NANOBEN NANOBEN ;
	label values NANOHARM NANOBEN ;
	label values scimode SCIMODE ;
	label values INTINTL INTINTL ;
	label values INTFARM INTINTL ;
	label values INTEDUC INTINTL ;
	label values INTSCI INTINTL ;
	label values INTECON INTINTL ;
	label values INTTECH INTINTL ;
	label values INTMED INTINTL ;
	label values INTSPACE INTINTL ;
	label values INTENVIR INTINTL ;
	label values INTMIL INTINTL ;
	label values sciintro SCIINTRO ;
	label values VISART VISART ;
	label values VISNHIST VISART ;
	label values VISZOO VISART ;
	label values VISSCI VISART ;
	label values VISLIB VISART ;
	label values SCIMATH OWNTHING ;
	label values ANSCITST OWNTHING ;
	label values maboygrl MABOYGRL ;
	label values H2OLIFE H2OLIFE ;
	label values ANHEAT ANHEAT ;
	label values LFTPLANE LFTPLANE ;
	label values stormtxt STORMTXT ;
	label values litmstxt STORMTXT ;
	label values GOLDFISH GOLDFISH ;
	label values SALTH2O SALTH2O ;
	label values EROSION EROSION ;
	label values GENES GENES ;
	label values GILLS GILLS ;
	label values UPBREATH UPBREATH ;
	label values DAYNIGHT DAYNIGHT ;
	label values WEIGHING WEIGHING ;
	label values SEESAND SEESAND ;
	label values FISHEXP1 FISHEXP1 ;
	label values FISHEXP2 FISHEXP2 ;
	label values MOREMPG MOREMPG ;
	label values polnuke GWSCI ;
	label values biznuke GWSCI ;
	label values engnuke ENGNUKE ;
	label values ENGAGRNK ENGAGRNK ;
	label values ENHINFNK ENHINFNK ;
	label values POLINFNK ENHINFNK ;
	label values BIZINFNK ENHINFNK ;
	label values ENGBSTNK ENGBSTNK ;
	label values POLBSTNK ENGBSTNK ;
	label values BIZBSTNK ENGBSTNK ;
	label values NUKEELEC NUKEELEC ;
	label values CLONING TOMATOES ;
	label values SCINEWS1 SCINEWS1 ;
	label values SCINEWS2 SCINEWS2 ;
	label values scinews3 SCINEWS3 ;
	label values NEWSFRMY NEWSFRMY ;
	label values SCIFROMY NEWSFRMY ;
	label values SEEKSCIY NEWSFRMY ;
	label values sciinfgo SCIINFGO ;
	label values SCIENTDA SCIENTDA ;
	label values SCIENTSN SCIENTDA ;
	label values SCIENTR CONVICTD ;
	label values SCIENTDO SCIENTDO ;
	label values SCIENTAL SCIENTAL ;
	label values SCIENTDN SCIENTAL ;
	label values SCIENTGO SCIENTAL ;
	label values SCIENTFU SCIENTAL ;
	label values SCIENTHE SCIENTAL ;
	label values SCIENTOD SCIENTAL ;
	label values SCIENTBE SCIENTAL ;
	label values SCIENTRE SCIENTAL ;
	label values SCIENTWK SCIENTAL ;
	label values SCIENTMO SCIENTAL ;
	label values SCIENTBR SCIENTAL ;
	label values ENGDA SCIENTDA ;
	label values ENGSON SCIENTDA ;
	label values ENGRESP CONVICTD ;
	label values ENGDO SCIENTDO ;
	label values ENGLONE SCIENTAL ;
	label values ENGDGR SCIENTAL ;
	label values ENGGOOD SCIENTAL ;
	label values ENGFUN SCIENTAL ;
	label values ENGPROB SCIENTAL ;
	label values ENGODD SCIENTAL ;
	label values ENGBTR SCIENTAL ;
	label values ENGREL SCIENTAL ;
	label values ENGINT SCIENTAL ;
	label values ENGEARN SCIENTAL ;
	label values ENGBRNG SCIENTAL ;
	label values FARMING FARMING ;
	label values JOURNLSM FARMING ;
	label values FIREFTNG FARMING ;
	label values MARRCOUN FARMING ;
	label values MEDTREAT FARMING ;
	label values ARCHITCT FARMING ;
	label values LAWENFRC FARMING ;
	label values ENGNRING FARMING ;
	label values SLSMNSHP FARMING ;
	label values CMPRGMNG FARMING ;
	label values FINLCOUN FARMING ;
	label values BIGBANG1 TOMATOES ;
	label values EVOLVED1 TOMATOES ;
	label values BETTRLFE BETTRLFE ;
	label values buyvalue BUYVALUE ;
	label values ops2005 OTHHOME ;
	label values extr2005 OTHHOME ;
	label values compwage COMPWAGE ;
	label values talkteam TALKEMP ;
	label values numorg NUMORG ;
	label values empinput OTHHOME ;
	label values slfmangd OTHHOME ;
	label values emptrain OTHHOME ;
	label values wealth WEALTH ;
	label values ESOP CONVICTD ;
	label values DEFPENSN CONVICTD ;
	label values TRDESTCK CONVICTD ;
	label values viglab06 BADCHAR ;
	label values mhtrtoth OTHHOME ;
	label values mhothyou MHOTHYOU ;
	label values mhothrel MHOTHREL ;
	label values seemhpub SEEMHPUB ;
	label values gesttalk SEEMHPUB ;
	label values avoidmh SEEMHPUB ;
	label values numknown NUMKNOWN ;
	label values acqkevin ACQKEVIN ;
	label values acqkaren ACQKEVIN ;
	label values acqshawn ACQKEVIN ;
	label values acqbrnda ACQKEVIN ;
	label values acqkeith ACQKEVIN ;
	label values acqrachl ACQKEVIN ;
	label values acqmark ACQKEVIN ;
	label values acqlinda ACQKEVIN ;
	label values acqjose ACQKEVIN ;
	label values acqmaria ACQKEVIN ;
	label values acqunemp ACQKEVIN ;
	label values acqhome ACQKEVIN ;
	label values acqprisn ACQKEVIN ;
	label values acqasian ACQKEVIN ;
	label values acqblack ACQKEVIN ;
	label values acqhisp ACQKEVIN ;
	label values acqwhite ACQKEVIN ;
	label values acqgay ACQKEVIN ;
	label values acqcohab ACQKEVIN ;
	label values acqgoatt ACQKEVIN ;
	label values acqnoatt ACQKEVIN ;
	label values acqlib ACQKEVIN ;
	label values acqcon ACQKEVIN ;
	label values acqcops ACQKEVIN ;
	label values acqlaws ACQKEVIN ;
	label values acqsocs ACQKEVIN ;
	label values acqjans ACQKEVIN ;
	label values acqchild ACQKEVIN ;
	label values acqelecs ACQKEVIN ;
	label values acqmils ACQKEVIN ;
	label values acqfmmrk ACQKEVIN ;
	label values acqfmlin ACQKEVIN ;
	label values acqfmune ACQKEVIN ;
	label values acqfmhme ACQKEVIN ;
	label values acqfmpri ACQKEVIN ;
	label values acqfmasn ACQKEVIN ;
	label values acqfmblk ACQKEVIN ;
	label values acqfmhsp ACQKEVIN ;
	label values acqfmwht ACQKEVIN ;
	label values acqfmgay ACQKEVIN ;
	label values acqfmgo ACQKEVIN ;
	label values acqfmno ACQKEVIN ;
	label values acqfmlib ACQKEVIN ;
	label values acqfmcon ACQKEVIN ;
	label values acqfmcoh ACQKEVIN ;
	label values acqnhmrk ACQKEVIN ;
	label values acqnhlin ACQKEVIN ;
	label values acqnhune ACQKEVIN ;
	label values acqnhhme ACQKEVIN ;
	label values acqnhpri ACQKEVIN ;
	label values acqnhasn ACQKEVIN ;
	label values acqnhblk ACQKEVIN ;
	label values acqnhhsp ACQKEVIN ;
	label values acqnhwht ACQKEVIN ;
	label values acqnhgay ACQKEVIN ;
	label values acqnhgo ACQKEVIN ;
	label values acqnhno ACQKEVIN ;
	label values acqnhlib ACQKEVIN ;
	label values acqnhcon ACQKEVIN ;
	label values acqnhcoh ACQKEVIN ;
	label values acqwkmrk ACQWKMRK ;
	label values acqwklin ACQWKMRK ;
	label values acqwkune ACQWKMRK ;
	label values acqwkhme ACQWKMRK ;
	label values acqwkpri ACQWKMRK ;
	label values acqwkasn ACQWKMRK ;
	label values acqwkblk ACQWKMRK ;
	label values acqwkhsp ACQWKMRK ;
	label values acqwkwht ACQWKMRK ;
	label values acqwkgay ACQWKMRK ;
	label values acqwkgo ACQWKMRK ;
	label values acqwkno ACQWKMRK ;
	label values acqwklib ACQWKMRK ;
	label values acqwkcon ACQWKMRK ;
	label values acqwkcoh ACQWKMRK ;
	label values acqvamrk ACQKEVIN ;
	label values acqvalin ACQKEVIN ;
	label values acqvaune ACQKEVIN ;
	label values acqvahme ACQKEVIN ;
	label values acqvapri ACQKEVIN ;
	label values acqvaasn ACQKEVIN ;
	label values acqvablk ACQKEVIN ;
	label values acqvahsp ACQKEVIN ;
	label values acqvawht ACQKEVIN ;
	label values acqvagay ACQKEVIN ;
	label values acqvago ACQKEVIN ;
	label values acqvano ACQKEVIN ;
	label values acqvalib ACQKEVIN ;
	label values acqvacon ACQKEVIN ;
	label values acqvacoh ACQKEVIN ;
	label values acqreps ACQREPS ;
	label values acqdems ACQREPS ;
	label values acqattnd ACQREPS ;
	label values acqmyrac ACQMYRAC ;
	label values trtkevin ACQKEVIN ;
	label values trtkaren ACQKEVIN ;
	label values trtshawn ACQKEVIN ;
	label values trtbrnda ACQKEVIN ;
	label values trtkeith ACQKEVIN ;
	label values trtrachl ACQKEVIN ;
	label values trtmark ACQKEVIN ;
	label values trtlinda ACQKEVIN ;
	label values trtjose ACQKEVIN ;
	label values trtmaria ACQKEVIN ;
	label values trtcops ACQKEVIN ;
	label values trtlaws ACQKEVIN ;
	label values trtsocs ACQKEVIN ;
	label values trtjans ACQKEVIN ;
	label values trtchild ACQKEVIN ;
	label values trtelecs ACQKEVIN ;
	label values trtmils ACQKEVIN ;
	label values trtunemp ACQKEVIN ;
	label values trthome ACQKEVIN ;
	label values trtprisn ACQKEVIN ;
	label values trtasian ACQKEVIN ;
	label values trtblack ACQKEVIN ;
	label values trthisp ACQKEVIN ;
	label values trtwhite ACQKEVIN ;
	label values trtgay ACQKEVIN ;
	label values trtcohab ACQKEVIN ;
	label values trtgoatt ACQKEVIN ;
	label values trtnoatt ACQKEVIN ;
	label values trtlib ACQKEVIN ;
	label values trtcon ACQKEVIN ;
	label values trtreps ACQREPS ;
	label values trtdems ACQREPS ;
	label values trtattnd ACQREPS ;
	label values trtmyrac ACQMYRAC ;
	label values gunsales GASREGS ;
	label values gunsdrug GUNSDRUG ;
	label values semiguns SEMIGUNS ;
	label values guns911 GUNS911 ;
	label values rifles50 RIFLES50 ;
	label values othguns OTHGUNS ;
	label values gunsdrnk GUNSDRNK ;
	label values spnatdis SPNATDIS ;
	label values natdisin NATDISIN ;
	label values natdiscm NATDISIN ;
	label values newsprnt NEWSPRNT ;
	label values getaheay GETAHEAY ;
	label values disabld1 OTHHOME ;
	label values disabld2 OTHHOME ;
	label values disabld3 OTHHOME ;
	label values disabld4 OTHHOME ;
	label values disabld5 OTHHOME ;
	label values disabld6 OTHHOME ;
	label values disabld7 OTHHOME ;
	label values vigvermy VIGVERMY ;
	label values mhproblm MHPROBLM ;
	label values mhdofam OTHHOME ;
	label values mhdofrnd OTHHOME ;
	label values mhdorel OTHHOME ;
	label values mhdodoc OTHHOME ;
	label values mhdopsyc OTHHOME ;
	label values mhdomhp OTHHOME ;
	label values mhdoheal OTHHOME ;
	label values mhdootc OTHHOME ;
	label values mhdorx OTHHOME ;
	label values mhdohosp OTHHOME ;
	label values mhdopray OTHHOME ;
	label values mhdolife OTHHOME ;
	label values mhdoherb OTHHOME ;
	label values mhdofrgt OTHHOME ;
	label values mhdoactv OTHHOME ;
	label values mhdogrp OTHHOME ;
	label values mhdodiet OTHHOME ;
	label values mhdoexrc OTHHOME ;
	label values mhdomove OTHHOME ;
	label values mhdooth OTHHOME ;
	label values mhdonone OTHHOME ;
	label values mhchrctr BADCHAR ;
	label values mhbrain BADCHAR ;
	label values mhraised BADCHAR ;
	label values mhstress BADCHAR ;
	label values mhgenes BADCHAR ;
	label values mhgod BADCHAR ;
	label values mhluck BADCHAR ;
	label values mhupdown BADCHAR ;
	label values mhillnss BADCHAR ;
	label values mhphyscl BADCHAR ;
	label values mhneihbr NEXTDOOR ;
	label values mhsocial NEXTDOOR ;
	label values mhkdcare NEXTDOOR ;
	label values mhfriend NEXTDOOR ;
	label values mhwkwith NEXTDOOR ;
	label values mhwedrel NEXTDOOR ;
	label values mhimpown BADCHAR ;
	label values mhimptrt BADCHAR ;
	label values mhdecslf MHDECSLF ;
	label values mhmoney MHDECSLF ;
	label values mhoutsdr MHOUTSDR ;
	label values mhlosefr MHOUTSDR ;
	label values mhlessop MHOUTSDR ;
	label values mhuneasy MHOUTSDR ;
	label values mhunsure MHOUTSDR ;
	label values mhintl MHOUTSDR ;
	label values mhnotpol MHOUTSDR ;
	label values mhhrdtlk MHOUTSDR ;
	label values mhnokids MHOUTSDR ;
	label values mhcreatv MHOUTSDR ;
	label values mhnervs MHOUTSDR ;
	label values mhprdctv MHOUTSDR ;
	label values mhfeelem MHOUTSDR ;
	label values mhtrusty MHOUTSDR ;
	label values mhaccptd MHOUTSDR ;
	label values mhhired MHOUTSDR ;
	label values mhnotell MHOUTSDR ;
	label values mhsecret MHOUTSDR ;
	label values mhsupwrk MHOUTSDR ;
	label values mhnotch MHOUTSDR ;
	label values mhhlpfam MHHLPFAM ;
	label values mhhlpfrd MHHLPFAM ;
	label values mhhlprel MHHLPFAM ;
	label values mhhlpgp MHHLPFAM ;
	label values mhhlppsy MHHLPFAM ;
	label values mhhlpmhp MHHLPFAM ;
	label values mhgvtjob MHGVTJOB ;
	label values mhgvthlt MHGVTJOB ;
	label values mhgvthme MHGVTJOB ;
	label values mhgvtedc MHGVTJOB ;
	label values mhgvtdis MHGVTJOB ;
	label values mhslfshm MHGVTJOB ;
	label values mhfamshm MHGVTJOB ;
	label values mhseedoc MHGVTJOB ;
	label values mhmeds MHGVTJOB ;
	label values mhhsptrt MHGVTJOB ;
	label values mhmnthsp MHGVTJOB ;
	label values mhviooth BADCHAR ;
	label values mhvioslf BADCHAR ;
	label values mhcause MHCAUSE ;
	label values mhtrtot2 OTHHOME ;
	label values mhclsoth MHCLSOTH ;
	label values mhseroth CHLDPROB ;
	label values mhhlpoth MHOTHYOU ;
	label values mhresoth MHOTHYOU ;
	label values mhdisoth MHOTHYOU ;
	label values mhreloth MHOTHREL ;
	label values mhexpoth MHEXPOTH ;
	label values mhtrtslf OTHHOME ;
	label values mhseepub MHSEEPUB ;
	label values mhfright MHFRIGHT ;
	label values mhsymp MHSYMP ;
	label values STARTBIZ GIVEARTS ;
	label values OWNBIZ GIVEARTS ;
	label values NUMOWN NUMOWN ;
	label values YEARBIZ MNTLOTH ;
	label values PAIDEMPS GIVEARTS ;
	label values BIZGROSS BIZGROSS ;
	label values bizshare VISART ;
	label values OWNINC BIZGROSS ;
	label values WHYBIZ WHYBIZ ;
	label values NUMEMPS5 HOURLY ;
	label values spjrel16 SPJREL16 ;
	label values SPJOTH16 SPJOTH16 ;
	label values MAJWOTH MAJWOTH ;
	label values PAJWOTH MAJWOTH ;
	label values BMITZVAH GIVEARTS ;
	label values SYNMEM GIVEARTS ;
	label values kd1relig SPJREL16 ;
	label values kd2relig SPJREL16 ;
	label values kd3relig SPJREL16 ;
	label values kd4relig SPJREL16 ;
	label values kd5relig SPJREL16 ;
	label values kd6relig SPJREL16 ;
	label values kd7relig SPJREL16 ;
	label values kd8relig SPJREL16 ;
	label values KD1JWOTH MAJWOTH ;
	label values KD2JWOTH MAJWOTH ;
	label values KD3JWOTH MAJWOTH ;
	label values KD4JWOTH MAJWOTH ;
	label values KD5JWOTH MAJWOTH ;
	label values DONE911A DONE911A ;
	label values EFF911A EFF911A ;
	label values DONE911B DONE911A ;
	label values EFF911B EFF911A ;
	label values DONE911C DONE911A ;
	label values EFF911C EFF911A ;
	label values DONE911D DONE911A ;
	label values EFF911D EFF911A ;
	label values DONE911E DONE911A ;
	label values EFF911E EFF911A ;
	label values DONE911F DONE911A ;
	label values EFF911F EFF911A ;
	label values DONE911G DONE911A ;
	label values EFF911G EFF911A ;
	label values DONE911H DONE911A ;
	label values EFF911H EFF911A ;
	label values DONE911I DONE911A ;
	label values EFF911I EFF911A ;
	label values DONE911J DONE911A ;
	label values EFF911J EFF911A ;
	label values DONE911K DONE911A ;
	label values EFF911K EFF911A ;
	label values DONE911L DONE911A ;
	label values EFF911L EFF911A ;
	label values DONE911M DONE911A ;
	label values EFF911M EFF911A ;
	label values DONE911N DONE911A ;
	label values EFF911N EFF911A ;
	label values doneelse DONEELSE ;
	label values WORK3YRS WORK3YRS ;
	label values CUREMPYR SHOPNUM ;
	label values PAYCHNGE PAYCHNGE ;
	label values PASTPAY PASTPAY ;
	label values WHYLEAVE WHYLEAVE ;
	label values whyjbct1 WHYJBCT1 ;
	label values whyjbct2 WHYJBCT1 ;
	label values LOSEJB12 LOSEJB12 ;
	label values whylose1 WHYJBCT1 ;
	label values whylose2 WHYJBCT1 ;
	label values whylose3 WHYJBCT1 ;
	label values FINDNWJB FINDNWJB ;
	label values MORETRDE MORETRDE ;
	label values NEWJOBS HAPGIRLS ;
	label values LOSTJOBS HAPGIRLS ;
	label values WKCOMPTR GIVEARTS ;
	label values WOCOMPTR WOCOMPTR ;
	label values autonojb GIVEARTS ;
	label values MEETF2F1 MEETF2F1 ;
	label values MEETF2F2 MEETF2F1 ;
	label values INTLCOWK INTLCOWK ;
	label values LASTYRWK DAILY ;
	label values LEAVEJB WHYLEAVE ;
	label values whynojb1 WHYJBCT1 ;
	label values whynojb2 WHYJBCT1 ;
	label values INCLSTJB INCLSTJB ;
	label values BORNSP BORNSP ;
	label values AGECMEUS AGECMEUS ;
	label values VISA GIVEARTS ;
	label values TYPEVISA TYPEVISA ;
	label values NATDEG BORNSP ;
	label values EMPHLTH GIVEARTS ;
	label values EMPHPLAN EMPHPLAN ;
	label values OTHPLAN OTHPLAN ;
	label values SEXSEX18 SEXSEX18 ;
	label values TOLDSMSX TOLDSMSX ;
	label values ATTRACTD ATTRACTD ;
	label values TOLDSXOR TOLDSMSX ;
	label values RELGENDR RELGENDR ;
	label values MARUNION MARUNION ;
	label values SEXUNION SEXUNION ;
	label values EVKID GIVEARTS ;
	label values ADOPTKID GIVEARTS ;
	label values KIDLIVED GIVEARTS ;
	label values KIDRESP GIVEARTS ;
	label values KIDNOW1 KIDNOW1 ;
	label values KIDNOW2 GIVEARTS ;
	label values TOLDWORK TOLDWORK ;
	label values EVLOSEJB GIVEARTS ;
	label values LOSEJOB5 LOSEJOB5 ;
	label values EVNEGJOB GIVEARTS ;
	label values NEGJOB5 LOSEJOB5 ;
	label values EVHARJB GIVEARTS ;
	label values HARJOB5 HARJOB5 ;
	label values EVDWELL GIVEARTS ;
	label values DWELL5 GIVEARTS ;
	label values EMPHLTH1 GIVEARTS ;
	label values EMPHLTH2 EMPHLTH2 ;
	label values HLTHCOVR GIVEARTS ;
	label values HLTHTYPE HLTHTYPE ;
	label values SPPART SPPART ;
	label values MYKIDS SPPART ;
	label values OTHKIDS SPPART ;
	label values HARSEXJB GIVEARTS ;
	label values HARSEXCL GIVEARTS ;
	label values OWNCLERG GIVEARTS ;
	label values NUMCLERG NUMCLERG ;
	label values OPENREL1 GIVEARTS ;
	label values OPENREL2 GIVEARTS ;
	label values OPENREL3 GIVEARTS ;
	label values counsel1 GIVEARTS ;
	label values counsel2 GIVEARTS ;
	label values counsel3 GIVEARTS ;
	label values clrgmar1 GIVEARTS ;
	label values clrgmar2 GIVEARTS ;
	label values clrgmar3 GIVEARTS ;
	label values clrgsex1 GIVEARTS ;
	label values clrgsex2 GIVEARTS ;
	label values clrgsex3 GIVEARTS ;
	label values clrggen1 SEXUNION ;
	label values clrggen2 SEXUNION ;
	label values clrggen3 SEXUNION ;
	label values ONGOREL1 GIVEARTS ;
	label values ONGOREL2 GIVEARTS ;
	label values ONGOREL3 GIVEARTS ;
	label values HUSHREL1 GIVEARTS ;
	label values HUSHREL2 GIVEARTS ;
	label values HUSHREL3 GIVEARTS ;
	label values TOLDEXP1 GIVEARTS ;
	label values TOLDEXP2 GIVEARTS ;
	label values TOLDEXP3 GIVEARTS ;
	label values toldrel1 GIVEARTS ;
	label values toldrel2 GIVEARTS ;
	label values toldrel3 GIVEARTS ;
	label values KNWCLSEX GIVEARTS ;
	label values CLSCLSEX GIVEARTS ;
	label values clrgmode CLRGMODE ;
	label values PRESPOP PRESPOP ;
	label values VOLACTYR CONVICTD ;
	label values VOLACTY2 CONVICTD ;
	label values POLEFY3 POLEFY3 ;
	label values POLEFY11 POLEFY3 ;
	label values POLEFY13 POLEFY3 ;
	label values POLEFY15 POLEFY3 ;
	label values POLEFY16 POLEFY16 ;
	label values POLEFY17 POLEFY17 ;
	label values RATETONE RATETONE ;
	label values pubdef PUBDEF ;
	label values pubecon PUBDEF ;
	label values obeylaw OBEYLAW ;
	label values protest1 PROTEST1 ;
	label values protest2 PROTEST1 ;
	label values protest3 PROTEST1 ;
	label values protest4 PROTEST1 ;
	label values protest5 PROTEST1 ;
	label values protest6 PROTEST1 ;
	label values revspeak PROTEST1 ;
	label values revtch15 PROTEST1 ;
	label values revpub PROTEST1 ;
	label values racspeak PROTEST1 ;
	label values ractch15 PROTEST1 ;
	label values racpub PROTEST1 ;
	label values crimtail PROTEST1 ;
	label values crimtap PROTEST1 ;
	label values crimread PROTEST1 ;
	label values crimhold PROTEST1 ;
	label values mantail PROTEST1 ;
	label values mantap PROTEST1 ;
	label values manread PROTEST1 ;
	label values manhold PROTEST1 ;
	label values verdict VERDICT ;
	label values databank DATABANK ;
	label values progtax PROGTAX ;
	label values eqincome EQINCOME ;
	label values oprich EQINCOME ;
	label values opprof EQINCOME ;
	label values opfamily EQINCOME ;
	label values fecolop FECOLOP ;
	label values fejobop FECOLOP ;
	label values feinc FECOLOP ;
	label values fehlpbus FEHLPBUS ;
	label values fehlpcol FEHLPBUS ;
	label values fehlpjob FEHLPBUS ;
	label values hsbasics HSBASICS ;
	label values hssexed HSBASICS ;
	label values hsrespct HSBASICS ;
	label values hslibart HSBASICS ;
	label values hsjudge HSBASICS ;
	label values hsjobtr HSBASICS ;
	label values hssci HSBASICS ;
	label values hscaring HSBASICS ;
	label values hsorder HSBASICS ;
	label values colop COLOP ;
	label values aidneedy AIDNEEDY ;
	label values aidsmart AIDNEEDY ;
	label values aidavg AIDNEEDY ;
	label values kiddrugs KIDDRUGS ;
	label values kidskips KIDDRUGS ;
	label values kidout KIDDRUGS ;
	label values kidneedy KIDDRUGS ;
	label values kidbeat KIDDRUGS ;
	label values kidhlth KIDDRUGS ;
	label values kidedpar KIDDRUGS ;
	label values kidxfilm KIDDRUGS ;
	label values beltup BELTUP ;
	label values nosmoke BELTUP ;
	label values mustret BELTUP ;
	label values poleff1 POLEFF1 ;
	label values poleff2 POLEFF1 ;
	label values poleff3 POLEFF3 ;
	label values poleff4 POLEFF1 ;
	label values poleff5 POLEFF1 ;
	label values poleff6 POLEFF1 ;
	label values poleff7 POLEFF1 ;
	label values poleff8 POLEFF1 ;
	label values poleff9 POLEFF1 ;
	label values poleff10 POLEFF1 ;
	label values setwage SETWAGE ;
	label values setprice SETWAGE ;
	label values cutgovt SETWAGE ;
	label values makejobs SETWAGE ;
	label values lessreg SETWAGE ;
	label values hlphitec SETWAGE ;
	label values savejobs SETWAGE ;
	label values cuthours SETWAGE ;
	label values spenviro SPENVIRO ;
	label values sphlth SPENVIRO ;
	label values sppolice SPENVIRO ;
	label values spschool SPENVIRO ;
	label values sparms SPENVIRO ;
	label values spretire SPENVIRO ;
	label values spunemp SPENVIRO ;
	label values sparts SPENVIRO ;
	label values inctax INCTAX ;
	label values bustax BUSTAX ;
	label values infljobs INFLJOBS ;
	label values laborpow LABORPOW ;
	label values buspow LABORPOW ;
	label values govtpow LABORPOW ;
	label values ownpower OWNPOWER ;
	label values ownmass OWNPOWER ;
	label values ownsteel OWNPOWER ;
	label values ownbanks OWNPOWER ;
	label values ownautos OWNPOWER ;
	label values jobsall JOBSALL ;
	label values pricecon JOBSALL ;
	label values hlthcare JOBSALL ;
	label values aidold JOBSALL ;
	label values aidindus JOBSALL ;
	label values aidunemp JOBSALL ;
	label values equalize JOBSALL ;
	label values aidcol JOBSALL ;
	label values aidhouse JOBSALL ;
	label values protstrs PROTSTRS ;
	label values revoltrs PROTSTRS ;
	label values racists PROTSTRS ;
	label values unionsok UNIONSOK ;
	label values polint POLINT ;
	label values rprtst1 RPRTST1 ;
	label values rprtst3 RPRTST1 ;
	label values rprtst15 RPRTST15 ;
	label values rprtst35 RPRTST15 ;
	label values grnlaws GRNLAWS ;
	label values poleff11 WLTHPOV ;
	label values poleff12 WLTHPOV ;
	label values poleff13 WLTHPOV ;
	label values poleff14 WLTHPOV ;
	label values poleff15 WLTHPOV ;
	label values poleff16 WLTHPOV ;
	label values poleff17 WLTHPOV ;
	label values demworks DEMWORKS ;
	label values taxspend TAXSPEND ;
	label values runpower RUNPOWER ;
	label values runhosp RUNPOWER ;
	label values runbanks RUNPOWER ;
	label values cutdebt CUTDEBT ;
	label values helphlth HELPHLTH ;
	label values helpold HELPHLTH ;
	label values helpsec HELPHLTH ;
	label values helpcrim HELPHLTH ;
	label values helpemp HELPHLTH ;
	label values helpenv HELPHLTH ;
	label values wotrial WOTRIAL ;
	label values tapphone WOTRIAL ;
	label values stoprndm WOTRIAL ;
	label values fewtrsty WLTHPOV ;
	label values exploit WLTHPOV ;
	label values youinflu YOUINFLU ;
	label values hlpinflu HLPINFLU ;
	label values polsfair POLSFAIR ;
	label values knowpols KNOWPOLS ;
	label values corrupt1 CORRUPT1 ;
	label values corrupt2 CORRUPT1 ;
	label values bribe BRIBE ;
	label values peocntct PEOCNTCT ;
	label values malive EVWORK ;
	label values mavisit MAVISIT ;
	label values matime MATIME ;
	label values macall MACALL ;
	label values palive EVWORK ;
	label values pavisit MAVISIT ;
	label values patime MATIME ;
	label values pacall MACALL ;
	label values sisnum SISNUM ;
	label values sisvisit MAVISIT ;
	label values sistime MATIME ;
	label values siscall MACALL ;
	label values bronum SISNUM ;
	label values brovisit MAVISIT ;
	label values brotime MATIME ;
	label values brocall MACALL ;
	label values daunum SISNUM ;
	label values dauvisit MAVISIT ;
	label values dautime MATIME ;
	label values daucall MACALL ;
	label values sonnum SISNUM ;
	label values sonvisit MAVISIT ;
	label values sontime MATIME ;
	label values soncall MACALL ;
	label values posslq POSSLQ ;
	label values POSSLQY POSSLQY ;
	label values grparnum GRPARNUM ;
	label values grkidnum GRPARNUM ;
	label values unaunum GRPARNUM ;
	label values inlawnum GRPARNUM ;
	label values relnum GRPARNUM ;
	label values relmost RELMOST ;
	label values relvisit MAVISIT ;
	label values reltime MATIME ;
	label values relcall MACALL ;
	label values frinum FRINUM ;
	label values friwork HRS1 ;
	label values frineigh HRS1 ;
	label values frisex FRISEX ;
	label values frivisit MAVISIT ;
	label values fritime MATIME ;
	label values fricall MACALL ;
	label values chores1 CHORES1 ;
	label values chores2 CHORES1 ;
	label values sick1 SICK1 ;
	label values sick2 SICK1 ;
	label values borrow1 BORROW1 ;
	label values borrow2 BORROW1 ;
	label values upset1 UPSET1 ;
	label values upset2 UPSET1 ;
	label values down1 UPSET1 ;
	label values down2 UPSET1 ;
	label values change1 CHANGE1 ;
	label values change2 CHANGE1 ;
	label values livecom HRS1 ;
	label values livehome HRS1 ;
	label values matime1 MATIME1 ;
	label values sibnum MOREDAYS ;
	label values sibmost SIBMOST ;
	label values sibvisit SIBVISIT ;
	label values sibcall SIBCALL ;
	label values kidnum MOREDAYS ;
	label values kidmost KIDMOST ;
	label values kidvisit SIBVISIT ;
	label values kidcall SIBCALL ;
	label values pavisit1 PAVISIT1 ;
	label values pacall1 PACALL1 ;
	label values mavisit1 MAVISIT1 ;
	label values macall1 PACALL1 ;
	label values uncaunts UNCAUNTS ;
	label values cousins UNCAUNTS ;
	label values parslaw UNCAUNTS ;
	label values sibinlaw UNCAUNTS ;
	label values niecenep UNCAUNTS ;
	label values godparts UNCAUNTS ;
	label values cowrkfrd COWRKFRD ;
	label values neifrd NEIFRD ;
	label values bestfrd BESTFRD ;
	label values bstvisit BSTVISIT ;
	label values bstcall PACALL1 ;
	label values grppol GRPPOL ;
	label values grpunion GRPPOL ;
	label values grpchurh GRPPOL ;
	label values grpsport GRPPOL ;
	label values grpchrty GRPPOL ;
	label values grpnei GRPPOL ;
	label values grpoth GRPPOL ;
	label values sick1a SICK1A ;
	label values sick2a SICK2A ;
	label values borrow1a BORROW1A ;
	label values borrow2a BORROW1A ;
	label values down1a DOWN1A ;
	label values down2a DOWN1A ;
	label values helphwrk HELPHWRK ;
	label values lentto HELPHWRK ;
	label values talkedto HELPHWRK ;
	label values helpjob HELPHWRK ;
	label values learnjob LEARNJOB ;
	label values frdthink FRDTHINK ;
	label values frdhelps FRDTHINK ;
	label values frdknows FRDTHINK ;
	label values frdenjoy FRDTHINK ;
	label values kidpars KIDPARS ;
	label values firstyou KIDPARS ;
	label values helpfrds KIDPARS ;
	label values usefrds KIDPARS ;
	label values aidkids AIDKIDS ;
	label values othfrd OTHFRD ;
	label values demands DEMANDS ;
	label values trustpeo KIDPARS ;
	label values wantbest KIDPARS ;
	label values advantge KIDPARS ;
	label values comyear COMYEAR ;
	label values localgvt BADCHAR ;
	label values opwlth OPWLTH ;
	label values oppared OPWLTH ;
	label values opeduc OPWLTH ;
	label values opambit OPWLTH ;
	label values opable OPWLTH ;
	label values ophrdwrk OPWLTH ;
	label values opknow OPWLTH ;
	label values opclout OPWLTH ;
	label values oprace OPWLTH ;
	label values oprelig OPWLTH ;
	label values opregion OPWLTH ;
	label values opsex OPWLTH ;
	label values oppol OPWLTH ;
	label values goodlife GOODLIFE ;
	label values incentiv INCENTIV ;
	label values inequal1 GOODLIFE ;
	label values inequal2 GOODLIFE ;
	label values inequal3 GOODLIFE ;
	label values inequal4 GOODLIFE ;
	label values inequal5 GOODLIFE ;
	label values inequal6 GOODLIFE ;
	label values inequal7 GOODLIFE ;
	label values paymason PAYMASON ;
	label values paydoc PAYMASON ;
	label values payclerk PAYMASON ;
	label values payowner PAYMASON ;
	label values payexec PAYMASON ;
	label values payskill PAYMASON ;
	label values payfarm PAYMASON ;
	label values paysec PAYMASON ;
	label values paybus PAYMASON ;
	label values payunskl PAYMASON ;
	label values paycabnt PAYMASON ;
	label values paylaw PAYMASON ;
	label values paysales PAYMASON ;
	label values payfctry PAYMASON ;
	label values payjudge PAYMASON ;
	label values payrocc PAYMASON ;
	label values givmason GIVMASON ;
	label values givdoc GIVMASON ;
	label values givclerk GIVMASON ;
	label values givowner GIVMASON ;
	label values givexec GIVMASON ;
	label values givskill GIVMASON ;
	label values givfarm GIVMASON ;
	label values givsec GIVMASON ;
	label values givbus GIVMASON ;
	label values givunskl GIVMASON ;
	label values givcabnt GIVMASON ;
	label values givlaw GIVMASON ;
	label values givsales GIVMASON ;
	label values givfctry GIVMASON ;
	label values givjudge GIVMASON ;
	label values givrocc GIVMASON ;
	label values incgap GOODLIFE ;
	label values goveqinc GOODLIFE ;
	label values govedop GOODLIFE ;
	label values govjobs GOODLIFE ;
	label values govless GOODLIFE ;
	label values govunemp GOODLIFE ;
	label values govminc GOODLIFE ;
	label values taxrich BUSTAX ;
	label values taxmid BUSTAX ;
	label values taxpoor BUSTAX ;
	label values taxshare TAXSHARE ;
	label values conwlth CONWLTH ;
	label values conclass CONWLTH ;
	label values conjobs CONWLTH ;
	label values conunion CONWLTH ;
	label values conurban CONWLTH ;
	label values consoc CONSOC ;
	label values conage CONSOC ;
	label values occmobil OCCMOBIL ;
	label values pajob PAJOB ;
	label values paslf PASLF ;
	label values firstjob FIRSTJOB ;
	label values firstslf FIRSTSLF ;
	label values lastjob FIRSTJOB ;
	label values lastslf FIRSTSLF ;
	label values rewrdeff WLTHPOV ;
	label values rewrdint WLTHPOV ;
	label values corrupt WLTHPOV ;
	label values earndes EARNDES ;
	label values ldcgap WLTHPOV ;
	label values ldctax WLTHPOV ;
	label values richhlth RICHHLTH ;
	label values richeduc RICHHLTH ;
	label values payresp PAYRESP ;
	label values payedtrn PAYRESP ;
	label values paysup PAYRESP ;
	label values payfam1 PAYRESP ;
	label values paychild PAYRESP ;
	label values paydowel PAYRESP ;
	label values payhard PAYRESP ;
	label values justpay JUSTPAY ;
	label values soctype1 SOCTYPE1 ;
	label values soctype2 SOCTYPE1 ;
	label values famrnk FAMRNK ;
	label values unsklrnk FAMRNK ;
	label values execrnk FAMRNK ;
	label values pasup PASUP ;
	label values books16 BOOKS16 ;
	label values mawrkwrm WLTHPOV ;
	label values kidsuffr WLTHPOV ;
	label values famsuffr WLTHPOV ;
	label values hapifwrk WLTHPOV ;
	label values homekid WLTHPOV ;
	label values housewrk WLTHPOV ;
	label values fejobind WLTHPOV ;
	label values twoincs WLTHPOV ;
	label values hubbywrk WLTHPOV ;
	label values ilikejob WLTHPOV ;
	label values wrknokid WRKNOKID ;
	label values wrkbaby WRKNOKID ;
	label values wrksch WRKNOKID ;
	label values wrkgrown WRKNOKID ;
	label values daycare1 DAYCARE1 ;
	label values daycare2 DAYCARE1 ;
	label values daycare3 DAYCARE1 ;
	label values daycare4 DAYCARE1 ;
	label values daycare5 DAYCARE1 ;
	label values femarry FEMARRY ;
	label values memarry FEMARRY ;
	label values marhappy WLTHPOV ;
	label values marfree WLTHPOV ;
	label values marfin WLTHPOV ;
	label values markids WLTHPOV ;
	label values marnomar WLTHPOV ;
	label values marlegit WLTHPOV ;
	label values marmakid WLTHPOV ;
	label values marpakid WLTHPOV ;
	label values mardiv WLTHPOV ;
	label values marhomo WLTHPOV ;
	label values numkids NUMKIDS ;
	label values nokids NOKIDS ;
	label values onekid NOKIDS ;
	label values twokids NOKIDS ;
	label values threkids NOKIDS ;
	label values fourkids NOKIDS ;
	label values kidtrble WLTHPOV ;
	label values kidjoy WLTHPOV ;
	label values kidnofre WLTHPOV ;
	label values kidless WLTHPOV ;
	label values kidfin WLTHPOV ;
	label values kidempty WLTHPOV ;
	label values divnow DIVNOW ;
	label values divnokid DIVNOW ;
	label values divifkid DIVNOW ;
	label values divkids DIVKIDS ;
	label values divwife DIVKIDS ;
	label values divhubby DIVKIDS ;
	label values mawork14 MAWORK14 ;
	label values evdiv EVDIV ;
	label values spevdiv SPEVDIV ;
	label values cohabit OUTOFBIZ ;
	label values rwrknokd RWRKNOKD ;
	label values rwrkbaby RWRKNOKD ;
	label values rwrksch RWRKNOKD ;
	label values rwrkgrwn RWRKNOKD ;
	label values earnsmor EARNSMOR ;
	label values fewrksup FEWRKSUP ;
	label values hubbywk1 HUBBYWK1 ;
	label values mrmom FEWRKSUP ;
	label values meovrwrk FEWRKSUP ;
	label values singlpar FEWRKSUP ;
	label values cohabok FEWRKSUP ;
	label values cohabfst FEWRKSUP ;
	label values divbest FEWRKSUP ;
	label values divifkd1 FEWRKSUP ;
	label values divnokd1 FEWRKSUP ;
	label values livnowed LIVNOWED ;
	label values mapaid FEWRKSUP ;
	label values chldcare FEWRKSUP ;
	label values abchoose FEWRKSUP ;
	label values teensex1 TEENSEX1 ;
	label values sexhar SEXHAR ;
	label values fambudgt FAMBUDGT ;
	label values laundry LAUNDRY ;
	label values repairs LAUNDRY ;
	label values caresick LAUNDRY ;
	label values shopfood LAUNDRY ;
	label values dinner LAUNDRY ;
	label values spwknokd SPWKNOKD ;
	label values spwkbaby SPWKNOKD ;
	label values spwrksch SPWKNOKD ;
	label values spwkgrwn SPWKNOKD ;
	label values mehhwork HUBBYWK1 ;
	label values mekdcare HUBBYWK1 ;
	label values laundry1 LAUNDRY1 ;
	label values repairs1 LAUNDRY1 ;
	label values caresik1 LAUNDRY1 ;
	label values shop1 LAUNDRY1 ;
	label values clean1 LAUNDRY1 ;
	label values cooking1 LAUNDRY1 ;
	label values rhhwork RHHWORK ;
	label values sphhwork MOREDAYS ;
	label values hhwkfair HHWKFAIR ;
	label values hhwkdis HHWKDIS ;
	label values deckids DECKIDS ;
	label values spborn SPBORN ;
	label values weekend WEEKEND ;
	label values buythngs WEEKEND ;
	label values timehome HUBBYWK1 ;
	label values strsshme HUBBYWK1 ;
	label values timework HUBBYWK1 ;
	label values strsswrk HUBBYWK1 ;
	label values tiredhme TIREDHME ;
	label values jobvsfam TIREDHME ;
	label values tiredwrk TIREDHME ;
	label values famvswrk TIREDHME ;
	label values happy7 HAPPY7 ;
	label values satjob7 SATJOB7 ;
	label values satfam7 SATJOB7 ;
	label values fewknokd FEWKNOKD ;
	label values twoincs1 TWOINCS1 ;
	label values earnshh EARNSHH ;
	label values SSFCHILD SSFCHILD ;
	label values SSMCHILD SSFCHILD ;
	label values KIDFINBU SSFCHILD ;
	label values KIDJOB SSFCHILD ;
	label values KIDSOCST SSFCHILD ;
	label values ELDERSUP SSFCHILD ;
	label values PAIDLV PAIDLV ;
	label values PAIDLV1 AGEWED ;
	label values PAIDLVPY PAIDLVPY ;
	label values PAIDLVDV PAIDLVDV ;
	label values FAMWKBST FAMWKBST ;
	label values FAMWKLST FAMWKBST ;
	label values CAREPROV CAREPROV ;
	label values CARECOST CARECOST ;
	label values ELDHELP ELDHELP ;
	label values ELDCOST ELDCOST ;
	label values HHCLEAN1 HHCLEAN1 ;
	label values WKNDACT WKNDACT ;
	label values TIREDHM1 TIREDHM1 ;
	label values JOBVSFA1 TIREDHM1 ;
	label values TIREDWK1 TIREDHM1 ;
	label values FAMVSWK1 TIREDHM1 ;
	label values WKKIDSCL WKKIDSCL ;
	label values WKYNGSCL WKKIDSCL ;
	label values WKKIDSCS WKKIDSCL ;
	label values WKYNGSCS WKKIDSCL ;
	label values RFAMLOOK RFAMLOOK ;
	label values SPFALOOK RFAMLOOK ;
	label values SPLIVE SPLIVE ;
	label values timepdwk TIMEPDWK ;
	label values timehhwk TIMEPDWK ;
	label values timefam TIMEPDWK ;
	label values timefrnd TIMEPDWK ;
	label values timeleis TIMEPDWK ;
	label values timerelx TIMEPDWK ;
	label values wrkearn WRKEARN ;
	label values wrkenjoy WRKEARN ;
	label values wrkimp WRKEARN ;
	label values hwduties HWDUTIES ;
	label values yrsfirm YRSFIRM ;
	label values dowell YRSFIRM ;
	label values expernc YRSFIRM ;
	label values paysame YRSFIRM ;
	label values ageemp YRSFIRM ;
	label values sexemp YRSFIRM ;
	label values famresp YRSFIRM ;
	label values educemp YRSFIRM ;
	label values dk DK ;
	label values bosswrks WRKEARN ;
	label values strngun WRKEARN ;
	label values secjob SECJOB ;
	label values hiinc SECJOB ;
	label values promotn SECJOB ;
	label values leisure SECJOB ;
	label values intjob SECJOB ;
	label values wrkindp SECJOB ;
	label values hlpoths SECJOB ;
	label values hlpsoc SECJOB ;
	label values flexhrs SECJOB ;
	label values unpeople UNPEOPLE ;
	label values unmoney UNPEOPLE ;
	label values unslfcon UNPEOPLE ;
	label values unrespct UNPEOPLE ;
	label values unfamten UNPEOPLE ;
	label values unjobexp UNPEOPLE ;
	label values unbored UNPEOPLE ;
	label values undk UNDK ;
	label values empself EMPSELF ;
	label values smallbig SMALLBIG ;
	label values indusoth INDUSOTH ;
	label values privgovt PRIVGOVT ;
	label values workweek WORKWEEK ;
	label values wantjob WANTJOB ;
	label values findjob FINDJOB ;
	label values iwrkhard IWRKHARD ;
	label values hrsmoney HRSMONEY ;
	label values ryrsfirm YRSFIRM ;
	label values rdowell YRSFIRM ;
	label values rpaysame YRSFIRM ;
	label values rexpernc YRSFIRM ;
	label values rageemp YRSFIRM ;
	label values rfamresp YRSFIRM ;
	label values reducemp YRSFIRM ;
	label values rdk UNDK ;
	label values rsecjob WRKEARN ;
	label values rhiinc WRKEARN ;
	label values rpromotn WRKEARN ;
	label values rleisure WRKEARN ;
	label values rintjob WRKEARN ;
	label values rwrkindp WRKEARN ;
	label values rhlpoths WRKEARN ;
	label values rhlpsoc WRKEARN ;
	label values rflexhrs WRKEARN ;
	label values xhaustn XHAUSTN ;
	label values physwrk XHAUSTN ;
	label values stress STRESS ;
	label values boredom XHAUSTN ;
	label values danger XHAUSTN ;
	label values unhlthy XHAUSTN ;
	label values unpleznt XHAUSTN ;
	label values planwrk PLANWRK ;
	label values findwork FINDJOB ;
	label values bossemps BOSSEMPS ;
	label values cowrkers BOSSEMPS ;
	label values jobsat JOBSAT ;
	label values supervis SUPERVIS ;
	label values supnum SUPNUM ;
	label values moonlite MOONLITE ;
	label values othhrs OTHHRS ;
	label values numsites NUMSITES ;
	label values localnum SPLOCNUM ;
	label values totalnum TOTALNUM ;
	label values employer NUMSITES ;
	label values numemply NUMEMPLY ;
	label values paydojob OPWLTH ;
	label values payfam OPWLTH ;
	label values payeduc OPWLTH ;
	label values paytime OPWLTH ;
	label values techjobs TECHJOBS ;
	label values techwork TECHWORK ;
	label values wantjob1 WANTJOB1 ;
	label values worknow EVWORK ;
	label values sethours SETHOURS ;
	label values placewrk PLACEWRK ;
	label values wktenure WKTENURE ;
	label values useskill USESKILL ;
	label values edcskill EDCSKILL ;
	label values jobskill JOBSKILL ;
	label values helporg1 PROZ1 ;
	label values prideorg PRIDEORG ;
	label values chngwork PROZ1 ;
	label values stayorg3 PROZ1 ;
	label values proudwrk PROZ1 ;
	label values absent ABSENT ;
	label values leavejob LEAVEJOB ;
	label values worryjob WORRYJOB ;
	label values evjob EVWORK ;
	label values yrjobend YRJOBEND ;
	label values whyjbend WHYJBEND ;
	label values wantjob2 EVWORK ;
	label values getjob LEAVEJOB ;
	label values lookjob EVWORK ;
	label values pubagncy PUBAGNCY ;
	label values priagncy PUBAGNCY ;
	label values wantads WANTADS ;
	label values adforjob WANTADS ;
	label values appemps WANTADS ;
	label values askhelp ASKHELP ;
	label values econsup ECONSUP ;
	label values selfemp1 WLTHPOV ;
	label values selfemp2 WLTHPOV ;
	label values unjobsec WLTHPOV ;
	label values unbetter WLTHPOV ;
	label values curwkpay OUTOFBIZ ;
	label values rimpskls WLTHPOV ;
	label values dailywrk DAILYWRK ;
	label values timeoff TIMEOFF ;
	label values jbintfam JBINTFAM ;
	label values famintjb JBINTFAM ;
	label values newjob NEWJOB ;
	label values jbtrain JBTRAIN ;
	label values jobeasy JOBEASY ;
	label values replaceu JOBEASY ;
	label values nounemp1 WLTHPOV ;
	label values nounemp2 WLTHPOV ;
	label values nounemp3 WLTHPOV ;
	label values nounemp4 WLTHPOV ;
	label values otherwrk OTHERWRK ;
	label values skltrain OTHHOME ;
	label values spwrkgvt SPWRKGVT ;
	label values hapunhap HAPUNHAP ;
	label values stiffpun SELFIRST ;
	label values deathpen SELFIRST ;
	label values premars1 PREMARS1 ;
	label values xmarsex1 PREMARS1 ;
	label values homosex1 PREMARS1 ;
	label values abdefct1 ABDEFCT1 ;
	label values abpoor1 ABDEFCT1 ;
	label values abdefctw PREMARS1 ;
	label values abpoorw PREMARS1 ;
	label values taxcheat TAXCHEAT ;
	label values govcheat TAXCHEAT ;
	label values concong CONCONG ;
	label values conbiz CONCONG ;
	label values congovt CONCONG ;
	label values conchurh CONCONG ;
	label values concourt CONCONG ;
	label values conschls CONCONG ;
	label values polsgod SELFIRST ;
	label values clergvte SELFIRST ;
	label values religpub SELFIRST ;
	label values clerggov SELFIRST ;
	label values churhpow CHURHPOW ;
	label values godchnge GODCHNGE ;
	label values afterlif AFTERLIF ;
	label values devil AFTERLIF ;
	label values heaven AFTERLIF ;
	label values hell AFTERLIF ;
	label values miracles AFTERLIF ;
	label values bible1 BIBLE1 ;
	label values theism SELFIRST ;
	label values fatalism SELFIRST ;
	label values godmeans SELFIRST ;
	label values nihilism SELFIRST ;
	label values predeter SELFIRST ;
	label values egomeans SELFIRST ;
	label values ownfate SELFIRST ;
	label values relexper EVWORK ;
	label values marelkid MARELKID ;
	label values madenkid MADENKID ;
	label values parelkid MARELKID ;
	label values padenkid MADENKID ;
	label values religkid MARELKID ;
	label values denkid MADENKID ;
	label values religsp MARELKID ;
	label values densp MADENKID ;
	label values attendma ATTENDMA ;
	label values attendpa ATTENDMA ;
	label values attend12 ATTENDMA ;
	label values prayfreq PRAYFREQ ;
	label values relactiv PRAYFREQ ;
	label values RELACTIV1 V4688_A ;
	label values feelrel FEELREL ;
	label values schlpray SCHLPRAY ;
	label values godright SELFIRST ;
	label values socright SELFIRST ;
	label values perright SELFIRST ;
	label values antirel ANTIREL ;
	label values befair BEFAIR ;
	label values cantrust CANTRUST ;
	label values trustsci PROZ1 ;
	label values religcon PROZ1 ;
	label values religint PROZ1 ;
	label values religinf PROZ1 ;
	label values volwkpol VOLWKPOL ;
	label values volwkchr VOLWKPOL ;
	label values volwkrel VOLWKPOL ;
	label values volwkoth VOLWKPOL ;
	label values reltruth RELTRUTH ;
	label values carright CARRIGHT ;
	label values cardo CARDO ;
	label values GEOMOBIL GEOMOBIL ;
	label values RELGRPEQ FEHIRE ;
	label values RSPCTREL FEHIRE ;
	label values RELMARRY RELMARRY ;
	label values RELCAND RELMARRY ;
	label values RELEXT1 RELEXT1 ;
	label values RELEXT2 RELEXT1 ;
	label values REINCAR REINCAR ;
	label values NIRVANA REINCAR ;
	label values ANCESTRS REINCAR ;
	label values MYWAYGOD FEHIRE ;
	label values RELOBJCT GIVEARTS ;
	label values VISTHOLY VISTHOLY ;
	label values RELSPRT RELSPRT ;
	label values PAXHAPPY FEHIRE ;
	label values MAKEFRND FEHIRE ;
	label values COMFORT FEHIRE ;
	label values RIGHTPEO FEHIRE ;
	label values PERSCRFC GIVEARTS ;
	label values obeythnk OBEYTHNK ;
	label values privent SELFIRST ;
	label values postmat1 POSTMAT1 ;
	label values postmat2 POSTMAT1 ;
	label values scifaith SELFIRST ;
	label values harmgood SELFIRST ;
	label values sciworse SELFIRST ;
	label values scigrn SELFIRST ;
	label values grnecon SELFIRST ;
	label values harmsgrn SELFIRST ;
	label values anrights SELFIRST ;
	label values resnatur SELFIRST ;
	label values grnprog SELFIRST ;
	label values naturpax SELFIRST ;
	label values grwthelp SELFIRST ;
	label values antests SELFIRST ;
	label values naturwar SELFIRST ;
	label values grwtharm SELFIRST ;
	label values naturgod NATURGOD ;
	label values grnprice GRNPRICE ;
	label values grntaxes GRNPRICE ;
	label values grnsol GRNPRICE ;
	label values toodifme SELFIRST ;
	label values ihlpgrn SELFIRST ;
	label values scitest1 SCITEST1 ;
	label values scitest2 SCITEST1 ;
	label values scitest3 SCITEST1 ;
	label values scitest4 SCITEST1 ;
	label values scitest5 SCITEST1 ;
	label values grntest1 SCITEST1 ;
	label values grntest2 SCITEST1 ;
	label values grntest3 SCITEST1 ;
	label values grntest4 SCITEST1 ;
	label values grntest5 SCITEST1 ;
	label values grntest6 SCITEST1 ;
	label values grntest7 SCITEST1 ;
	label values carsgen CARSGEN ;
	label values carsfam CARSGEN ;
	label values carsten CARSTEN ;
	label values nukegen CARSGEN ;
	label values nukefam CARSGEN ;
	label values indusgen CARSGEN ;
	label values indusfam CARSGEN ;
	label values chemgen CARSGEN ;
	label values chemfam CARSGEN ;
	label values watergen CARSGEN ;
	label values waterfam CARSGEN ;
	label values tempgen CARSGEN ;
	label values tempfam CARSGEN ;
	label values pubdecid PUBDECID ;
	label values busdecid BUSDECID ;
	label values USDOENUF USDOENUF ;
	label values recycle RECYCLE ;
	label values chemfree RECYCLE ;
	label values nomeat NOMEAT ;
	label values drivless DRIVLESS ;
	label values grngroup EVWORK ;
	label values grnsign GRNSIGN ;
	label values grnmoney GRNSIGN ;
	label values grndemo GRNSIGN ;
	label values comtype COMTYPE ;
	label values popgrwth SELFIRST ;
	label values impgrn SELFIRST ;
	label values othssame SELFIRST ;
	label values grnexagg WLTHPOV ;
	label values genegen GENEGEN ;
	label values amprogrn AMPROGRN ;
	label values bizpeop BIZPEOP ;
	label values govtbiz GOVTBIZ ;
	label values peopgovt PEOPGOVT ;
	label values grnintl WLTHPOV ;
	label values ldcgrn WLTHPOV ;
	label values econgrn SELFIRST ;
	label values nukeacc NUKEACC ;
	label values infobiz INFOBIZ ;
	label values infogrn INFOBIZ ;
	label values infogovt INFOBIZ ;
	label values infonews INFONEWS ;
	label values infotv INFOBIZ ;
	label values infocol INFOBIZ ;
	label values excldimm EXCLDIMM ;
	label values TOPPROB1 TOPPROB1 ;
	label values TOPPROB2 TOPPROB1 ;
	label values TRUST5 TRUST5 ;
	label values FAIR5 FAIR5 ;
	label values GRNCON GRNCON ;
	label values ENPRBUS ENPRBUS ;
	label values ENPRBFAM ENPRBUS ;
	label values KNWCAUSE KNWCAUSE ;
	label values KNOWSOL KNWCAUSE ;
	label values futenrgy FUTENRGY ;
	label values HELPHARM HELPHARM ;
	label values GRNEFFME HELPHARM ;
	label values TEMPGEN1 TEMPGEN1 ;
	label values BUSGRN BUSGRN ;
	label values PEOPGRN PEOPGRN ;
	label values REDCEHME REDCEHME ;
	label values H2OLESS REDCEHME ;
	label values NOBUYGRN REDCEHME ;
	label values clsenei CLSENEI ;
	label values clsetown CLSENEI ;
	label values clsestat CLSENEI ;
	label values clseusa CLSENEI ;
	label values clsenoam CLSENEI ;
	label values movenei MOVENEI ;
	label values movetown MOVENEI ;
	label values movestat MOVENEI ;
	label values moveusa MOVENEI ;
	label values movenoam MOVENEI ;
	label values onenatn ONENATN ;
	label values ambornin AMBORNIN ;
	label values amcit AMBORNIN ;
	label values amlived AMBORNIN ;
	label values amenglsh AMBORNIN ;
	label values amchrstn AMBORNIN ;
	label values amgovt AMBORNIN ;
	label values amfeel AMBORNIN ;
	label values amcitizn WLTHPOV ;
	label values amshamed WLTHPOV ;
	label values belikeus WLTHPOV ;
	label values ambetter WLTHPOV ;
	label values ifwrong WLTHPOV ;
	label values amsports WLTHPOV ;
	label values prouddem PROUDDEM ;
	label values proudpol PROUDDEM ;
	label values proudeco PROUDDEM ;
	label values proudsss PROUDDEM ;
	label values proudsci PROUDDEM ;
	label values proudspt PROUDDEM ;
	label values proudart PROUDDEM ;
	label values proudmil PROUDDEM ;
	label values proudhis PROUDDEM ;
	label values proudgrp PROUDDEM ;
	label values imports EXCLDIMM ;
	label values wrldgovt EXCLDIMM ;
	label values forlang EXCLDIMM ;
	label values amownway EXCLDIMM ;
	label values forland EXCLDIMM ;
	label values amtv EXCLDIMM ;
	label values amcult EXCLDIMM ;
	label values mincult EXCLDIMM ;
	label values meltpot1 MELTPOT1 ;
	label values immcrime EXCLDIMM ;
	label values immameco EXCLDIMM ;
	label values immjobs EXCLDIMM ;
	label values immideas EXCLDIMM ;
	label values letin1 LETIN1 ;
	label values refugees EXCLDIMM ;
	label values res161 RES161 ;
	label values livecom1 HRS1 ;
	label values abroad ABROAD ;
	label values spkhome1 SPKHOME1 ;
	label values spkhome2 SPKHOME2 ;
	label values spklang1 SPKHOME1 ;
	label values spklang2 SPKHOME2 ;
	label values spklang3 SPKLANG3 ;
	label values citizen EVWORK ;
	label values parcit PARCIT ;
	label values ethclose CLSENEI ;
	label values nafta1 NAFTA1 ;
	label values nafta2 NAFTA2 ;
	label values socid1 SOCID1 ;
	label values socid2 SOCID1 ;
	label values socid3 SOCID1 ;
	label values amancstr AMBORNIN ;
	label values lessprd WLTHPOV ;
	label values intlincs WLTHPOV ;
	label values freetrde WLTHPOV ;
	label values decsorgs WLTHPOV ;
	label values powrorgs WLTHPOV ;
	label values CITWORLD CITWORLD ;
	label values forcult WLTHPOV ;
	label values internet WLTHPOV ;
	label values immimp EXCLDIMM ;
	label values immcosts EXCLDIMM ;
	label values kidshere EXCLDIMM ;
	label values kidsaway EXCLDIMM ;
	label values immrghts EXCLDIMM ;
	label values amproud1 AMPROUD1 ;
	label values nafta2a NAFTA2A ;
	label values nafta3 EXCLDIMM ;
	label values SHORTCOM SHORTCOM ;
	label values IMMCULT SHORTCOM ;
	label values IMMEDUC SHORTCOM ;
	label values LETIN1A LETIN1A ;
	label values IMMASSIM IMMASSIM ;
	label values PATRIOT1 CITWORLD ;
	label values PATRIOT2 CITWORLD ;
	label values PATRIOT3 CITWORLD ;
	label values PATRIOT4 CITWORLD ;
	label values voteelec VOTEELEC ;
	label values paytaxes VOTEELEC ;
	label values obeylaws VOTEELEC ;
	label values watchgov VOTEELEC ;
	label values actassoc VOTEELEC ;
	label values othreasn VOTEELEC ;
	label values buypol VOTEELEC ;
	label values helpusa VOTEELEC ;
	label values helpwrld VOTEELEC ;
	label values milserve VOTEELEC ;
	label values relmeet RELMEET ;
	label values revmeet RELMEET ;
	label values racmeet RELMEET ;
	label values signdpet SIGNDPET ;
	label values avoidbuy SIGNDPET ;
	label values joindem SIGNDPET ;
	label values attrally SIGNDPET ;
	label values cntctgov SIGNDPET ;
	label values polfunds SIGNDPET ;
	label values usemedia SIGNDPET ;
	label values interpol SIGNDPET ;
	label values grpparty GRPPARTY ;
	label values grpwork GRPPARTY ;
	label values grprelig GRPPARTY ;
	label values grpsprts GRPPARTY ;
	label values grpother GRPPARTY ;
	label values solok VOTEELEC ;
	label values rghtsmin VOTEELEC ;
	label values eqtreat VOTEELEC ;
	label values citviews VOTEELEC ;
	label values polopts VOTEELEC ;
	label values oppsegov VOTEELEC ;
	label values poleff18 WLTHPOV ;
	label values poleff19 WLTHPOV ;
	label values poleff20 WLTHPOV ;
	label values actlaw ACTLAW ;
	label values affctlaw ACTLAW ;
	label values polint1 POLINT1 ;
	label values govdook WLTHPOV ;
	label values polgreed WLTHPOV ;
	label values discpol DISCPOL ;
	label values chngeoth DISCPOL ;
	label values powerun POWERUN ;
	label values govngos GOVNGOS ;
	label values unrghts UNRGHTS ;
	label values polactve WLTHPOV ;
	label values choices WLTHPOV ;
	label values refrndms WLTHPOV ;
	label values elecvote ELECVOTE ;
	label values elecfair ELECFAIR ;
	label values servepeo SERVEPEO ;
	label values fixmistk FIXMISTK ;
	label values corruptn CORRUPTN ;
	label values demtoday DEMTODAY ;
	label values dem10pst DEMTODAY ;
	label values dem10fut DEMTODAY ;
	label values demrghts DEMRGHTS ;
	label values gvtrghts GVTRGHTS ;
	label values POLINTER POLINTER ;
	label values POLNEWS POLNEWS ;
	label values CRIMLOSE CRIMLOSE ;
	label values NTCITVTE CRIMLOSE ;
	label values NOTVOTE CRIMLOSE ;
	label values HLTHALL CRIMLOSE ;
	label values LEFTRGHT LEFTRGHT ;
	label values creation CREATION ;
	label values scitesty SCITESTY ;
	label values big5a1 WLTHPOV ;
	label values big5b1 WLTHPOV ;
	label values big5c1 WLTHPOV ;
	label values big5d1 WLTHPOV ;
	label values big5e1 WLTHPOV ;
	label values big5a2 WLTHPOV ;
	label values big5b2 WLTHPOV ;
	label values big5c2 WLTHPOV ;
	label values big5d2 WLTHPOV ;
	label values big5e2 WLTHPOV ;
	label values forbdcom FORBDCOM ;
	label values forbdrac FORBDCOM ;
	label values forbdmar FORBDMAR ;
	label values allowcom ALLOWCOM ;
	label values allowrac ALLOWCOM ;
	label values allowmar ALLOWMAR ;
	label values cideknew NUMKIDS ;
	label values cidewho CIDEWHO ;
	label values cidesex KDSEX1 ;
	label values cideage CIDEAGE ;
	label values ciderace CIDERACE ;
	label values cidereg CIDEREG ;
	label values cidewho2 CIDEWHO ;
	label values cidesex2 KDSEX1 ;
	label values cideage2 CIDEAGE ;
	label values ciderac2 CIDERACE ;
	label values cidereg2 CIDEREG ;
	label values cidewho3 CIDEWHO ;
	label values cidesex3 KDSEX1 ;
	label values cideage3 CIDEAGE ;
	label values ciderac3 CIDERACE ;
	label values cidereg3 CIDEREG ;
	label values aidsknow AIDSKNOW ;
	label values aidswho CIDEWHO ;
	label values aidsdead AIDSDEAD ;
	label values aidssex KDSEX1 ;
	label values aidsage CIDEAGE ;
	label values aidsrace CIDERACE ;
	label values aidsreg CIDEREG ;
	label values aidswho2 CIDEWHO ;
	label values aidsded2 AIDSDEAD ;
	label values aidssex2 KDSEX1 ;
	label values aidsage2 CIDEAGE ;
	label values aidsrac2 CIDERACE ;
	label values aidsreg2 CIDEREG ;
	label values aidswho3 CIDEWHO ;
	label values aidsded3 AIDSDEAD ;
	label values aidssex3 KDSEX1 ;
	label values aidsage3 CIDEAGE ;
	label values aidsrac3 CIDERACE ;
	label values aidsreg3 CIDEREG ;
	label values suiknew NUMKIDS ;
	label values suiwho SUIWHO ;
	label values suisex KDSEX1 ;
	label values suiage CIDEAGE ;
	label values suirace CIDERACE ;
	label values suireg CIDEREG ;
	label values suiwho2 SUIWHO ;
	label values suisex2 KDSEX1 ;
	label values suiage2 CIDEAGE ;
	label values suirac2 CIDERACE ;
	label values suireg2 CIDEREG ;
	label values suiwho3 SUIWHO ;
	label values suisex3 KDSEX1 ;
	label values suiage3 CIDEAGE ;
	label values suirac3 CIDERACE ;
	label values suireg3 CIDEREG ;
	label values aidssch AIDSSCH ;
	label values aidsads AIDSSCH ;
	label values aidsinsr AIDSSCH ;
	label values aidshlth AIDSSCH ;
	label values aidsmar AIDSSCH ;
	label values aidssxed AIDSSCH ;
	label values aidsids AIDSSCH ;
	label values aidsfare AIDSSCH ;
	label values partners PARTNERS ;
	label values matesex EVWORK ;
	label values frndsex FRNDSEX ;
	label values acqntsex ACQNTSEX ;
	label values pikupsex PIKUPSEX ;
	label values paidsex PAIDSEX ;
	label values othersex OTHERSEX ;
	label values sexsex SEXSEX ;
	label values sexfreq SEXFREQ ;
	label values sexfreq1 SEXFREQ1 ;
	label values sexfreq2 SHOPNUM ;
	label values numwomen NUMWOMEN ;
	label values nummen NUMWOMEN ;
	label values partopen PARTOPEN ;
	label values partopn5 PARTOPEN ;
	label values partnrs5 PARTNERS ;
	label values sexsex5 SEXSEX ;
	label values evpaidsx EVWORK ;
	label values evstray EVSTRAY ;
	label values condom CONDOM ;
	label values relatsex RELATSEX ;
	label values evidu EVWORK ;
	label values idu30 IDU30 ;
	label values evcrack EVWORK ;
	label values crack30 IDU30 ;
	label values hivtest EVWORK ;
	label values hivtest1 HIVTEST1 ;
	label values hivtest2 HIVTEST2 ;
	label values AIDSLOOK CONVICTD ;
	label values AIDSCNDM CONVICTD ;
	label values HIVVAC TOMATOES ;
	label values HIVKISS TOMATOES ;
	label values SEXORNT SEXORNT ;
	label values siborder SIBORDER ;
	label values genetest GENETEST ;
	label values genetst1 GENETEST ;
	label values genegood GENEGOOD ;
	label values genegoo1 GENEGOO1 ;
	label values genegoo2 GENEGOO2 ;
	label values geneself GENESELF ;
	label values geneabrt GENEABRT ;
	label values genedef1 GENEDEF1 ;
	label values genedef2 GENEDEF1 ;
	label values genedef3 GENEDEF1 ;
	label values parhardr OWNTHING ;
	label values parworse OWNTHING ;
	label values parrght OWNTHING ;
	label values parwhere OWNTHING ;
	label values parfin OWNTHING ;
	label values pargovt OWNTHING ;
	label values partime OWNTHING ;
	label values parwork OWNTHING ;
	label values partaxes OWNTHING ;
	label values rolema ROLEMA ;
	label values rolepa ROLEMA ;
	label values rolegp ROLEMA ;
	label values roleccp ROLEMA ;
	label values roletchr ROLEMA ;
	label values roleclrg ROLEMA ;
	label values chldeduc CHLDEDUC ;
	label values chldlove CHLDEDUC ;
	label values chldsafe CHLDEDUC ;
	label values chldmorl CHLDEDUC ;
	label values chldsup CHLDEDUC ;
	label values chldhome CHLDEDUC ;
	label values chldhlth CHLDEDUC ;
	label values chldskls CHLDEDUC ;
	label values chldtime CHLDEDUC ;
	label values inffilms INFFILMS ;
	label values infpubtv INFFILMS ;
	label values infnettv INFFILMS ;
	label values infadstv INFFILMS ;
	label values infmusic INFFILMS ;
	label values sppregnt SPPREGNT ;
	label values sphlthkd SPPREGNT ;
	label values spheadst SPPREGNT ;
	label values sppoorkd SPPREGNT ;
	label values spwrkpar SPPREGNT ;
	label values sphomekd SPPREGNT ;
	label values spdsabkd SPPREGNT ;
	label values spdrugs SPPREGNT ;
	label values spfoodkd SPPREGNT ;
	label values sppill SPPREGNT ;
	label values prob1 PROB1 ;
	label values prob2 PROB1 ;
	label values prob3 PROB1 ;
	label values prob4 PROB1 ;
	label values hlth1 EVWORK ;
	label values hlth2 EVWORK ;
	label values hlth3 EVWORK ;
	label values hlth4 EVWORK ;
	label values hlth5 EVWORK ;
	label values hlth6 EVWORK ;
	label values hlth7 EVWORK ;
	label values hlth8 EVWORK ;
	label values hlth9 EVWORK ;
	label values hlth10 EVWORK ;
	label values hlth11 EVWORK ;
	label values hlth12 EVWORK ;
	label values hlth13 EVWORK ;
	label values hlth14 EVWORK ;
	label values work1 EVWORK ;
	label values work2 EVWORK ;
	label values work3 EVWORK ;
	label values work4 EVWORK ;
	label values work5 EVWORK ;
	label values work6 EVWORK ;
	label values work7 EVWORK ;
	label values work8 EVWORK ;
	label values work9 EVWORK ;
	label values work10 EVWORK ;
	label values finan1 EVWORK ;
	label values finan2 EVWORK ;
	label values finan3 EVWORK ;
	label values finan4 EVWORK ;
	label values finan5 EVWORK ;
	label values hrdshp1 EVWORK ;
	label values hrdshp2 EVWORK ;
	label values hrdshp3 EVWORK ;
	label values hrdshp4 EVWORK ;
	label values hrdshp5 EVWORK ;
	label values hrdshp6 EVWORK ;
	label values hrdshp7 EVWORK ;
	label values famper1 EVWORK ;
	label values famper2 EVWORK ;
	label values famper3 EVWORK ;
	label values famper4 EVWORK ;
	label values famper5 EVWORK ;
	label values famper6 EVWORK ;
	label values law1 EVWORK ;
	label values law2 EVWORK ;
	label values law3 EVWORK ;
	label values law4 EVWORK ;
	label values law5 EVWORK ;
	label values law6 EVWORK ;
	label values law7 EVWORK ;
	label values live1 EVWORK ;
	label values live2 EVWORK ;
	label values live3 EVWORK ;
	label values live4 EVWORK ;
	label values oth1 EVWORK ;
	label values oth2 EVWORK ;
	label values oth3 EVWORK ;
	label values oth4 EVWORK ;
	label values oth5 EVWORK ;
	label values extra1 FRNDOTH1 ;
	label values extra2 FRNDOTH1 ;
	label values povline POVLINE ;
	label values incdef INCDEF ;
	label values realinc YEARLY ;
	label values realrinc YEARLY ;
	label values coninc YEARLY ;
	label values conrinc YEARLY ;
	label values minfour WHENHS ;
	label values minfood WHENHS ;
	label values minthree WHENHS ;
	label values sectech SELFIRST ;
	label values secdocs SELFIRST ;
	label values rptcowrk RPTCOWRK ;
	label values askfinan ANTIREL ;
	label values askcrime ANTIREL ;
	label values askdrugs ANTIREL ;
	label values askmentl ANTIREL ;
	label values askforgn ANTIREL ;
	label values askdrink ANTIREL ;
	label values asksexor ANTIREL ;
	label values askfrbiz ANTIREL ;
	label values askfrtrv ANTIREL ;
	label values askcomp ANTIREL ;
	label values secprvcy SECPRVCY ;
	label values secdiplo SECDIPLO ;
	label values secmilop SECDIPLO ;
	label values secterr SECDIPLO ;
	label values secbudgt SECDIPLO ;
	label values chkfinan CHKFINAN ;
	label values chkspfin SECDIPLO ;
	label values chktaxes SECDIPLO ;
	label values knomentl KNOMENTL ;
	label values takearms TAKEARMS ;
	label values leakinfo LEAKINFO ;
	label values spyenemy SPYENEMY ;
	label values spyfrend SPYFREND ;
	label values taketrck TAKEARMS ;
	label values punarms PUNARMS ;
	label values punleak PUNARMS ;
	label values punenmy PUNARMS ;
	label values punfrnd PUNARMS ;
	label values puntrck PUNARMS ;
	label values comsteal COMSTEAL ;
	label values comdata COMSTEAL ;
	label values comsys COMSTEAL ;
	label values comsnoop COMSTEAL ;
	label values comemail COMSTEAL ;
	label values comporn COMSTEAL ;
	label values lietest PRIDEORG ;
	label values testdrug PRIDEORG ;
	label values bugging PRIDEORG ;
	label values finanqs PRIDEORG ;
	label values chkonjob PRIDEORG ;
	label values chkother PRIDEORG ;
	label values compfin WLTHPOV ;
	label values chktravl WLTHPOV ;
	label values emailwrk WLTHPOV ;
	label values emailhme WLTHPOV ;
	label values tapwrk WLTHPOV ;
	label values taphme WLTHPOV ;
	label values srchwrk WLTHPOV ;
	label values camwrk WLTHPOV ;
	label values usspy USSPY ;
	label values forspy USSPY ;
	label values usterror USSPY ;
	label values frterror USSPY ;
	label values forsteal USSPY ;
	label values nuclrwar USSPY ;
	label values ethnic ETHNIC ;
	label values eth1 ETHNIC ;
	label values eth2 ETHNIC ;
	label values eth3 ETHNIC ;
	label values ethnum ETHNUM ;
	label values spethnic ETHNIC ;
	label values speth1 ETHNIC ;
	label values speth2 ETHNIC ;
	label values speth3 ETHNIC ;
	label values spethnum SPETHNUM ;
	label values racesee RACESEE ;
	label values racedbtf RACEDBTF ;
	label values raceself RACESELF ;
	label values hispanic HISPANIC ;
	label values racecen1 RACECEN1 ;
	label values racecen2 RACECEN1 ;
	label values racecen3 RACECEN1 ;
	label values difrace1 DIFRACE1 ;
	label values difrace2 DIFRACE1 ;
	label values difrace3 DIFRACE1 ;
	label values USCITZN USCITZN ;
	label values FUCITZN FUCITZN ;
	label values vetyears VETYEARS ;
	label values vetkind VETKIND ;
	label values workdy WORKDY ;
	label values workhr WORKHR ;
	label values spdays WORKDY ;
	label values sphour WORKHR ;
	label values dwelling DWELLING ;
	label values dwelngh DWELNGH ;
	label values dwelcity DWELNGH ;
	label values dwelown DWELOWN ;
	label values worda WORDA ;
	label values wordb WORDA ;
	label values wordc WORDA ;
	label values wordd WORDA ;
	label values worde WORDA ;
	label values wordf WORDA ;
	label values wordg WORDA ;
	label values wordh WORDA ;
	label values wordi WORDA ;
	label values wordj WORDA ;
	label values wordsum WORDSUM ;
	label values godoc EVWORK ;
	label values eatout EVWORK ;
	label values seefilm EVWORK ;
	label values attrelig EVWORK ;
	label values numdays CHLDSOON ;
	label values sunday EVWORK ;
	label values monday EVWORK ;
	label values tuesday EVWORK ;
	label values wednesdy EVWORK ;
	label values thursday EVWORK ;
	label values friday EVWORK ;
	label values saturday EVWORK ;
	label values attreg EVWORK ;
	label values mediarel EVWORK ;
	label values othrel EVWORK ;
	label values othrel1 OTHREL1 ;
	label values othrel2 OTHREL1 ;
	label values othrel3 OTHREL1 ;
	label values attweek EVWORK ;
	label values religid RELIGID ;
	label values relid1 RELID1 ;
	label values relid2 RELID1 ;
	label values relid3 RELID1 ;
	label values relidbst RELID1 ;
	label values cathid CATHID ;
	label values charisma EVWORK ;
	label values relate1 RELATE1 ;
	label values gender1 KDSEX1 ;
	label values old1 OLD1 ;
	label values mar1 MAR1 ;
	label values away1 AWAY1 ;
	label values where1 WHERE1 ;
	label values relate2 RELATE1 ;
	label values gender2 KDSEX1 ;
	label values old2 OLD1 ;
	label values mar2 MAR1 ;
	label values away2 AWAY1 ;
	label values where2 WHERE1 ;
	label values relate3 RELATE1 ;
	label values gender3 KDSEX1 ;
	label values old3 OLD1 ;
	label values mar3 MAR1 ;
	label values away3 AWAY1 ;
	label values where3 WHERE1 ;
	label values relate4 RELATE1 ;
	label values gender4 KDSEX1 ;
	label values old4 OLD1 ;
	label values mar4 MAR1 ;
	label values away4 AWAY1 ;
	label values where4 WHERE1 ;
	label values relate5 RELATE1 ;
	label values gender5 KDSEX1 ;
	label values old5 OLD1 ;
	label values mar5 MAR1 ;
	label values away5 AWAY1 ;
	label values where5 WHERE1 ;
	label values relate6 RELATE1 ;
	label values gender6 KDSEX1 ;
	label values old6 OLD1 ;
	label values mar6 MAR1 ;
	label values away6 AWAY1 ;
	label values where6 WHERE1 ;
	label values relate7 RELATE1 ;
	label values gender7 KDSEX1 ;
	label values old7 OLD1 ;
	label values mar7 MAR1 ;
	label values away7 AWAY1 ;
	label values where7 WHERE1 ;
	label values relate8 RELATE1 ;
	label values gender8 KDSEX1 ;
	label values old8 OLD1 ;
	label values mar8 MAR1 ;
	label values away8 AWAY1 ;
	label values where8 WHERE1 ;
	label values relate9 RELATE1 ;
	label values gender9 KDSEX1 ;
	label values old9 OLD1 ;
	label values mar9 MAR1 ;
	label values away9 AWAY1 ;
	label values where9 WHERE1 ;
	label values relate10 RELATE1 ;
	label values gender10 KDSEX1 ;
	label values old10 OLD1 ;
	label values mar10 MAR1 ;
	label values away10 AWAY1 ;
	label values where10 WHERE1 ;
	label values relate11 RELATE1 ;
	label values gender11 KDSEX1 ;
	label values old11 OLD1 ;
	label values mar11 MAR1 ;
	label values away11 AWAY1 ;
	label values where11 WHERE1 ;
	label values relate12 RELATE1 ;
	label values gender12 KDSEX1 ;
	label values old12 OLD1 ;
	label values mar12 MAR1 ;
	label values away12 AWAY1 ;
	label values where12 WHERE1 ;
	label values relate13 RELATE1 ;
	label values gender13 KDSEX1 ;
	label values old13 OLD1 ;
	label values mar13 MAR1 ;
	label values away13 AWAY1 ;
	label values where13 WHERE1 ;
	label values relate14 RELATE1 ;
	label values gender14 KDSEX1 ;
	label values old14 OLD1 ;
	label values mar14 MAR1 ;
	label values away14 AWAY1 ;
	label values where14 WHERE1 ;
	label values relhhd1 RELHHD1 ;
	label values relhhd2 RELHHD1 ;
	label values relhhd3 RELHHD1 ;
	label values relhhd4 RELHHD1 ;
	label values relhhd5 RELHHD1 ;
	label values relhhd6 RELHHD1 ;
	label values relhhd7 RELHHD1 ;
	label values relhhd8 RELHHD1 ;
	label values relhhd9 RELHHD1 ;
	label values relhhd10 RELHHD1 ;
	label values relhhd11 RELHHD1 ;
	label values relhhd12 RELHHD1 ;
	label values relhhd13 RELHHD1 ;
	label values relhhd14 RELHHD1 ;
	label values hefinfo HEFINFO ;
	label values hhrace HHRACE ;
	label values respnum RESPNUM ;
	label values hhtype HHTYPE ;
	label values hhtype1 HHTYPE1 ;
	label values famgen FAMGEN ;
	label values rplace RELATE1 ;
	label values rvisitor RVISITOR ;
	label values visitors VISITORS ;
	label values relhh1 RELHH1 ;
	label values relhh2 RELHH1 ;
	label values relhh3 RELHH1 ;
	label values relhh4 RELHH1 ;
	label values relhh5 RELHH1 ;
	label values relhh6 RELHH1 ;
	label values relhh7 RELHH1 ;
	label values relhh8 RELHH1 ;
	label values relhh9 RELHH1 ;
	label values relhh10 RELHH1 ;
	label values relhh11 RELHH1 ;
	label values relhh12 RELHH1 ;
	label values relhh13 RELHH1 ;
	label values relhh14 RELHH1 ;
	label values relsp1 RELSP1 ;
	label values relsp2 RELSP1 ;
	label values relsp3 RELSP1 ;
	label values relsp4 RELSP1 ;
	label values relsp5 RELSP1 ;
	label values relsp6 RELSP1 ;
	label values relsp7 RELSP1 ;
	label values relsp8 RELSP1 ;
	label values relsp9 RELSP1 ;
	label values relsp10 RELSP1 ;
	label values relsp11 RELSP1 ;
	label values relsp12 RELSP1 ;
	label values relsp13 RELSP1 ;
	label values relsp14 RELSP1 ;
	label values dateintv MNTLOTH ;
	label values isco68 ISCO68 ;
	label values paisco68 ISCO68 ;
	label values spisco68 ISCO68 ;
	label values isco681 ISCO68 ;
	label values paisc681 ISCO68 ;
	label values maisc681 ISCO68 ;
	label values spisc681 ISCO68 ;
	label values isco88 WHENHS ;
	label values paisco88 WHENHS ;
	label values maisco88 WHENHS ;
	label values spisco88 WHENHS ;
	label values sei10 PRESTG10 ;
	label values sei10educ PRESTG10 ;
	label values sei10inc PRESTG10 ;
	label values pasei10 PRESTG10 ;
	label values pasei10educ PRESTG10 ;
	label values pasei10inc PRESTG10 ;
	label values masei10 PRESTG10 ;
	label values masei10educ PRESTG10 ;
	label values masei10inc PRESTG10 ;
	label values spsei10 PRESTG10 ;
	label values spsei10educ PRESTG10 ;
	label values spsei10inc PRESTG10 ;
	label values uswar EVWORK ;
	label values uswary EVWORK ;
	label values usintl USINTL ;
	label values usun USUN ;
	label values commun COMMUN ;
	label values commun10 COMMUN ;
	label values russia RUSSIA ;
	label values japan RUSSIA ;
	label values england RUSSIA ;
	label values canada RUSSIA ;
	label values brazil RUSSIA ;
	label values china RUSSIA ;
	label values israel RUSSIA ;
	label values egypt RUSSIA ;
	label values welfare1 PILLOK ;
	label values welfare2 PILLOK ;
	label values welfare3 PILLOK ;
	label values welfare4 PILLOK ;
	label values welfare5 PILLOK ;
	label values welfare6 PILLOK ;
	label values WKCONTCT WKCONTCT ;
	label values talkspvs TALKSPVS ;
	label values EFFCTSUP EFFCTSUP ;
	label values cohort MNTLOTH ;
	label values marcohrt MNTLOTH ;
	label values birthmo BIRTHMO ;
	label values zodiac ZODIAC ;
	label values inthisp INTHISP ;
	label values intrace1 INTRACE1 ;
	label values intrace2 INTRACE1 ;
	label values intrace3 INTRACE1 ;
	label values bthgrp1a BTHGRP1A ;
	label values bthgrp1b BTHGRP1A ;
	label values bthgrp1c BTHGRP1A ;
	label values bthgrp1d BTHGRP1A ;
	label values bthgrp1e BTHGRP1A ;
	label values bthgrp1f BTHGRP1A ;
	label values bthgrp2a BTHGRP1A ;
	label values bthgrp2b BTHGRP1A ;
	label values bthgrp2c BTHGRP1A ;
	label values bthgrp2d BTHGRP1A ;
	label values bthgrp2e BTHGRP1A ;
	label values bthgrp2f BTHGRP1A ;
	label values bthgrp3a BTHGRP1A ;
	label values bthgrp3b BTHGRP1A ;
	label values bthgrp3c BTHGRP1A ;
	label values bthgrp3d BTHGRP1A ;
	label values bthgrp3e BTHGRP1A ;
	label values bthgrp3f BTHGRP1A ;
	label values bthgrp4a BTHGRP1A ;
	label values bthgrp4b BTHGRP1A ;
	label values bthgrp4c BTHGRP1A ;
	label values bthgrp4d BTHGRP1A ;
	label values bthgrp4e BTHGRP1A ;
	label values bthgrp4f BTHGRP1A ;
	label values bthgrp5a BTHGRP1A ;
	label values bthgrp5b BTHGRP1A ;
	label values bthgrp5c BTHGRP1A ;
	label values bthgrp5d BTHGRP1A ;
	label values bthgrp5e BTHGRP1A ;
	label values bthgrp5f BTHGRP1A ;
	label values frstgrp1 BTHGRP1A ;
	label values frstgrp2 BTHGRP1A ;
	label values frstgrp3 BTHGRP1A ;
	label values frstgrp4 BTHGRP1A ;
	label values frstgrp5 BTHGRP1A ;
	label values whoelse1 OTHHOME ;
	label values whoelse2 OTHHOME ;
	label values whoelse3 OTHHOME ;
	label values whoelse4 OTHHOME ;
	label values whoelse5 OTHHOME ;
	label values whoelse6 OTHHOME ;
	label values saqissp SAQISSP ;
	label values saqsex SAQSEX ;
	label values saqgene SAQGENE ;
	label values intid VIGVERSN ;
	label values feeused FEEUSED ;
	label values feelevel FEELEVEL ;
	label values lngthinv LNGTHINV ;
	label values intage INTAGE ;
	label values easyget EASYGET ;
	label values intethn INTETHN ;
	label values mode MODE ;
	label values intsex INTSEX ;
	label values intyrs INTYRS ;
	label values CONSENT CONSENT ;
	label values pilloky OWNTHING ;
	label values popespky POPESPKY ;
	label values polhitoy GIVEARTS ;
	label values letdie1y GIVEARTS ;
	label values ballot BALLOT ;
	label values issp ISSP ;
	label values sampcode VIGVERSN ;
	label values sample SAMPLE ;
	label values phase PHASE ;
	label values spanself SPANSELF ;
	label values spanint SPANINT ;
	label values spaneng SPANENG ;
	label values RES2006 RES2006 ;
	label values RES2008 RES2006 ;
	label values RES2010 RES2006 ;
	label values RES2012 RES2012 ;
	label values cshutyp06 CSHUTYP0 ;
	label values CSHUTYP08 CSHUTYP0 ;
	label values CSHUTYP10 CSHUTYP0 ;
	label values CSHUTYP12 V5614_A ;


/* Missing Values */

/* Be aware that Stata may alter the data by replacing data values with missing values.
   To continue, simply uncomment this section before running the script.

replace wrkstat = . wrkstat == 0 | wrkstat == 9 ;
replace hrs1 = . hrs1 == -1 | hrs1 == 98 | hrs1 == 99 ;
replace hrs2 = . hrs2 == -1 | hrs2 == 98 | hrs2 == 99 ;
replace evwork = . evwork == 0 | evwork == 8 | evwork == 9 ;
replace occ = . occ == 0 ;
replace prestige = . prestige == 0 ;
replace wrkslf = . wrkslf == 0 | wrkslf == 8 | wrkslf == 9 ;
replace wrkgovt = . wrkgovt == 0 | wrkgovt == 8 | wrkgovt == 9 ;
replace commute = . commute == -1 | commute == 98 | commute == 99 ;
replace industry = . industry == 0 ;
replace occ80 = . occ80 == 0 | occ80 == 998 | occ80 == 999 ;
replace prestg80 = . prestg80 == 0 ;
replace indus80 = . indus80 == 0 | indus80 == 998 | indus80 == 999 ;
replace indus07 = . indus07 == 0 | indus07 == 999999 ;
replace occonet = . occonet == 0 | occonet == 999999 ;
replace OCC10 = . OCC10 == 0 | OCC10 == 9998 | OCC10 == 9999 ;
replace prestg10 = . prestg10 == 0 ;
replace prestg105plus = . prestg105plus == 0 ;
replace INDUS10 = . INDUS10 == 0 | INDUS10 == 9998 | INDUS10 == 9999 ;
replace marital = . marital == 9 ;
replace martype = . martype == 0 ;
replace agewed = . agewed == 0 | agewed == 98 | agewed == 99 ;
replace divorce = . divorce == 0 | divorce == 8 | divorce == 9 ;
replace widowed = . widowed == 0 | widowed == 8 | widowed == 9 ;
replace spwrksta = . spwrksta == 0 | spwrksta == 9 ;
replace sphrs1 = . sphrs1 == -1 | sphrs1 == 98 | sphrs1 == 99 ;
replace sphrs2 = . sphrs2 == -1 | sphrs2 == 98 | sphrs2 == 99 ;
replace spevwork = . spevwork == 0 | spevwork == 8 | spevwork == 9 ;
replace spocc = . spocc == 0 ;
replace sppres = . sppres == 0 ;
replace spwrkslf = . spwrkslf == 0 | spwrkslf == 8 | spwrkslf == 9 ;
replace spind = . spind == 0 ;
replace spocc80 = . spocc80 == 0 | spocc80 == 998 | spocc80 == 999 ;
replace sppres80 = . sppres80 == 0 ;
replace spind80 = . spind80 == 0 | spind80 == 998 | spind80 == 999 ;
replace SPOCC10 = . SPOCC10 == 0 | SPOCC10 == 9998 | SPOCC10 == 9999 ;
replace sppres10 = . sppres10 == 0 ;
replace sppres105plus = . sppres105plus == 0 ;
replace SPIND10 = . SPIND10 == 0 | SPIND10 == 9998 | SPIND10 == 9999 ;
replace paocc16 = . paocc16 >= 990 && paocc16 <= 999 | paocc16 == 0 ;
replace papres16 = . papres16 == 0 ;
replace pawrkslf = . pawrkslf == 0 | pawrkslf == 8 | pawrkslf == 9 ;
replace paind16 = . paind16 == 0 ;
replace paocc80 = . paocc80 == 0 | paocc80 == 998 | paocc80 == 999 ;
replace papres80 = . papres80 == 0 ;
replace paind80 = . paind80 == 0 | paind80 == 998 | paind80 == 999 ;
replace PAOCC10 = . PAOCC10 == 0 | PAOCC10 == 9998 | PAOCC10 == 9999 ;
replace papres10 = . papres10 == 0 ;
replace papres105plus = . papres105plus == 0 ;
replace PAIND10 = . PAIND10 == 0 | PAIND10 == 9998 | PAIND10 == 9999 ;
replace maocc80 = . maocc80 == 0 | maocc80 == 998 | maocc80 == 999 ;
replace mapres80 = . mapres80 == 0 ;
replace mawrkslf = . mawrkslf == 0 | mawrkslf == 8 | mawrkslf == 9 ;
replace maind80 = . maind80 == 0 | maind80 == 998 | maind80 == 999 ;
replace MAOCC10 = . MAOCC10 == 0 | MAOCC10 == 9998 | MAOCC10 == 9999 ;
replace mapres10 = . mapres10 == 0 ;
replace mapres105plus = . mapres105plus == 0 ;
replace MAIND10 = . MAIND10 == 0 | MAIND10 == 9998 | MAIND10 == 9999 ;
replace sibs = . sibs == -1 | sibs == 98 | sibs == 99 ;
replace childs = . childs == 9 ;
replace age = . age == 0 | age == 98 | age == 99 ;
replace agekdbrn = . agekdbrn == 0 | agekdbrn == 98 | agekdbrn == 99 ;
replace educ = . educ == 97 | educ == 98 | educ == 99 ;
replace paeduc = . paeduc == 97 | paeduc == 98 | paeduc == 99 ;
replace maeduc = . maeduc == 97 | maeduc == 98 | maeduc == 99 ;
replace speduc = . speduc == 97 | speduc == 98 | speduc == 99 ;
replace degree = . degree == 7 | degree == 8 | degree == 9 ;
replace padeg = . padeg == 7 | padeg == 8 | padeg == 9 ;
replace madeg = . madeg == 7 | madeg == 8 | madeg == 9 ;
replace spdeg = . spdeg == 7 | spdeg == 8 | spdeg == 9 ;
replace major1 = . major1 == 0 | major1 == 98 | major1 == 99 ;
replace major2 = . major2 == 0 | major2 == 98 | major2 == 99 ;
replace DIPGED = . DIPGED == 0 | DIPGED == 8 | DIPGED == 9 ;
replace SPDIPGED = . SPDIPGED == 0 | SPDIPGED == 8 | SPDIPGED == 9 ;
replace whenhs = . whenhs == 0 | whenhs == 9998 | whenhs == 9999 ;
replace whencol = . whencol == 0 | whencol == 9998 | whencol == 9999 ;
replace sector = . sector == -1 | sector == 99 ;
replace eftotlt = . eftotlt == -1 | eftotlt == 9 ;
replace barate = . barate == -1 | barate == 9 ;
replace gradtounder = . gradtounder == -1 | gradtounder == 9 ;
replace VOEDCOL = . VOEDCOL == 0 | VOEDCOL == 8 | VOEDCOL == 9 ;
replace VOEDNME1 = . VOEDNME1 == 0 | VOEDNME1 == 98 | VOEDNME1 == 99 ;
replace VOEDNCOL = . VOEDNCOL == 0 | VOEDNCOL == 8 | VOEDNCOL == 9 ;
replace VOEDNME2 = . VOEDNME2 == 0 | VOEDNME2 == 98 | VOEDNME2 == 99 ;
replace spsector = . spsector == -1 | spsector == 99 ;
replace speftotlt = . speftotlt == -1 | speftotlt == 9 ;
replace spbarate = . spbarate == -1 | spbarate == 9 ;
replace spgradtounder = . spgradtounder == -1 | spgradtounder == 9 ;
replace sex = . sex == 0 ;
replace race = . race == 0 ;
replace res16 = . res16 == 0 | res16 == 8 | res16 == 9 ;
replace mobile16 = . mobile16 == 0 | mobile16 == 8 | mobile16 == 9 ;
replace family16 = . family16 == -1 | family16 == 9 ;
replace famdif16 = . famdif16 == 0 | famdif16 == 8 | famdif16 == 9 ;
replace mawork = . mawork == 0 | mawork == 8 | mawork == 9 ;
replace mawkbaby = . mawkbaby == 0 | mawkbaby == 8 | mawkbaby == 9 ;
replace mawkborn = . mawkborn == 0 | mawkborn == 8 | mawkborn == 9 ;
replace mawk16 = . mawk16 == 0 | mawk16 == 8 | mawk16 == 9 ;
replace mawrkgrw = . mawrkgrw == 0 | mawrkgrw == 8 | mawrkgrw == 9 ;
replace incom16 = . incom16 >= 7 && incom16 <= 2147483647 | incom16 == -1 ;
replace born = . born == 0 | born == 8 | born == 9 ;
replace parborn = . parborn == -1 | parborn == 9 ;
replace granborn = . granborn == -1 | granborn == 8 | granborn == 9 ;
replace hompop = . hompop == 0 | hompop == 98 | hompop == 99 ;
replace babies = . babies == 9 ;
replace preteen = . preteen == 9 ;
replace teens = . teens == 9 ;
replace adults = . adults == 9 ;
replace unrelat = . unrelat == -1 | unrelat == 9 ;
replace earnrs = . earnrs == 9 ;
replace income = . income >= 13 && income <= 99 | income == 0 ;
replace rincome = . rincome >= 13 && rincome <= 99 | rincome == 0 ;
replace income72 = . income72 >= 13 && income72 <= 99 | income72 == 0 ;
replace income77 = . income77 >= 17 && income77 <= 99 | income77 == 0 ;
replace rincom77 = . rincom77 >= 17 && rincom77 <= 99 | rincom77 == 0 ;
replace income82 = . income82 >= 18 && income82 <= 99 | income82 == 0 ;
replace rincom82 = . rincom82 >= 18 && rincom82 <= 99 | rincom82 == 0 ;
replace income86 = . income86 >= 21 && income86 <= 99 | income86 == 0 ;
replace rincom86 = . rincom86 >= 21 && rincom86 <= 99 | rincom86 == 0 ;
replace income91 = . income91 >= 22 && income91 <= 99 | income91 == 0 ;
replace rincom91 = . rincom91 >= 22 && rincom91 <= 99 | rincom91 == 0 ;
replace income98 = . income98 >= 24 && income98 <= 99 | income98 == 0 ;
replace rincom98 = . rincom98 >= 24 && rincom98 <= 99 | rincom98 == 0 ;
replace income06 = . income06 >= 26 && income06 <= 99 | income06 == 0 ;
replace rincom06 = . rincom06 >= 26 && rincom06 <= 99 | rincom06 == 0 ;
replace region = . region == 0 ;
replace xnorcsiz = . xnorcsiz == 0 ;
replace srcbelt = . srcbelt == 0 ;
replace size = . size == -1 ;
replace dotdata = . dotdata == -1 ;
replace dotpeop = . dotpeop == -1 ;
replace dotthng = . dotthng == -1 ;
replace dotged = . dotged == -1 ;
replace dotsvp = . dotsvp == -1 ;
replace dotpres = . dotpres == -1 ;
replace spdotdat = . spdotdat == -1 ;
replace spdotpeo = . spdotpeo == -1 ;
replace spdotthn = . spdotthn == -1 ;
replace spdotged = . spdotged == -1 ;
replace spdotsvp = . spdotsvp == -1 ;
replace spdotpre = . spdotpre == -1 ;
replace padotdat = . padotdat == -1 ;
replace padotpeo = . padotpeo == -1 ;
replace padotthn = . padotthn == -1 ;
replace padotged = . padotged == -1 ;
replace padotsvp = . padotsvp == -1 ;
replace padotpre = . padotpre == -1 ;
replace partyid = . partyid == 8 | partyid == 9 ;
replace vote68 = . vote68 == 0 | vote68 == 8 | vote68 == 9 ;
replace pres68 = . pres68 == 0 | pres68 == 8 | pres68 == 9 ;
replace if68who = . if68who == 0 | if68who == 8 | if68who == 9 ;
replace vote72 = . vote72 == 0 | vote72 == 8 | vote72 == 9 ;
replace pres72 = . pres72 == 0 | pres72 == 8 | pres72 == 9 ;
replace if72who = . if72who == 0 | if72who == 8 | if72who == 9 ;
replace vote76 = . vote76 == 0 | vote76 == 8 | vote76 == 9 ;
replace pres76 = . pres76 == 0 | pres76 == 8 | pres76 == 9 ;
replace if76who = . if76who == 0 | if76who == 8 | if76who == 9 ;
replace vote80 = . vote80 == 0 | vote80 == 8 | vote80 == 9 ;
replace pres80 = . pres80 == 0 | pres80 == 8 | pres80 == 9 ;
replace if80who = . if80who == 0 | if80who == 8 | if80who == 9 ;
replace vote84 = . vote84 == 0 | vote84 == 8 | vote84 == 9 ;
replace pres84 = . pres84 == 0 | pres84 == 8 | pres84 == 9 ;
replace if84who = . if84who == 0 | if84who == 8 | if84who == 9 ;
replace vote88 = . vote88 == 0 | vote88 == 8 | vote88 == 9 ;
replace pres88 = . pres88 == 0 | pres88 == 8 | pres88 == 9 ;
replace if88who = . if88who == 0 | if88who == 8 | if88who == 9 ;
replace vote92 = . vote92 == 0 | vote92 == 8 | vote92 == 9 ;
replace pres92 = . pres92 == 0 | pres92 == 8 | pres92 == 9 ;
replace if92who = . if92who == 0 | if92who == 8 | if92who == 9 ;
replace vote96 = . vote96 == 0 | vote96 == 8 | vote96 == 9 ;
replace pres96 = . pres96 == 0 | pres96 == 8 | pres96 == 9 ;
replace if96who = . if96who == 0 | if96who == 8 | if96who == 9 ;
replace vote00 = . vote00 == 0 | vote00 == 8 | vote00 == 9 ;
replace pres00 = . pres00 == 0 | pres00 == 8 | pres00 == 9 ;
replace if00who = . if00who == 0 | if00who == 8 | if00who == 9 ;
replace vote04 = . vote04 == 0 | vote04 == 8 | vote04 == 9 ;
replace pres04 = . pres04 == 0 | pres04 == 8 | pres04 == 9 ;
replace if04who = . if04who == 0 | if04who == 8 | if04who == 9 ;
replace VOTE08 = . VOTE08 == 0 | VOTE08 == 8 | VOTE08 == 9 ;
replace PRES08 = . PRES08 == 0 | PRES08 == 8 | PRES08 == 9 ;
replace IF08WHO = . IF08WHO == 0 | IF08WHO == 8 | IF08WHO == 9 ;
replace VOTE12 = . VOTE12 == 0 | VOTE12 == 8 | VOTE12 == 9 ;
replace PRES12 = . PRES12 == 0 | PRES12 == 8 | PRES12 == 9 ;
replace IF12WHO = . IF12WHO == 0 | IF12WHO == 8 | IF12WHO == 9 ;
replace polviews = . polviews == 0 | polviews == 8 | polviews == 9 ;
replace polviewy = . polviewy >= 8 && polviewy <= 2147483647 | polviewy == -1 ;
replace polviewx = . polviewx == 0 | polviewx == 98 | polviewx == 99 ;
replace natspac = . natspac == 0 | natspac == 8 | natspac == 9 ;
replace natenvir = . natenvir == 0 | natenvir == 8 | natenvir == 9 ;
replace natheal = . natheal == 0 | natheal == 8 | natheal == 9 ;
replace natcity = . natcity == 0 | natcity == 8 | natcity == 9 ;
replace natcrime = . natcrime == 0 | natcrime == 8 | natcrime == 9 ;
replace natdrug = . natdrug == 0 | natdrug == 8 | natdrug == 9 ;
replace nateduc = . nateduc == 0 | nateduc == 8 | nateduc == 9 ;
replace natrace = . natrace == 0 | natrace == 8 | natrace == 9 ;
replace natarms = . natarms == 0 | natarms == 8 | natarms == 9 ;
replace nataid = . nataid == 0 | nataid == 8 | nataid == 9 ;
replace natfare = . natfare == 0 | natfare == 8 | natfare == 9 ;
replace natroad = . natroad == 0 | natroad == 8 | natroad == 9 ;
replace natsoc = . natsoc == 0 | natsoc == 8 | natsoc == 9 ;
replace natmass = . natmass == 0 | natmass == 8 | natmass == 9 ;
replace natpark = . natpark == 0 | natpark == 8 | natpark == 9 ;
replace natchld = . natchld == 0 | natchld == 8 | natchld == 9 ;
replace natsci = . natsci == 0 | natsci == 8 | natsci == 9 ;
replace NATENRGY = . NATENRGY == 0 | NATENRGY == 8 | NATENRGY == 9 ;
replace natspacy = . natspacy == 0 | natspacy == 8 | natspacy == 9 ;
replace natenviy = . natenviy == 0 | natenviy == 8 | natenviy == 9 ;
replace nathealy = . nathealy == 0 | nathealy == 8 | nathealy == 9 ;
replace natcityy = . natcityy == 0 | natcityy == 8 | natcityy == 9 ;
replace natcrimy = . natcrimy == 0 | natcrimy == 8 | natcrimy == 9 ;
replace natdrugy = . natdrugy == 0 | natdrugy == 8 | natdrugy == 9 ;
replace nateducy = . nateducy == 0 | nateducy == 8 | nateducy == 9 ;
replace natracey = . natracey == 0 | natracey == 8 | natracey == 9 ;
replace natarmsy = . natarmsy == 0 | natarmsy == 8 | natarmsy == 9 ;
replace nataidy = . nataidy == 0 | nataidy == 8 | nataidy == 9 ;
replace natfarey = . natfarey == 0 | natfarey == 8 | natfarey == 9 ;
replace natspacz = . natspacz == 0 | natspacz == 8 | natspacz == 9 ;
replace natenviz = . natenviz == 0 | natenviz == 8 | natenviz == 9 ;
replace nathealz = . nathealz == 0 | nathealz == 8 | nathealz == 9 ;
replace natcityz = . natcityz == 0 | natcityz == 8 | natcityz == 9 ;
replace natcrimz = . natcrimz == 0 | natcrimz == 8 | natcrimz == 9 ;
replace natdrugz = . natdrugz == 0 | natdrugz == 8 | natdrugz == 9 ;
replace nateducz = . nateducz == 0 | nateducz == 8 | nateducz == 9 ;
replace natracez = . natracez == 0 | natracez == 8 | natracez == 9 ;
replace natarmsz = . natarmsz == 0 | natarmsz == 8 | natarmsz == 9 ;
replace nataidz = . nataidz == 0 | nataidz == 8 | nataidz == 9 ;
replace natfarez = . natfarez == 0 | natfarez == 8 | natfarez == 9 ;
replace natroadz = . natroadz == 0 | natroadz == 8 | natroadz == 9 ;
replace natsocz = . natsocz == 0 | natsocz == 8 | natsocz == 9 ;
replace natmassz = . natmassz == 0 | natmassz == 8 | natmassz == 9 ;
replace natparkz = . natparkz == 0 | natparkz == 8 | natparkz == 9 ;
replace equal1 = . equal1 == 0 | equal1 == 8 | equal1 == 9 ;
replace equal2 = . equal2 == 0 | equal2 == 8 | equal2 == 9 ;
replace equal3 = . equal3 == 0 | equal3 == 8 | equal3 == 9 ;
replace equal4 = . equal4 == 0 | equal4 == 8 | equal4 == 9 ;
replace equal5 = . equal5 == 0 | equal5 == 8 | equal5 == 9 ;
replace equal6 = . equal6 == 0 | equal6 == 8 | equal6 == 9 ;
replace equal7 = . equal7 == 0 | equal7 == 8 | equal7 == 9 ;
replace equal8 = . equal8 == 0 | equal8 == 8 | equal8 == 9 ;
replace usclass1 = . usclass1 == 0 | usclass1 == 8 | usclass1 == 9 ;
replace usclass2 = . usclass2 == 0 | usclass2 == 8 | usclass2 == 9 ;
replace usclass3 = . usclass3 == 0 | usclass3 == 8 | usclass3 == 9 ;
replace usclass4 = . usclass4 == 0 | usclass4 == 8 | usclass4 == 9 ;
replace usclass5 = . usclass5 == 0 | usclass5 == 8 | usclass5 == 9 ;
replace usclass6 = . usclass6 == 0 | usclass6 == 8 | usclass6 == 9 ;
replace usclass7 = . usclass7 == 0 | usclass7 == 8 | usclass7 == 9 ;
replace usclass8 = . usclass8 == 0 | usclass8 == 8 | usclass8 == 9 ;
replace educop = . educop == 0 | educop == 8 | educop == 9 ;
replace govcare = . govcare == 0 | govcare == 8 | govcare == 9 ;
replace eqwlth = . eqwlth == 0 | eqwlth == 8 | eqwlth == 9 ;
replace eqwlthy = . eqwlthy == 0 | eqwlthy == 8 | eqwlthy == 9 ;
replace tax = . tax == 0 | tax == 8 | tax == 9 ;
replace spkath = . spkath == 0 | spkath == 8 | spkath == 9 ;
replace colath = . colath == 0 | colath == 8 | colath == 9 ;
replace libath = . libath == 0 | libath == 8 | libath == 9 ;
replace spksoc = . spksoc == 0 | spksoc == 8 | spksoc == 9 ;
replace colsoc = . colsoc == 0 | colsoc == 8 | colsoc == 9 ;
replace libsoc = . libsoc == 0 | libsoc == 8 | libsoc == 9 ;
replace spkrac = . spkrac == 0 | spkrac == 8 | spkrac == 9 ;
replace colrac = . colrac == 0 | colrac == 8 | colrac == 9 ;
replace librac = . librac == 0 | librac == 8 | librac == 9 ;
replace spkcom = . spkcom == 0 | spkcom == 8 | spkcom == 9 ;
replace colcom = . colcom == 0 | colcom == 8 | colcom == 9 ;
replace libcom = . libcom == 0 | libcom == 8 | libcom == 9 ;
replace spkmil = . spkmil == 0 | spkmil == 8 | spkmil == 9 ;
replace colmil = . colmil == 0 | colmil == 8 | colmil == 9 ;
replace libmil = . libmil == 0 | libmil == 8 | libmil == 9 ;
replace spkhomo = . spkhomo == 0 | spkhomo == 8 | spkhomo == 9 ;
replace colhomo = . colhomo == 0 | colhomo == 8 | colhomo == 9 ;
replace libhomo = . libhomo == 0 | libhomo == 8 | libhomo == 9 ;
replace SPKMSLM = . SPKMSLM == 0 | SPKMSLM == 8 | SPKMSLM == 9 ;
replace COLMSLM = . COLMSLM == 0 | COLMSLM == 8 | COLMSLM == 9 ;
replace LIBMSLM = . LIBMSLM == 0 | LIBMSLM == 8 | LIBMSLM == 9 ;
replace cappun2 = . cappun2 == 0 | cappun2 == 8 | cappun2 == 9 ;
replace cappun = . cappun == 0 | cappun == 8 | cappun == 9 ;
replace capimp = . capimp == 0 | capimp == 8 | capimp == 9 ;
replace capinfo = . capinfo == 0 | capinfo == 8 | capinfo == 9 ;
replace capfirm = . capfirm == 0 | capfirm == 8 | capfirm == 9 ;
replace gunlaw = . gunlaw == 0 | gunlaw == 8 | gunlaw == 9 ;
replace gunimp = . gunimp == 0 | gunimp == 8 | gunimp == 9 ;
replace guninfo = . guninfo == 0 | guninfo == 8 | guninfo == 9 ;
replace gunfirm = . gunfirm == 0 | gunfirm == 8 | gunfirm == 9 ;
replace courts = . courts == 0 | courts == 8 | courts == 9 ;
replace courtsy = . courtsy == 0 | courtsy == 8 | courtsy == 9 ;
replace crimimp = . crimimp == 0 | crimimp == 8 | crimimp == 9 ;
replace criminfo = . criminfo == 0 | criminfo == 8 | criminfo == 9 ;
replace crimfirm = . crimfirm == 0 | crimfirm == 8 | crimfirm == 9 ;
replace lawimp = . lawimp == 0 | lawimp == 8 | lawimp == 9 ;
replace lawinfo = . lawinfo == 0 | lawinfo == 8 | lawinfo == 9 ;
replace lawfirm = . lawfirm == 0 | lawfirm == 8 | lawfirm == 9 ;
replace wirtap = . wirtap == 0 | wirtap == 8 | wirtap == 9 ;
replace grass = . grass == 0 | grass == 8 | grass == 9 ;
replace grassy = . grassy == 0 | grassy == 8 | grassy == 9 ;
replace relig = . relig == 0 | relig == 98 | relig == 99 ;
replace denom = . denom == 0 | denom == 98 | denom == 99 ;
replace other = . other == 0 | other == 998 | other == 999 ;
replace OTHJEW = . OTHJEW == 0 | OTHJEW == 8 | OTHJEW == 9 ;
replace jew = . jew == 0 | jew == 8 | jew == 9 ;
replace JEWAJ = . JEWAJ == 0 | JEWAJ == 8 | JEWAJ == 9 ;
replace fund = . fund == 0 | fund == 8 | fund == 9 ;
replace attend = . attend == -1 | attend == 9 ;
replace maattend = . maattend == -1 | maattend == 9 ;
replace paattend = . paattend == -1 | paattend == 9 ;
replace spattend = . spattend == -1 | spattend == 9 ;
replace reliten = . reliten == 0 | reliten == 8 | reliten == 9 ;
replace relitena = . relitena == 0 | relitena == 8 | relitena == 9 ;
replace postlife = . postlife == 0 | postlife == 8 | postlife == 9 ;
replace postlf1 = . postlf1 == 0 | postlf1 == 8 | postlf1 == 9 ;
replace postlf2 = . postlf2 == 0 | postlf2 == 8 | postlf2 == 9 ;
replace postlf3 = . postlf3 == 0 | postlf3 == 8 | postlf3 == 9 ;
replace postlf4 = . postlf4 == 0 | postlf4 == 8 | postlf4 == 9 ;
replace postlf5 = . postlf5 == 0 | postlf5 == 8 | postlf5 == 9 ;
replace postlf6 = . postlf6 == 0 | postlf6 == 8 | postlf6 == 9 ;
replace postlf7 = . postlf7 == 0 | postlf7 == 8 | postlf7 == 9 ;
replace postlf8 = . postlf8 == 0 | postlf8 == 8 | postlf8 == 9 ;
replace postlf9 = . postlf9 == 0 | postlf9 == 8 | postlf9 == 9 ;
replace postlf10 = . postlf10 == 0 | postlf10 == 8 | postlf10 == 9 ;
replace likediff = . likediff == 0 | likediff == 8 | likediff == 9 ;
replace mindbody = . mindbody == 0 | mindbody == 8 | mindbody == 9 ;
replace restact = . restact == 0 | restact == 8 | restact == 9 ;
replace palefull = . palefull == 0 | palefull == 8 | palefull == 9 ;
replace pray = . pray == 0 | pray == 8 | pray == 9 ;
replace dejavu = . dejavu == 0 | dejavu == 8 | dejavu == 9 ;
replace esp = . esp == 0 | esp == 8 | esp == 9 ;
replace visions = . visions == 0 | visions == 8 | visions == 9 ;
replace spirits = . spirits == 0 | spirits == 8 | spirits == 9 ;
replace grace = . grace == 0 | grace == 8 | grace == 9 ;
replace neargod = . neargod == 0 | neargod == 8 | neargod == 9 ;
replace judge = . judge == 0 | judge == 8 | judge == 9 ;
replace redeemer = . redeemer == 0 | redeemer == 8 | redeemer == 9 ;
replace lover = . lover == 0 | lover == 8 | lover == 9 ;
replace master = . master == 0 | master == 8 | master == 9 ;
replace mother = . mother == 0 | mother == 8 | mother == 9 ;
replace creator = . creator == 0 | creator == 8 | creator == 9 ;
replace father = . father == 0 | father == 8 | father == 9 ;
replace spouse = . spouse == 0 | spouse == 8 | spouse == 9 ;
replace friend = . friend == 0 | friend == 8 | friend == 9 ;
replace king = . king == 0 | king == 8 | king == 9 ;
replace liberatr = . liberatr == 0 | liberatr == 8 | liberatr == 9 ;
replace healer = . healer == 0 | healer == 8 | healer == 9 ;
replace mapa = . mapa == 0 | mapa == 8 | mapa == 9 ;
replace mastersp = . mastersp == 0 | mastersp == 8 | mastersp == 9 ;
replace judgeluv = . judgeluv == 0 | judgeluv == 8 | judgeluv == 9 ;
replace frndking = . frndking == 0 | frndking == 8 | frndking == 9 ;
replace crtrheal = . crtrheal == 0 | crtrheal == 8 | crtrheal == 9 ;
replace rdeemlib = . rdeemlib == 0 | rdeemlib == 8 | rdeemlib == 9 ;
replace popespks = . popespks == 0 | popespks == 8 | popespks == 9 ;
replace relig16 = . relig16 == 0 | relig16 == 98 | relig16 == 99 ;
replace denom16 = . denom16 == 0 | denom16 == 98 | denom16 == 99 ;
replace oth16 = . oth16 == 0 | oth16 == 998 | oth16 == 999 ;
replace OTHJEW16 = . OTHJEW16 == 0 | OTHJEW16 == 8 | OTHJEW16 == 9 ;
replace jew16 = . jew16 == 0 | jew16 == 8 | jew16 == 9 ;
replace JEW16AJ = . JEW16AJ == 0 | JEW16AJ == 8 | JEW16AJ == 9 ;
replace fund16 = . fund16 == 0 | fund16 == 8 | fund16 == 9 ;
replace sprel = . sprel == 0 | sprel == 98 | sprel == 99 ;
replace spden = . spden == 0 | spden == 98 | spden == 99 ;
replace spother = . spother == 0 | spother == 998 | spother == 999 ;
replace SPOTHJEW = . SPOTHJEW == 0 | SPOTHJEW == 8 | SPOTHJEW == 9 ;
replace spjew = . spjew == 0 | spjew == 8 | spjew == 9 ;
replace spfund = . spfund == 0 | spfund == 8 | spfund == 9 ;
replace sprel16 = . sprel16 == 0 | sprel16 == 8 | sprel16 == 9 ;
replace spden16 = . spden16 == 0 | spden16 == 98 | spden16 == 99 ;
replace spoth16 = . spoth16 == 0 | spoth16 == 998 | spoth16 == 999 ;
replace spjew16 = . spjew16 == 0 | spjew16 == 8 | spjew16 == 9 ;
replace spfund16 = . spfund16 == 0 | spfund16 == 8 | spfund16 == 9 ;
replace tithing = . tithing == -1 | tithing == 99998 | tithing == 99999 ;
replace prayer = . prayer == 0 | prayer == 8 | prayer == 9 ;
replace prayery = . prayery == 0 | prayery == 8 | prayery == 9 ;
replace prayerx = . prayerx == 0 | prayerx == 8 | prayerx == 9 ;
replace bible = . bible == 0 | bible == 8 | bible == 9 ;
replace bibley = . bibley == 0 | bibley == 8 | bibley == 9 ;
replace world1 = . world1 == 0 | world1 == 8 | world1 == 9 ;
replace world2 = . world2 == 0 | world2 == 8 | world2 == 9 ;
replace world3 = . world3 == 0 | world3 == 8 | world3 == 9 ;
replace world4 = . world4 == 0 | world4 == 8 | world4 == 9 ;
replace world5 = . world5 == 0 | world5 == 8 | world5 == 9 ;
replace world6 = . world6 == 0 | world6 == 8 | world6 == 9 ;
replace world7 = . world7 == 0 | world7 == 8 | world7 == 9 ;
replace libtemp = . libtemp == -1 | libtemp == 998 | libtemp == 999 ;
replace contemp = . contemp == -1 | contemp == 998 | contemp == 999 ;
replace prottemp = . prottemp == -1 | prottemp == 998 | prottemp == 999 ;
replace cathtemp = . cathtemp == -1 | cathtemp == 998 | cathtemp == 999 ;
replace jewtemp = . jewtemp == -1 | jewtemp == 998 | jewtemp == 999 ;
replace mslmtemp = . mslmtemp == -1 | mslmtemp == 998 | mslmtemp == 999 ;
replace fepriest = . fepriest == 0 | fepriest == 8 | fepriest == 9 ;
replace feclergy = . feclergy == 0 | feclergy == 8 | feclergy == 9 ;
replace relgrade = . relgrade == 0 | relgrade == 8 | relgrade == 9 ;
replace racmar = . racmar == 0 | racmar == 8 | racmar == 9 ;
replace racmar10 = . racmar10 == 0 | racmar10 == 8 | racmar10 == 9 ;
replace racdin = . racdin == 0 | racdin == 8 | racdin == 9 ;
replace racpush = . racpush == 0 | racpush == 8 | racpush == 9 ;
replace racseg = . racseg == 0 | racseg == 8 | racseg == 9 ;
replace racopen = . racopen == 0 | racopen == 8 | racopen == 9 ;
replace raclive = . raclive == 0 | raclive == 8 | raclive == 9 ;
replace racclos = . racclos == 0 | racclos == 8 | racclos == 9 ;
replace racdis = . racdis == 0 | racdis == 8 | racdis == 9 ;
replace racinteg = . racinteg == 0 | racinteg == 8 | racinteg == 9 ;
replace racobjct = . racobjct == 0 | racobjct == 8 | racobjct == 9 ;
replace rachome = . rachome == 0 | rachome == 8 | rachome == 9 ;
replace racschol = . racschol == 0 | racschol == 8 | racschol == 9 ;
replace racfew = . racfew == 0 | racfew == 8 | racfew == 9 ;
replace rachaf = . rachaf == 0 | rachaf == 8 | rachaf == 9 ;
replace racmost = . racmost == 0 | racmost == 8 | racmost == 9 ;
replace busing = . busing == 0 | busing == 8 | busing == 9 ;
replace busing10 = . busing10 == 0 | busing10 == 8 | busing10 == 9 ;
replace racpres = . racpres == 0 | racpres == 8 | racpres == 9 ;
replace racjob = . racjob == 0 | racjob == 8 | racjob == 9 ;
replace racchurh = . racchurh >= 3 && racchurh <= 2147483647 | racchurh == 0 ;
replace color = . color == 0 | color == 8 | color == 9 ;
replace racname = . racname == 0 | racname == 8 | racname == 9 ;
replace rachisch = . rachisch == -1 | rachisch == 8 | rachisch == 9 ;
replace racmix = . racmix == 0 | racmix == 8 | racmix == 9 ;
replace racneigh = . racneigh == 0 | racneigh == 8 | racneigh == 9 ;
replace racnobuy = . racnobuy == 0 | racnobuy == 8 | racnobuy == 9 ;
replace ractrust = . ractrust == 0 | ractrust == 8 | ractrust == 9 ;
replace racparty = . racparty == 0 | racparty == 8 | racparty == 9 ;
replace racocc = . racocc == 0 | racocc == 8 | racocc == 9 ;
replace racinc = . racinc == 0 | racinc == 8 | racinc == 9 ;
replace racopnow = . racopnow == 0 | racopnow == 8 | racopnow == 9 ;
replace racopwil = . racopwil == 0 | racopwil == 8 | racopwil == 9 ;
replace racimp = . racimp == 0 | racimp == 8 | racimp == 9 ;
replace racinfo = . racinfo == 0 | racinfo == 8 | racinfo == 9 ;
replace racfirm = . racfirm == 0 | racfirm == 8 | racfirm == 9 ;
replace raccare = . raccare == 0 | raccare == 8 | raccare == 9 ;
replace racthink = . racthink == 0 | racthink == 8 | racthink == 9 ;
replace racwrite = . racwrite == 0 | racwrite == 8 | racwrite == 9 ;
replace racgive = . racgive == 0 | racgive == 8 | racgive == 9 ;
replace racjoin = . racjoin == 0 | racjoin == 8 | racjoin == 9 ;
replace affrmact = . affrmact == 0 | affrmact == 8 | affrmact == 9 ;
replace wrkwayup = . wrkwayup == 0 | wrkwayup == 8 | wrkwayup == 9 ;
replace blksimp = . blksimp == 0 | blksimp == 8 | blksimp == 9 ;
replace closeblk = . closeblk == 0 | closeblk == 98 | closeblk == 99 ;
replace closewht = . closewht == 0 | closewht == 98 | closewht == 99 ;
replace alienat1 = . alienat1 == 0 | alienat1 == 8 | alienat1 == 9 ;
replace alienat2 = . alienat2 == 0 | alienat2 == 8 | alienat2 == 9 ;
replace alienat3 = . alienat3 == 0 | alienat3 == 8 | alienat3 == 9 ;
replace alienat4 = . alienat4 == 0 | alienat4 == 8 | alienat4 == 9 ;
replace alienat5 = . alienat5 == 0 | alienat5 == 8 | alienat5 == 9 ;
replace alienat6 = . alienat6 == 0 | alienat6 == 8 | alienat6 == 9 ;
replace happy = . happy == 0 | happy == 8 | happy == 9 ;
replace hapmar = . hapmar == 0 | hapmar == 8 | hapmar == 9 ;
replace HAPCOHAB = . HAPCOHAB == 0 | HAPCOHAB == 8 | HAPCOHAB == 9 ;
replace health = . health == 0 | health == 8 | health == 9 ;
replace life = . life == 0 | life == 8 | life == 9 ;
replace helpful = . helpful == 0 | helpful == 8 | helpful == 9 ;
replace fair = . fair == 0 | fair == 8 | fair == 9 ;
replace trust = . trust == 0 | trust == 8 | trust == 9 ;
replace trusty = . trusty == 0 | trusty == 8 | trusty == 9 ;
replace satcity = . satcity == 0 | satcity == 8 | satcity == 9 ;
replace sathobby = . sathobby == 0 | sathobby == 8 | sathobby == 9 ;
replace satfam = . satfam == 0 | satfam == 8 | satfam == 9 ;
replace satfrnd = . satfrnd == 0 | satfrnd == 8 | satfrnd == 9 ;
replace sathealt = . sathealt == 0 | sathealt == 8 | sathealt == 9 ;
replace confinan = . confinan == 0 | confinan == 8 | confinan == 9 ;
replace conbus = . conbus == 0 | conbus == 8 | conbus == 9 ;
replace conclerg = . conclerg == 0 | conclerg == 8 | conclerg == 9 ;
replace coneduc = . coneduc == 0 | coneduc == 8 | coneduc == 9 ;
replace confed = . confed == 0 | confed == 8 | confed == 9 ;
replace conlabor = . conlabor == 0 | conlabor == 8 | conlabor == 9 ;
replace conpress = . conpress == 0 | conpress == 8 | conpress == 9 ;
replace conmedic = . conmedic == 0 | conmedic == 8 | conmedic == 9 ;
replace contv = . contv == 0 | contv == 8 | contv == 9 ;
replace conjudge = . conjudge == 0 | conjudge == 8 | conjudge == 9 ;
replace consci = . consci == 0 | consci == 8 | consci == 9 ;
replace conlegis = . conlegis == 0 | conlegis == 8 | conlegis == 9 ;
replace conarmy = . conarmy == 0 | conarmy == 8 | conarmy == 9 ;
replace confinay = . confinay == 0 | confinay == 8 | confinay == 9 ;
replace conbusy = . conbusy == 0 | conbusy == 8 | conbusy == 9 ;
replace conclery = . conclery == 0 | conclery == 8 | conclery == 9 ;
replace coneducy = . coneducy == 0 | coneducy == 8 | coneducy == 9 ;
replace confedy = . confedy == 0 | confedy == 8 | confedy == 9 ;
replace conlaboy = . conlaboy == 0 | conlaboy == 8 | conlaboy == 9 ;
replace conpresy = . conpresy == 0 | conpresy == 8 | conpresy == 9 ;
replace conmediy = . conmediy == 0 | conmediy == 8 | conmediy == 9 ;
replace contvy = . contvy == 0 | contvy == 8 | contvy == 9 ;
replace conjudgy = . conjudgy == 0 | conjudgy == 8 | conjudgy == 9 ;
replace consciy = . consciy == 0 | consciy == 8 | consciy == 9 ;
replace conlegiy = . conlegiy == 0 | conlegiy == 8 | conlegiy == 9 ;
replace conarmyy = . conarmyy == 0 | conarmyy == 8 | conarmyy == 9 ;
replace manners = . manners == 0 | manners == 8 | manners == 9 ;
replace success = . success == 0 | success == 8 | success == 9 ;
replace honest = . honest == 0 | honest == 8 | honest == 9 ;
replace clean = . clean == 0 | clean == 8 | clean == 9 ;
replace judgment = . judgment == 0 | judgment == 8 | judgment == 9 ;
replace control = . control == 0 | control == 8 | control == 9 ;
replace role = . role == 0 | role == 8 | role == 9 ;
replace amicable = . amicable == 0 | amicable == 8 | amicable == 9 ;
replace obeys = . obeys == 0 | obeys == 8 | obeys == 9 ;
replace responsi = . responsi == 0 | responsi == 8 | responsi == 9 ;
replace consider = . consider == 0 | consider == 8 | consider == 9 ;
replace interest = . interest == 0 | interest == 8 | interest == 9 ;
replace studious = . studious == 0 | studious == 8 | studious == 9 ;
replace mannersy = . mannersy == 0 | mannersy == 8 | mannersy == 9 ;
replace successy = . successy == 0 | successy == 8 | successy == 9 ;
replace honesty = . honesty == 0 | honesty == 8 | honesty == 9 ;
replace cleany = . cleany == 0 | cleany == 8 | cleany == 9 ;
replace judgmeny = . judgmeny == 0 | judgmeny == 8 | judgmeny == 9 ;
replace controly = . controly == 0 | controly == 8 | controly == 9 ;
replace roley = . roley == 0 | roley == 8 | roley == 9 ;
replace amicably = . amicably == 0 | amicably == 8 | amicably == 9 ;
replace obeysy = . obeysy == 0 | obeysy == 8 | obeysy == 9 ;
replace responsy = . responsy == 0 | responsy == 8 | responsy == 9 ;
replace considey = . considey == 0 | considey == 8 | considey == 9 ;
replace interesy = . interesy == 0 | interesy == 8 | interesy == 9 ;
replace studiouy = . studiouy == 0 | studiouy == 8 | studiouy == 9 ;
replace mannersz = . mannersz == 0 | mannersz == 8 | mannersz == 9 ;
replace successz = . successz == 0 | successz == 8 | successz == 9 ;
replace honestz = . honestz == 0 | honestz == 8 | honestz == 9 ;
replace cleanz = . cleanz == 0 | cleanz == 8 | cleanz == 9 ;
replace judgmenz = . judgmenz == 0 | judgmenz == 8 | judgmenz == 9 ;
replace controlz = . controlz == 0 | controlz == 8 | controlz == 9 ;
replace rolez = . rolez == 0 | rolez == 8 | rolez == 9 ;
replace amicablz = . amicablz == 0 | amicablz == 8 | amicablz == 9 ;
replace obeysz = . obeysz == 0 | obeysz == 8 | obeysz == 9 ;
replace responsz = . responsz == 0 | responsz == 8 | responsz == 9 ;
replace considez = . considez == 0 | considez == 8 | considez == 9 ;
replace interesz = . interesz == 0 | interesz == 8 | interesz == 9 ;
replace studiouz = . studiouz == 0 | studiouz == 8 | studiouz == 9 ;
replace obey = . obey == 0 | obey == 8 | obey == 9 ;
replace popular = . popular == 0 | popular == 8 | popular == 9 ;
replace thnkself = . thnkself == 0 | thnkself == 8 | thnkself == 9 ;
replace workhard = . workhard == 0 | workhard == 8 | workhard == 9 ;
replace helpoth = . helpoth == 0 | helpoth == 8 | helpoth == 9 ;
replace chldsex = . chldsex == 0 | chldsex == 8 | chldsex == 9 ;
replace chldsex1 = . chldsex1 == 0 | chldsex1 == 8 | chldsex1 == 9 ;
replace youngen = . youngen == 0 | youngen == 8 | youngen == 9 ;
replace socrel = . socrel == 0 | socrel == 8 | socrel == 9 ;
replace socommun = . socommun == 0 | socommun == 8 | socommun == 9 ;
replace socfrend = . socfrend == 0 | socfrend == 8 | socfrend == 9 ;
replace socbar = . socbar == 0 | socbar == 8 | socbar == 9 ;
replace socpars = . socpars == -1 | socpars == 8 | socpars == 9 ;
replace socsibs = . socsibs == -1 | socsibs == 8 | socsibs == 9 ;
replace aged = . aged == 0 | aged == 8 | aged == 9 ;
replace weekswrk = . weekswrk == -1 | weekswrk == 98 | weekswrk == 99 ;
replace partfull = . partfull == 0 | partfull == 8 | partfull == 9 ;
replace drink = . drink == 0 | drink == 8 | drink == 9 ;
replace drunk = . drunk == 0 | drunk == 8 | drunk == 9 ;
replace smoke = . smoke == 0 | smoke == 8 | smoke == 9 ;
replace quitsmk = . quitsmk == 0 | quitsmk == 8 | quitsmk == 9 ;
replace smokecig = . smokecig == 0 | smokecig == 8 | smokecig == 9 ;
replace cigweek = . cigweek == 0 | cigweek == 8 | cigweek == 9 ;
replace evsmoke = . evsmoke == 0 | evsmoke == 8 | evsmoke == 9 ;
replace anomia1 = . anomia1 == 0 | anomia1 == 8 | anomia1 == 9 ;
replace anomia2 = . anomia2 == 0 | anomia2 == 8 | anomia2 == 9 ;
replace anomia3 = . anomia3 == 0 | anomia3 == 8 | anomia3 == 9 ;
replace anomia4 = . anomia4 == 0 | anomia4 == 8 | anomia4 == 9 ;
replace anomia5 = . anomia5 == 0 | anomia5 == 8 | anomia5 == 9 ;
replace anomia6 = . anomia6 == 0 | anomia6 == 8 | anomia6 == 9 ;
replace anomia7 = . anomia7 == 0 | anomia7 == 8 | anomia7 == 9 ;
replace anomia8 = . anomia8 == 0 | anomia8 == 8 | anomia8 == 9 ;
replace anomia9 = . anomia9 == 0 | anomia9 == 8 | anomia9 == 9 ;
replace joblose = . joblose == 0 | joblose == 8 | joblose == 9 ;
replace jobfind = . jobfind == 0 | jobfind == 8 | jobfind == 9 ;
replace satjob = . satjob == 0 | satjob == 8 | satjob == 9 ;
replace richwork = . richwork == 0 | richwork == 8 | richwork == 9 ;
replace jobinc = . jobinc == 0 | jobinc == 8 | jobinc == 9 ;
replace jobsec = . jobsec == 0 | jobsec == 8 | jobsec == 9 ;
replace jobhour = . jobhour == 0 | jobhour == 8 | jobhour == 9 ;
replace jobpromo = . jobpromo == 0 | jobpromo == 8 | jobpromo == 9 ;
replace jobmeans = . jobmeans == 0 | jobmeans == 8 | jobmeans == 9 ;
replace jobkeep = . jobkeep == 0 | jobkeep == 8 | jobkeep == 9 ;
replace jobpay = . jobpay == 0 | jobpay == 8 | jobpay == 9 ;
replace jobrise = . jobrise == 0 | jobrise == 8 | jobrise == 9 ;
replace jobhonor = . jobhonor == 0 | jobhonor == 8 | jobhonor == 9 ;
replace joboff = . joboff == 0 | joboff == 8 | joboff == 9 ;
replace jobinter = . jobinter == 0 | jobinter == 8 | jobinter == 9 ;
replace jobindep = . jobindep == 0 | jobindep == 8 | jobindep == 9 ;
replace jobresp = . jobresp == 0 | jobresp == 8 | jobresp == 9 ;
replace jobpeop = . jobpeop == 0 | jobpeop == 8 | jobpeop == 9 ;
replace jobhelp = . jobhelp == 0 | jobhelp == 8 | jobhelp == 9 ;
replace jobsoc = . jobsoc == 0 | jobsoc == 8 | jobsoc == 9 ;
replace jobaccmp = . jobaccmp == 0 | jobaccmp == 8 | jobaccmp == 9 ;
replace jobsafe = . jobsafe == 0 | jobsafe == 8 | jobsafe == 9 ;
replace class = . class == 0 | class == 8 | class == 9 ;
replace classy = . classy == 0 | classy == 8 | classy == 9 ;
replace rank = . rank == 0 | rank == 98 | rank == 99 ;
replace rank10 = . rank10 == 0 | rank10 == 98 | rank10 == 99 ;
replace satfin = . satfin == 0 | satfin == 8 | satfin == 9 ;
replace finalter = . finalter == 0 | finalter == 8 | finalter == 9 ;
replace finrela = . finrela == 0 | finrela == 8 | finrela == 9 ;
replace incneed = . incneed == -1 | incneed == 99998 | incneed == 99999 ;
replace mininc = . mininc == -1 | mininc == 998 | mininc == 999 ;
replace wksub = . wksub == 0 | wksub == 8 | wksub == 9 ;
replace wksubs = . wksubs == 0 | wksubs == 8 | wksubs == 9 ;
replace wksup = . wksup == 0 | wksup == 8 | wksup == 9 ;
replace wksups = . wksups == 0 | wksups == 8 | wksups == 9 ;
replace unemp = . unemp == 0 | unemp == 8 | unemp == 9 ;
replace govaid = . govaid == 0 | govaid == 8 | govaid == 9 ;
replace getaid = . getaid == 0 | getaid == 8 | getaid == 9 ;
replace union = . union == 0 | union == 8 | union == 9 ;
replace getahead = . getahead == 0 | getahead == 8 | getahead == 9 ;
replace parsol = . parsol == 0 | parsol == 8 | parsol == 9 ;
replace kidssol = . kidssol == 0 | kidssol == 8 | kidssol == 9 ;
replace fehome = . fehome == 0 | fehome == 8 | fehome == 9 ;
replace fework = . fework == 0 | fework == 8 | fework == 9 ;
replace fepres = . fepres == 0 | fepres == 8 | fepres == 9 ;
replace fepol = . fepol == 0 | fepol == 8 | fepol == 9 ;
replace fepoly = . fepoly == 0 | fepoly == 8 | fepoly == 9 ;
replace feimp = . feimp == 0 | feimp == 8 | feimp == 9 ;
replace feinfo = . feinfo == 0 | feinfo == 8 | feinfo == 9 ;
replace fefirm = . fefirm == 0 | fefirm == 8 | fefirm == 9 ;
replace fecare = . fecare == 0 | fecare == 8 | fecare == 9 ;
replace fethink = . fethink == 0 | fethink == 8 | fethink == 9 ;
replace fewrite = . fewrite == 0 | fewrite == 8 | fewrite == 9 ;
replace fegive = . fegive == 0 | fegive == 8 | fegive == 9 ;
replace fejoin = . fejoin == 0 | fejoin == 8 | fejoin == 9 ;
replace abdefect = . abdefect == 0 | abdefect == 8 | abdefect == 9 ;
replace abnomore = . abnomore == 0 | abnomore == 8 | abnomore == 9 ;
replace abhlth = . abhlth == 0 | abhlth == 8 | abhlth == 9 ;
replace abpoor = . abpoor == 0 | abpoor == 8 | abpoor == 9 ;
replace abrape = . abrape == 0 | abrape == 8 | abrape == 9 ;
replace absingle = . absingle == 0 | absingle == 8 | absingle == 9 ;
replace abany = . abany == 0 | abany == 8 | abany == 9 ;
replace aborct = . aborct == 0 | aborct == 8 | aborct == 9 ;
replace abpro1 = . abpro1 == 0 | abpro1 == 99 ;
replace abpro2 = . abpro2 == 0 | abpro2 == 99 ;
replace abpro3 = . abpro3 == 0 | abpro3 == 99 ;
replace abcon1 = . abcon1 == 0 | abcon1 == 99 ;
replace abcon2 = . abcon2 == 0 | abcon2 == 99 ;
replace abcon3 = . abcon3 == 0 | abcon3 == 99 ;
replace abimp = . abimp == 0 | abimp == 8 | abimp == 9 ;
replace abinfo = . abinfo == 0 | abinfo == 8 | abinfo == 9 ;
replace abfirm = . abfirm == 0 | abfirm == 8 | abfirm == 9 ;
replace abcare = . abcare == 0 | abcare == 8 | abcare == 9 ;
replace chldidel = . chldidel == -1 | chldidel == 9 ;
replace chldmore = . chldmore == 0 | chldmore == 8 | chldmore == 9 ;
replace chldnum = . chldnum == 0 | chldnum == 9 ;
replace chldsoon = . chldsoon == -1 | chldsoon == 8 | chldsoon == 9 ;
replace pill = . pill == 0 | pill == 8 | pill == 9 ;
replace teenpill = . teenpill == 0 | teenpill == 8 | teenpill == 9 ;
replace pillok = . pillok == 0 | pillok == 8 | pillok == 9 ;
replace sexeduc = . sexeduc == 0 | sexeduc == 8 | sexeduc == 9 ;
replace divlaw = . divlaw == 0 | divlaw == 8 | divlaw == 9 ;
replace divlawy = . divlawy == 0 | divlawy == 8 | divlawy == 9 ;
replace spdue = . spdue == 0 | spdue == 8 | spdue == 9 ;
replace sppaid = . sppaid == 0 | sppaid == 8 | sppaid == 9 ;
replace premarsx = . premarsx == 0 | premarsx == 8 | premarsx == 9 ;
replace teensex = . teensex == 0 | teensex == 8 | teensex == 9 ;
replace xmarsex = . xmarsex == 0 | xmarsex == 8 | xmarsex == 9 ;
replace homosex = . homosex == 0 | homosex == 8 | homosex == 9 ;
replace homochng = . homochng == 0 | homochng == 8 | homochng == 9 ;
replace porninf = . porninf == 0 | porninf == 8 | porninf == 9 ;
replace pornmorl = . pornmorl == 0 | pornmorl == 8 | pornmorl == 9 ;
replace pornrape = . pornrape == 0 | pornrape == 8 | pornrape == 9 ;
replace pornout = . pornout == 0 | pornout == 8 | pornout == 9 ;
replace pornlaw = . pornlaw == 0 | pornlaw == 8 | pornlaw == 9 ;
replace xmovie = . xmovie == 0 | xmovie == 8 | xmovie == 9 ;
replace xmovie1 = . xmovie1 == 0 | xmovie1 == 8 | xmovie1 == 9 ;
replace pornimp = . pornimp == 0 | pornimp == 8 | pornimp == 9 ;
replace porninfo = . porninfo == 0 | porninfo == 8 | porninfo == 9 ;
replace pornfirm = . pornfirm == 0 | pornfirm == 8 | pornfirm == 9 ;
replace spanking = . spanking == 0 | spanking == 8 | spanking == 9 ;
replace letdie1 = . letdie1 == 0 | letdie1 == 8 | letdie1 == 9 ;
replace letdie2 = . letdie2 == 0 | letdie2 == 8 | letdie2 == 9 ;
replace suicide1 = . suicide1 == 0 | suicide1 == 8 | suicide1 == 9 ;
replace suicide2 = . suicide2 == 0 | suicide2 == 8 | suicide2 == 9 ;
replace suicide3 = . suicide3 == 0 | suicide3 == 8 | suicide3 == 9 ;
replace suicide4 = . suicide4 == 0 | suicide4 == 8 | suicide4 == 9 ;
replace strike = . strike == 0 | strike == 8 | strike == 9 ;
replace civright = . civright == 0 | civright == 8 | civright == 9 ;
replace antiwar = . antiwar == 0 | antiwar == 8 | antiwar == 9 ;
replace prowar = . prowar == 0 | prowar == 8 | prowar == 9 ;
replace school = . school == 0 | school == 8 | school == 9 ;
replace hit = . hit == 0 | hit == 8 | hit == 9 ;
replace hitage = . hitage == 0 | hitage == 8 | hitage == 9 ;
replace hitnum = . hitnum == 0 | hitnum == 8 | hitnum == 9 ;
replace gun = . gun == 0 | gun == 8 | gun == 9 ;
replace gunage = . gunage == 0 | gunage == 8 | gunage == 9 ;
replace gunnum = . gunnum == 0 | gunnum == 8 | gunnum == 9 ;
replace hitok = . hitok == 0 | hitok == 8 | hitok == 9 ;
replace hitmarch = . hitmarch == 0 | hitmarch == 8 | hitmarch == 9 ;
replace hitdrunk = . hitdrunk == 0 | hitdrunk == 8 | hitdrunk == 9 ;
replace hitchild = . hitchild == 0 | hitchild == 8 | hitchild == 9 ;
replace hitbeatr = . hitbeatr == 0 | hitbeatr == 8 | hitbeatr == 9 ;
replace hitrobbr = . hitrobbr == 0 | hitrobbr == 8 | hitrobbr == 9 ;
replace polhitok = . polhitok == 0 | polhitok == 8 | polhitok == 9 ;
replace polabuse = . polabuse == 0 | polabuse == 8 | polabuse == 9 ;
replace polmurdr = . polmurdr == 0 | polmurdr == 8 | polmurdr == 9 ;
replace polescap = . polescap == 0 | polescap == 8 | polescap == 9 ;
replace polattak = . polattak == 0 | polattak == 8 | polattak == 9 ;
replace fear = . fear == 0 | fear == 8 | fear == 9 ;
replace fearhome = . fearhome == 0 | fearhome == 8 | fearhome == 9 ;
replace burglr = . burglr == 0 | burglr == 8 | burglr == 9 ;
replace robbry = . robbry == 0 | robbry == 8 | robbry == 9 ;
replace owngun = . owngun == 0 | owngun == 8 | owngun == 9 ;
replace pistol = . pistol == 0 | pistol == 8 | pistol == 9 ;
replace shotgun = . shotgun == 0 | shotgun == 8 | shotgun == 9 ;
replace rifle = . rifle == 0 | rifle == 8 | rifle == 9 ;
replace rowngun = . rowngun == 0 | rowngun == 8 | rowngun == 9 ;
replace ticket = . ticket == 0 | ticket == 8 | ticket == 9 ;
replace arrest = . arrest == 0 | arrest == 8 | arrest == 9 ;
replace CONVICTD = . CONVICTD == 0 | CONVICTD == 8 | CONVICTD == 9 ;
replace LOCKEDUP = . LOCKEDUP == 0 | LOCKEDUP == 8 | LOCKEDUP == 9 ;
replace hunt = . hunt == 0 | hunt == 8 | hunt == 9 ;
replace huntothr = . huntothr == 0 | huntothr == 8 | huntothr == 9 ;
replace news = . news == 0 | news == 8 | news == 9 ;
replace tvhours = . tvhours == -1 | tvhours == 98 | tvhours == 99 ;
replace radiohrs = . radiohrs == -1 | radiohrs == 98 | radiohrs == 99 ;
replace phone = . phone == 0 | phone == 8 | phone == 9 ;
replace coop2 = . coop2 == 0 | coop2 == 8 | coop2 == 9 ;
replace coop = . coop == 0 | coop == 8 | coop == 9 ;
replace comprend = . comprend == 0 | comprend == 8 | comprend == 9 ;
replace form = . form == 0 ;
replace abspno = . abspno == 0 | abspno == 8 | abspno == 9 ;
replace abhave1 = . abhave1 == 0 | abhave1 == 8 | abhave1 == 9 ;
replace abhave2 = . abhave2 == 0 | abhave2 == 8 | abhave2 == 9 ;
replace abhave3 = . abhave3 == 0 | abhave3 == 8 | abhave3 == 9 ;
replace ablegal = . ablegal == 0 | ablegal == 8 | ablegal == 9 ;
replace fechld = . fechld == 0 | fechld == 8 | fechld == 9 ;
replace fehelp = . fehelp == 0 | fehelp == 8 | fehelp == 9 ;
replace fepresch = . fepresch == 0 | fepresch == 8 | fepresch == 9 ;
replace fefam = . fefam == 0 | fefam == 8 | fefam == 9 ;
replace eraread = . eraread == 0 | eraread == 8 | eraread == 9 ;
replace erameans = . erameans == 0 | erameans == 8 | erameans == 9 ;
replace era = . era == 0 | era == 8 | era == 9 ;
replace eratell = . eratell == 0 | eratell == 8 | eratell == 9 ;
replace erawhy1 = . erawhy1 == 0 | erawhy1 == 99 ;
replace erawhy2 = . erawhy2 == 0 | erawhy2 == 99 ;
replace erawhy3 = . erawhy3 == 0 | erawhy3 == 99 ;
replace eraimp = . eraimp == 0 | eraimp == 8 | eraimp == 9 ;
replace erainfo = . erainfo == 0 | erainfo == 8 | erainfo == 9 ;
replace erafirm = . erafirm == 0 | erafirm == 8 | erafirm == 9 ;
replace febear = . febear == 0 | febear == 8 | febear == 9 ;
replace feworkif = . feworkif == 0 | feworkif == 8 | feworkif == 9 ;
replace racsubs = . racsubs == 0 | racsubs == 8 | racsubs == 9 ;
replace racsubgv = . racsubgv == 0 | racsubgv == 8 | racsubgv == 9 ;
replace racmarel = . racmarel == 0 | racmarel == 8 | racmarel == 9 ;
replace racmarpr = . racmarpr == 0 | racmarpr == 8 | racmarpr == 9 ;
replace racsups = . racsups == 0 | racsups == 8 | racsups == 9 ;
replace racteach = . racteach == 0 | racteach == 8 | racteach == 9 ;
replace racavoid = . racavoid == 0 | racavoid == 8 | racavoid == 9 ;
replace racchng = . racchng == 0 | racchng == 8 | racchng == 9 ;
replace racquit = . racquit == 0 | racquit == 8 | racquit == 9 ;
replace racdif1 = . racdif1 == 0 | racdif1 == 8 | racdif1 == 9 ;
replace racdif2 = . racdif2 == 0 | racdif2 == 8 | racdif2 == 9 ;
replace racdif3 = . racdif3 == 0 | racdif3 == 8 | racdif3 == 9 ;
replace racdif4 = . racdif4 == 0 | racdif4 == 8 | racdif4 == 9 ;
replace salfergt = . salfergt == 0 | salfergt == 8 | salfergt == 9 ;
replace sallabor = . sallabor == 0 | sallabor == 8 | sallabor == 9 ;
replace salsatfn = . salsatfn == 0 | salsatfn == 8 | salsatfn == 9 ;
replace salabort = . salabort == 0 | salabort == 8 | salabort == 9 ;
replace salsci = . salsci == 0 | salsci == 8 | salsci == 9 ;
replace divorce5 = . divorce5 == -1 | divorce5 == 9 ;
replace divrel1 = . divrel1 == -1 ;
replace divrel4 = . divrel4 == -1 ;
replace unemp5 = . unemp5 == -1 | unemp5 == 9 ;
replace unrel1 = . unrel1 == -1 ;
replace unrel4 = . unrel4 == -1 ;
replace hosdis5 = . hosdis5 == -1 | hosdis5 == 9 ;
replace hosrel1 = . hosrel1 == -1 ;
replace hosrel4 = . hosrel4 == -1 ;
replace death5 = . death5 == -1 | death5 == 9 ;
replace death16 = . death16 == -1 ;
replace padeath = . padeath == -1 | padeath == 8 | padeath == 9 ;
replace madeath = . madeath == -1 | madeath == 8 | madeath == 9 ;
replace chlddth = . chlddth == -1 | chlddth == 9 ;
replace sibdeath = . sibdeath == -1 | sibdeath == 9 ;
replace spdeath = . spdeath == -1 | spdeath == 9 ;
replace trauma1 = . trauma1 == -1 | trauma1 == 9 ;
replace trauma5 = . trauma5 == -1 | trauma5 == 9 ;
replace trarel1 = . trarel1 == -1 | trarel1 == 9 ;
replace trarel5 = . trarel5 == -1 | trarel5 == 9 ;
replace tratot1 = . tratot1 == -1 | tratot1 == 9 ;
replace tratot5 = . tratot5 == -1 | tratot5 == 9 ;
replace defspdr = . defspdr == -1 | defspdr == 8 | defspdr == 9 ;
replace defspdfg = . defspdfg == -1 | defspdfg == 8 | defspdfg == 9 ;
replace hlpminr = . hlpminr == -1 | hlpminr == 8 | hlpminr == 9 ;
replace hlpminfg = . hlpminfg == -1 | hlpminfg == 8 | hlpminfg == 9 ;
replace cutspdr = . cutspdr == -1 | cutspdr == 8 | cutspdr == 9 ;
replace cutspdfg = . cutspdfg == -1 | cutspdfg == 8 | cutspdfg == 9 ;
replace impfam = . impfam == 0 | impfam == 8 | impfam == 9 ;
replace impwork = . impwork == 0 | impwork == 8 | impwork == 9 ;
replace imprelax = . imprelax == 0 | imprelax == 8 | imprelax == 9 ;
replace impfrend = . impfrend == 0 | impfrend == 8 | impfrend == 9 ;
replace impkin = . impkin == 0 | impkin == 8 | impkin == 9 ;
replace impchurh = . impchurh == 0 | impchurh == 8 | impchurh == 9 ;
replace imppol = . imppol == 0 | imppol == 8 | imppol == 9 ;
replace privacy = . privacy == 0 | privacy == 8 | privacy == 9 ;
replace civic = . civic == 0 | civic == 8 | civic == 9 ;
replace rushed = . rushed == 0 | rushed == 8 | rushed == 9 ;
replace bored = . bored == 0 | bored == 8 | bored == 9 ;
replace pollgood = . pollgood == 0 | pollgood == 8 | pollgood == 9 ;
replace polltrue = . polltrue == 0 | polltrue == 8 | polltrue == 9 ;
replace feserve = . feserve == 0 | feserve == 8 | feserve == 9 ;
replace meserve = . meserve == 0 | meserve == 8 | meserve == 9 ;
replace taxserve = . taxserve == 0 | taxserve == 8 | taxserve == 9 ;
replace milqual = . milqual == 0 | milqual == 8 | milqual == 9 ;
replace milpay = . milpay == 0 | milpay == 8 | milpay == 9 ;
replace fenumok = . fenumok == 0 | fenumok == 8 | fenumok == 9 ;
replace hinumok = . hinumok == 0 | hinumok == 8 | hinumok == 9 ;
replace blnumok = . blnumok == 0 | blnumok == 8 | blnumok == 9 ;
replace hinumoky = . hinumoky == 0 | hinumoky == 8 | hinumoky == 9 ;
replace blnumoky = . blnumoky == 0 | blnumoky == 8 | blnumoky == 9 ;
replace milvolok = . milvolok == 0 | milvolok == 8 | milvolok == 9 ;
replace fightair = . fightair == 0 | fightair == 8 | fightair == 9 ;
replace mechanic = . mechanic == 0 | mechanic == 8 | mechanic == 9 ;
replace nurse = . nurse == 0 | nurse == 8 | nurse == 9 ;
replace typist = . typist == 0 | typist == 8 | typist == 9 ;
replace brass = . brass == 0 | brass == 8 | brass == 9 ;
replace fightlnd = . fightlnd == 0 | fightlnd == 8 | fightlnd == 9 ;
replace transair = . transair == 0 | transair == 8 | transair == 9 ;
replace gunner = . gunner == 0 | gunner == 8 | gunner == 9 ;
replace fightsea = . fightsea == 0 | fightsea == 8 | fightsea == 9 ;
replace fefight = . fefight == 0 | fefight == 8 | fefight == 9 ;
replace fedirty = . fedirty == 0 | fedirty == 8 | fedirty == 9 ;
replace febrass = . febrass == 0 | febrass == 8 | febrass == 9 ;
replace fehlpmil = . fehlpmil == 0 | fehlpmil == 8 | fehlpmil == 9 ;
replace draft = . draft == 0 | draft == 8 | draft == 9 ;
replace draftfe = . draftfe == 0 | draftfe == 8 | draftfe == 9 ;
replace draftem = . draftem == 0 | draftem == 8 | draftem == 9 ;
replace draftfem = . draftfem == 0 | draftfem == 8 | draftfem == 9 ;
replace draftcol = . draftcol == 0 | draftcol == 8 | draftcol == 9 ;
replace draftmar = . draftmar == 0 | draftmar == 8 | draftmar == 9 ;
replace draftpar = . draftpar == 0 | draftpar == 8 | draftpar == 9 ;
replace draftgay = . draftgay == 0 | draftgay == 8 | draftgay == 9 ;
replace draftco = . draftco == 0 | draftco == 8 | draftco == 9 ;
replace draftdef = . draftdef == 0 | draftdef == 8 | draftdef == 9 ;
replace vetfam = . vetfam == 0 | vetfam == 8 | vetfam == 9 ;
replace vetfamnw = . vetfamnw == 0 | vetfamnw == 8 | vetfamnw == 9 ;
replace minmilop = . minmilop == 0 | minmilop == 8 | minmilop == 9 ;
replace femilop = . femilop == 0 | femilop == 8 | femilop == 9 ;
replace copunish = . copunish == 0 | copunish == 8 | copunish == 9 ;
replace cojail = . cojail == 0 | cojail == 8 | cojail == 9 ;
replace milokme = . milokme == 0 | milokme == 8 | milokme == 9 ;
replace milokfe = . milokfe == 0 | milokfe == 8 | milokfe == 9 ;
replace upgrade = . upgrade == 0 | upgrade == 8 | upgrade == 9 ;
replace jobtrain = . jobtrain == 0 | jobtrain == 8 | jobtrain == 9 ;
replace nukewar = . nukewar == 0 | nukewar == 8 | nukewar == 9 ;
replace landwar = . landwar == 0 | landwar == 8 | landwar == 9 ;
replace morenuke = . morenuke == 0 | morenuke == 8 | morenuke == 9 ;
replace lessnuke = . lessnuke == 0 | lessnuke == 8 | lessnuke == 9 ;
replace nonuke = . nonuke == 0 | nonuke == 8 | nonuke == 9 ;
replace guerilla = . guerilla == 0 | guerilla == 8 | guerilla == 9 ;
replace vetaid = . vetaid == 0 | vetaid == 8 | vetaid == 9 ;
replace defwrkev = . defwrkev == 0 | defwrkev == 8 | defwrkev == 9 ;
replace defwrknw = . defwrknw == 0 | defwrknw == 8 | defwrknw == 9 ;
replace milwrkev = . milwrkev == 0 | milwrkev == 8 | milwrkev == 9 ;
replace milwrknw = . milwrknw == 0 | milwrknw == 8 | milwrknw == 9 ;
replace resdefwk = . resdefwk == 0 | resdefwk == 8 | resdefwk == 9 ;
replace obvote = . obvote == 0 | obvote == 8 | obvote == 9 ;
replace obvol = . obvol == 0 | obvol == 8 | obvol == 9 ;
replace objury = . objury == 0 | objury == 8 | objury == 9 ;
replace ob911 = . ob911 == 0 | ob911 == 8 | ob911 == 9 ;
replace obeng = . obeng == 0 | obeng == 8 | obeng == 9 ;
replace obknow = . obknow == 0 | obknow == 8 | obknow == 9 ;
replace obmepax = . obmepax == 0 | obmepax == 8 | obmepax == 9 ;
replace obmewar = . obmewar == 0 | obmewar == 8 | obmewar == 9 ;
replace obfepax = . obfepax == 0 | obfepax == 8 | obfepax == 9 ;
replace obfewar = . obfewar == 0 | obfewar == 8 | obfewar == 9 ;
replace helppoor = . helppoor == 0 | helppoor == 8 | helppoor == 9 ;
replace helpnot = . helpnot == 0 | helpnot == 8 | helpnot == 9 ;
replace helpsick = . helpsick == 0 | helpsick == 8 | helpsick == 9 ;
replace helpblk = . helpblk == 0 | helpblk == 8 | helpblk == 9 ;
replace numgiven = . numgiven == -1 | numgiven == 9 ;
replace eqclose = . eqclose >= 7 && eqclose <= 9 | eqclose == 0 ;
replace rclose1 = . rclose1 >= 7 && rclose1 <= 9 | rclose1 == 0 ;
replace rclose2 = . rclose2 >= 7 && rclose2 <= 9 | rclose2 == 0 ;
replace rclose3 = . rclose3 >= 7 && rclose3 <= 9 | rclose3 == 0 ;
replace rclose4 = . rclose4 >= 7 && rclose4 <= 9 | rclose4 == 0 ;
replace rclose5 = . rclose5 >= 7 && rclose5 <= 9 | rclose5 == 0 ;
replace close12 = . close12 >= 7 && close12 <= 9 | close12 == 0 ;
replace close13 = . close13 >= 7 && close13 <= 9 | close13 == 0 ;
replace close14 = . close14 >= 7 && close14 <= 9 | close14 == 0 ;
replace close15 = . close15 >= 7 && close15 <= 9 | close15 == 0 ;
replace close23 = . close23 >= 7 && close23 <= 9 | close23 == 0 ;
replace close24 = . close24 >= 7 && close24 <= 9 | close24 == 0 ;
replace close25 = . close25 >= 7 && close25 <= 9 | close25 == 0 ;
replace close34 = . close34 >= 7 && close34 <= 9 | close34 == 0 ;
replace close35 = . close35 >= 7 && close35 <= 9 | close35 == 0 ;
replace close45 = . close45 >= 7 && close45 <= 9 | close45 == 0 ;
replace sex1 = . sex1 >= 7 && sex1 <= 9 | sex1 == 0 ;
replace sex2 = . sex2 >= 7 && sex2 <= 9 | sex2 == 0 ;
replace sex3 = . sex3 >= 7 && sex3 <= 9 | sex3 == 0 ;
replace sex4 = . sex4 >= 7 && sex4 <= 9 | sex4 == 0 ;
replace sex5 = . sex5 >= 7 && sex5 <= 9 | sex5 == 0 ;
replace race1 = . race1 >= 7 && race1 <= 9 | race1 == 0 ;
replace race2 = . race2 >= 7 && race2 <= 9 | race2 == 0 ;
replace race3 = . race3 >= 7 && race3 <= 9 | race3 == 0 ;
replace race4 = . race4 >= 7 && race4 <= 9 | race4 == 0 ;
replace race5 = . race5 >= 7 && race5 <= 9 | race5 == 0 ;
replace spouse1 = . spouse1 == 0 | spouse1 == 8 | spouse1 == 9 ;
replace spouse2 = . spouse2 == 0 | spouse2 == 8 | spouse2 == 9 ;
replace spouse3 = . spouse3 == 0 | spouse3 == 8 | spouse3 == 9 ;
replace spouse4 = . spouse4 == 0 | spouse4 == 8 | spouse4 == 9 ;
replace spouse5 = . spouse5 == 0 | spouse5 == 8 | spouse5 == 9 ;
replace parent1 = . parent1 == 0 | parent1 == 8 | parent1 == 9 ;
replace parent2 = . parent2 == 0 | parent2 == 8 | parent2 == 9 ;
replace parent3 = . parent3 == 0 | parent3 == 8 | parent3 == 9 ;
replace parent4 = . parent4 == 0 | parent4 == 8 | parent4 == 9 ;
replace parent5 = . parent5 == 0 | parent5 == 8 | parent5 == 9 ;
replace sibling1 = . sibling1 == 0 | sibling1 == 8 | sibling1 == 9 ;
replace sibling2 = . sibling2 == 0 | sibling2 == 8 | sibling2 == 9 ;
replace sibling3 = . sibling3 == 0 | sibling3 == 8 | sibling3 == 9 ;
replace sibling4 = . sibling4 == 0 | sibling4 == 8 | sibling4 == 9 ;
replace sibling5 = . sibling5 == 0 | sibling5 == 8 | sibling5 == 9 ;
replace child1 = . child1 == 0 | child1 == 8 | child1 == 9 ;
replace child2 = . child2 == 0 | child2 == 8 | child2 == 9 ;
replace child3 = . child3 == 0 | child3 == 8 | child3 == 9 ;
replace child4 = . child4 == 0 | child4 == 8 | child4 == 9 ;
replace child5 = . child5 == 0 | child5 == 8 | child5 == 9 ;
replace othfam1 = . othfam1 == 0 | othfam1 == 8 | othfam1 == 9 ;
replace othfam2 = . othfam2 == 0 | othfam2 == 8 | othfam2 == 9 ;
replace othfam3 = . othfam3 == 0 | othfam3 == 8 | othfam3 == 9 ;
replace othfam4 = . othfam4 == 0 | othfam4 == 8 | othfam4 == 9 ;
replace othfam5 = . othfam5 == 0 | othfam5 == 8 | othfam5 == 9 ;
replace cowork1 = . cowork1 == 0 | cowork1 == 8 | cowork1 == 9 ;
replace cowork2 = . cowork2 == 0 | cowork2 == 8 | cowork2 == 9 ;
replace cowork3 = . cowork3 == 0 | cowork3 == 8 | cowork3 == 9 ;
replace cowork4 = . cowork4 == 0 | cowork4 == 8 | cowork4 == 9 ;
replace cowork5 = . cowork5 == 0 | cowork5 == 8 | cowork5 == 9 ;
replace memgrp1 = . memgrp1 == 0 | memgrp1 == 8 | memgrp1 == 9 ;
replace memgrp2 = . memgrp2 == 0 | memgrp2 == 8 | memgrp2 == 9 ;
replace memgrp3 = . memgrp3 == 0 | memgrp3 == 8 | memgrp3 == 9 ;
replace memgrp4 = . memgrp4 == 0 | memgrp4 == 8 | memgrp4 == 9 ;
replace memgrp5 = . memgrp5 == 0 | memgrp5 == 8 | memgrp5 == 9 ;
replace neighbr1 = . neighbr1 == 0 | neighbr1 == 8 | neighbr1 == 9 ;
replace neighbr2 = . neighbr2 == 0 | neighbr2 == 8 | neighbr2 == 9 ;
replace neighbr3 = . neighbr3 == 0 | neighbr3 == 8 | neighbr3 == 9 ;
replace neighbr4 = . neighbr4 == 0 | neighbr4 == 8 | neighbr4 == 9 ;
replace neighbr5 = . neighbr5 == 0 | neighbr5 == 8 | neighbr5 == 9 ;
replace friend1 = . friend1 == 0 | friend1 == 8 | friend1 == 9 ;
replace friend2 = . friend2 == 0 | friend2 == 8 | friend2 == 9 ;
replace friend3 = . friend3 == 0 | friend3 == 8 | friend3 == 9 ;
replace friend4 = . friend4 == 0 | friend4 == 8 | friend4 == 9 ;
replace friend5 = . friend5 == 0 | friend5 == 8 | friend5 == 9 ;
replace advisor1 = . advisor1 == 0 | advisor1 == 8 | advisor1 == 9 ;
replace advisor2 = . advisor2 == 0 | advisor2 == 8 | advisor2 == 9 ;
replace advisor3 = . advisor3 == 0 | advisor3 == 8 | advisor3 == 9 ;
replace advisor4 = . advisor4 == 0 | advisor4 == 8 | advisor4 == 9 ;
replace advisor5 = . advisor5 == 0 | advisor5 == 8 | advisor5 == 9 ;
replace other1 = . other1 == 0 | other1 == 8 | other1 == 9 ;
replace other2 = . other2 == 0 | other2 == 8 | other2 == 9 ;
replace other3 = . other3 == 0 | other3 == 8 | other3 == 9 ;
replace other4 = . other4 == 0 | other4 == 8 | other4 == 9 ;
replace other5 = . other5 == 0 | other5 == 8 | other5 == 9 ;
replace talkto1 = . talkto1 == 0 | talkto1 == 8 | talkto1 == 9 ;
replace talkto2 = . talkto2 == 0 | talkto2 == 8 | talkto2 == 9 ;
replace talkto3 = . talkto3 == 0 | talkto3 == 8 | talkto3 == 9 ;
replace talkto4 = . talkto4 == 0 | talkto4 == 8 | talkto4 == 9 ;
replace talkto5 = . talkto5 == 0 | talkto5 == 8 | talkto5 == 9 ;
replace known1 = . known1 == 0 | known1 == 8 | known1 == 9 ;
replace known2 = . known2 == 0 | known2 == 8 | known2 == 9 ;
replace known3 = . known3 == 0 | known3 == 8 | known3 == 9 ;
replace known4 = . known4 == 0 | known4 == 8 | known4 == 9 ;
replace known5 = . known5 == 0 | known5 == 8 | known5 == 9 ;
replace educ1 = . educ1 == -1 | educ1 == 8 | educ1 == 9 ;
replace educ2 = . educ2 == -1 | educ2 == 8 | educ2 == 9 ;
replace educ3 = . educ3 == -1 | educ3 == 8 | educ3 == 9 ;
replace educ4 = . educ4 == -1 | educ4 == 8 | educ4 == 9 ;
replace educ5 = . educ5 == -1 | educ5 == 8 | educ5 == 9 ;
replace age1 = . age1 == -1 | age1 == 98 | age1 == 99 ;
replace age2 = . age2 == -1 | age2 == 98 | age2 == 99 ;
replace age3 = . age3 == -1 | age3 == 98 | age3 == 99 ;
replace age4 = . age4 == -1 | age4 == 98 | age4 == 99 ;
replace age5 = . age5 == -1 | age5 == 98 | age5 == 99 ;
replace relig1 = . relig1 == 0 | relig1 == 8 | relig1 == 9 ;
replace relig2 = . relig2 == 0 | relig2 == 8 | relig2 == 9 ;
replace relig3 = . relig3 == 0 | relig3 == 8 | relig3 == 9 ;
replace relig4 = . relig4 == 0 | relig4 == 8 | relig4 == 9 ;
replace relig5 = . relig5 == 0 | relig5 == 8 | relig5 == 9 ;
replace partyid1 = . partyid1 == 0 | partyid1 == 8 | partyid1 == 9 ;
replace partyid2 = . partyid2 == 0 | partyid2 == 8 | partyid2 == 9 ;
replace partyid3 = . partyid3 == 0 | partyid3 == 8 | partyid3 == 9 ;
replace talkpol1 = . talkpol1 == 0 | talkpol1 == 8 | talkpol1 == 9 ;
replace talkpol2 = . talkpol2 == 0 | talkpol2 == 8 | talkpol2 == 9 ;
replace talkpol3 = . talkpol3 == 0 | talkpol3 == 8 | talkpol3 == 9 ;
replace talkpol = . talkpol == 0 | talkpol == 8 | talkpol == 9 ;
replace frndknow = . frndknow == 0 | frndknow == 8 | frndknow == 9 ;
replace memfrat = . memfrat == 0 | memfrat == 8 | memfrat == 9 ;
replace memserv = . memserv == 0 | memserv == 8 | memserv == 9 ;
replace memvet = . memvet == 0 | memvet == 8 | memvet == 9 ;
replace mempolit = . mempolit == 0 | mempolit == 8 | mempolit == 9 ;
replace memunion = . memunion == 0 | memunion == 8 | memunion == 9 ;
replace memsport = . memsport == 0 | memsport == 8 | memsport == 9 ;
replace memyouth = . memyouth == 0 | memyouth == 8 | memyouth == 9 ;
replace memschl = . memschl == 0 | memschl == 8 | memschl == 9 ;
replace memhobby = . memhobby == 0 | memhobby == 8 | memhobby == 9 ;
replace memgreek = . memgreek == 0 | memgreek == 8 | memgreek == 9 ;
replace memnat = . memnat == 0 | memnat == 8 | memnat == 9 ;
replace memfarm = . memfarm == 0 | memfarm == 8 | memfarm == 9 ;
replace memlit = . memlit == 0 | memlit == 8 | memlit == 9 ;
replace memprof = . memprof == 0 | memprof == 8 | memprof == 9 ;
replace memchurh = . memchurh == 0 | memchurh == 8 | memchurh == 9 ;
replace memother = . memother == 0 | memother == 8 | memother == 9 ;
replace memnum = . memnum == -1 | memnum == 98 | memnum == 99 ;
replace solfrat = . solfrat == 0 | solfrat == 8 | solfrat == 9 ;
replace solserv = . solserv == 0 | solserv == 8 | solserv == 9 ;
replace solvet = . solvet == 0 | solvet == 8 | solvet == 9 ;
replace solpolit = . solpolit == 0 | solpolit == 8 | solpolit == 9 ;
replace solunion = . solunion == 0 | solunion == 8 | solunion == 9 ;
replace solsport = . solsport == 0 | solsport == 8 | solsport == 9 ;
replace solyouth = . solyouth == 0 | solyouth == 8 | solyouth == 9 ;
replace solschl = . solschl == 0 | solschl == 8 | solschl == 9 ;
replace solhobby = . solhobby == 0 | solhobby == 8 | solhobby == 9 ;
replace solgreek = . solgreek == 0 | solgreek == 8 | solgreek == 9 ;
replace solnat = . solnat == 0 | solnat == 8 | solnat == 9 ;
replace solfarm = . solfarm == 0 | solfarm == 8 | solfarm == 9 ;
replace sollit = . sollit == 0 | sollit == 8 | sollit == 9 ;
replace solprof = . solprof == 0 | solprof == 8 | solprof == 9 ;
replace solchurh = . solchurh == 0 | solchurh == 8 | solchurh == 9 ;
replace solother = . solother == 0 | solother == 8 | solother == 9 ;
replace actfrat = . actfrat == 0 | actfrat == 8 | actfrat == 9 ;
replace actserv = . actserv == 0 | actserv == 8 | actserv == 9 ;
replace actvet = . actvet == 0 | actvet == 8 | actvet == 9 ;
replace actpolit = . actpolit == 0 | actpolit == 8 | actpolit == 9 ;
replace actunion = . actunion == 0 | actunion == 8 | actunion == 9 ;
replace actsport = . actsport == 0 | actsport == 8 | actsport == 9 ;
replace actyouth = . actyouth == 0 | actyouth == 8 | actyouth == 9 ;
replace actschl = . actschl == 0 | actschl == 8 | actschl == 9 ;
replace acthobby = . acthobby == 0 | acthobby == 8 | acthobby == 9 ;
replace actgreek = . actgreek == 0 | actgreek == 8 | actgreek == 9 ;
replace actnat = . actnat == 0 | actnat == 8 | actnat == 9 ;
replace actfarm = . actfarm == 0 | actfarm == 8 | actfarm == 9 ;
replace actlit = . actlit == 0 | actlit == 8 | actlit == 9 ;
replace actprof = . actprof == 0 | actprof == 8 | actprof == 9 ;
replace actchurh = . actchurh == 0 | actchurh == 8 | actchurh == 9 ;
replace actother = . actother == 0 | actother == 8 | actother == 9 ;
replace churhgrp = . churhgrp == 0 | churhgrp == 8 | churhgrp == 9 ;
replace mostact = . mostact == 0 | mostact == 98 | mostact == 99 ;
replace caregrp = . caregrp == 0 | caregrp == 8 | caregrp == 9 ;
replace servegrp = . servegrp == 0 | servegrp == 8 | servegrp == 9 ;
replace leadgrp = . leadgrp == 0 | leadgrp == 8 | leadgrp == 9 ;
replace givegrp = . givegrp == 0 | givegrp == 8 | givegrp == 9 ;
replace attndgrp = . attndgrp == 0 | attndgrp == 8 | attndgrp == 9 ;
replace writegrp = . writegrp == 0 | writegrp == 8 | writegrp == 9 ;
replace lobbygrp = . lobbygrp == 0 | lobbygrp == 8 | lobbygrp == 9 ;
replace loclived = . loclived == 0 | loclived == 8 | loclived == 9 ;
replace loctrust = . loctrust == 0 | loctrust == 8 | loctrust == 9 ;
replace locinflu = . locinflu == 0 | locinflu == 8 | locinflu == 9 ;
replace locprob = . locprob == 0 | locprob == 8 | locprob == 9 ;
replace locgrp = . locgrp == 0 | locgrp == 8 | locgrp == 9 ;
replace loccare = . loccare == 0 | loccare == 8 | loccare == 9 ;
replace intpol = . intpol == 0 | intpol == 8 | intpol == 9 ;
replace swayvote = . swayvote == 0 | swayvote == 8 | swayvote == 9 ;
replace workpol = . workpol == 0 | workpol == 8 | workpol == 9 ;
replace polrally = . polrally == 0 | polrally == 8 | polrally == 9 ;
replace loclobby = . loclobby == 0 | loclobby == 8 | loclobby == 9 ;
replace locself = . locself == 0 | locself == 8 | locself == 9 ;
replace othlobby = . othlobby == 0 | othlobby == 8 | othlobby == 9 ;
replace othself = . othself == 0 | othself == 8 | othself == 9 ;
replace governor = . governor == 0 | governor == 8 | governor == 9 ;
replace usrep = . usrep == 0 | usrep == 8 | usrep == 9 ;
replace schlhead = . schlhead == 0 | schlhead == 8 | schlhead == 9 ;
replace fedtrust = . fedtrust == 0 | fedtrust == 8 | fedtrust == 9 ;
replace locvote = . locvote == 0 | locvote == 8 | locvote == 9 ;
replace gavepol = . gavepol == 0 | gavepol == 8 | gavepol == 9 ;
replace blkinflu = . blkinflu == 0 | blkinflu == 8 | blkinflu == 9 ;
replace blkgains = . blkgains == 0 | blkgains == 8 | blkgains == 9 ;
replace feinflu = . feinflu == 0 | feinflu == 8 | feinflu == 9 ;
replace fegains = . fegains == 0 | fegains == 8 | fegains == 9 ;
replace scisolve = . scisolve == 0 | scisolve == 8 | scisolve == 9 ;
replace scichng = . scichng == 0 | scichng == 8 | scichng == 9 ;
replace scipry = . scipry == 0 | scipry == 8 | scipry == 9 ;
replace scimoral = . scimoral == 0 | scimoral == 8 | scimoral == 9 ;
replace switched = . switched == 0 | switched == 8 | switched == 9 ;
replace switch1 = . switch1 == 0 | switch1 == 999999 ;
replace switch2 = . switch2 == 0 | switch2 == 999999 ;
replace switch3 = . switch3 == 0 | switch3 == 999999 ;
replace switnum = . switnum == -1 | switnum == 9 ;
replace switage1 = . switage1 == -1 | switage1 == 98 | switage1 == 99 ;
replace switage2 = . switage2 == -1 | switage2 == 98 | switage2 == 99 ;
replace switwhy1 = . switwhy1 == 0 | switwhy1 == 98 | switwhy1 == 99 ;
replace switwhy2 = . switwhy2 == 0 | switwhy2 == 98 | switwhy2 == 99 ;
replace marelig = . marelig == 0 | marelig == 8 | marelig == 9 ;
replace maden = . maden == 0 | maden == 98 | maden == 99 ;
replace maoth = . maoth == 0 | maoth == 998 | maoth == 999 ;
replace majew = . majew == 0 | majew == 8 | majew == 9 ;
replace mafund = . mafund == 0 | mafund == 8 | mafund == 9 ;
replace parelig = . parelig == 0 | parelig == 8 | parelig == 9 ;
replace paden = . paden == 0 | paden == 98 | paden == 99 ;
replace paoth = . paoth == 0 | paoth == 998 | paoth == 999 ;
replace pajew = . pajew == 0 | pajew == 8 | pajew == 9 ;
replace pafund = . pafund == 0 | pafund == 8 | pafund == 9 ;
replace churhsch = . churhsch == -1 | churhsch == 98 | churhsch == 99 ;
replace sunsch16 = . sunsch16 == 0 | sunsch16 == 8 | sunsch16 == 9 ;
replace grace16 = . grace16 == 0 | grace16 == 8 | grace16 == 9 ;
replace join16 = . join16 == 0 | join16 == 8 | join16 == 9 ;
replace lapsed = . lapsed == 0 | lapsed == 8 | lapsed == 9 ;
replace churhmem = . churhmem == 0 | churhmem == 8 | churhmem == 9 ;
replace churhact = . churhact == 0 | churhact == 8 | churhact == 9 ;
replace tvrelig = . tvrelig == -1 | tvrelig == 99 | tvrelig == 99 ;
replace god = . god == 0 | god == 8 | god == 9 ;
replace reborn = . reborn == 0 | reborn == 8 | reborn == 9 ;
replace savesoul = . savesoul == 0 | savesoul == 8 | savesoul == 9 ;
replace saygrace = . saygrace == 0 | saygrace == 8 | saygrace == 9 ;
replace readword = . readword == 0 | readword == 8 | readword == 9 ;
replace punsin = . punsin == 0 | punsin == 8 | punsin == 9 ;
replace blkwhite = . blkwhite == 0 | blkwhite == 8 | blkwhite == 9 ;
replace rotapple = . rotapple == 0 | rotapple == 8 | rotapple == 9 ;
replace permoral = . permoral == 0 | permoral == 8 | permoral == 9 ;
replace decbible = . decbible == 0 | decbible == 8 | decbible == 9 ;
replace decoths = . decoths == 0 | decoths == 8 | decoths == 9 ;
replace decchurh = . decchurh == 0 | decchurh == 8 | decchurh == 9 ;
replace decself = . decself == 0 | decself == 8 | decself == 9 ;
replace gochurch = . gochurch == 0 | gochurch == 8 | gochurch == 9 ;
replace believe = . believe == 0 | believe == 8 | believe == 9 ;
replace follow = . follow == 0 | follow == 8 | follow == 9 ;
replace goownway = . goownway == 0 | goownway == 8 | goownway == 9 ;
replace myfaith = . myfaith == 0 | myfaith == 8 | myfaith == 9 ;
replace madatgod = . madatgod == 0 | madatgod == 8 | madatgod == 9 ;
replace doubts1 = . doubts1 == 0 | doubts1 == 8 | doubts1 == 9 ;
replace doubts2 = . doubts2 == 0 | doubts2 == 8 | doubts2 == 9 ;
replace doubts3 = . doubts3 == 0 | doubts3 == 8 | doubts3 == 9 ;
replace doubts4 = . doubts4 == 0 | doubts4 == 8 | doubts4 == 9 ;
replace faith1 = . faith1 == 0 | faith1 == 8 | faith1 == 9 ;
replace faith2 = . faith2 == 0 | faith2 == 8 | faith2 == 9 ;
replace faith3 = . faith3 == 0 | faith3 == 8 | faith3 == 9 ;
replace faith4 = . faith4 == 0 | faith4 == 8 | faith4 == 9 ;
replace frndcon1 = . frndcon1 == 0 | frndcon1 == 8 | frndcon1 == 9 ;
replace frndcon2 = . frndcon2 == 0 | frndcon2 == 8 | frndcon2 == 9 ;
replace frndcon3 = . frndcon3 == 0 | frndcon3 == 8 | frndcon3 == 9 ;
replace frndcon4 = . frndcon4 == 0 | frndcon4 == 8 | frndcon4 == 9 ;
replace frndcon5 = . frndcon5 == 0 | frndcon5 == 8 | frndcon5 == 9 ;
replace frndrel1 = . frndrel1 == 0 | frndrel1 == 8 | frndrel1 == 9 ;
replace frndrel2 = . frndrel2 == 0 | frndrel2 == 8 | frndrel2 == 9 ;
replace frndrel3 = . frndrel3 == 0 | frndrel3 == 8 | frndrel3 == 9 ;
replace frndrel4 = . frndrel4 == 0 | frndrel4 == 8 | frndrel4 == 9 ;
replace frndrel5 = . frndrel5 == 0 | frndrel5 == 8 | frndrel5 == 9 ;
replace frndden1 = . frndden1 == 0 | frndden1 == 98 | frndden1 == 99 ;
replace frndden2 = . frndden2 == 0 | frndden2 == 98 | frndden2 == 99 ;
replace frndden3 = . frndden3 == 0 | frndden3 == 98 | frndden3 == 99 ;
replace frndden4 = . frndden4 == 0 | frndden4 == 98 | frndden4 == 99 ;
replace frndden5 = . frndden5 == 0 | frndden5 == 98 | frndden5 == 99 ;
replace frndoth1 = . frndoth1 == 0 | frndoth1 == 998 | frndoth1 == 999 ;
replace frndoth2 = . frndoth2 == 0 | frndoth2 == 998 | frndoth2 == 999 ;
replace frndoth3 = . frndoth3 == 0 | frndoth3 == 998 | frndoth3 == 999 ;
replace frndoth4 = . frndoth4 == 0 | frndoth4 == 998 | frndoth4 == 999 ;
replace frndoth5 = . frndoth5 == 0 | frndoth5 == 998 | frndoth5 == 999 ;
replace frndfnd1 = . frndfnd1 == 0 | frndfnd1 == 8 | frndfnd1 == 9 ;
replace frndfnd2 = . frndfnd2 == 0 | frndfnd2 == 8 | frndfnd2 == 9 ;
replace frndfnd3 = . frndfnd3 == 0 | frndfnd3 == 8 | frndfnd3 == 9 ;
replace frndfnd4 = . frndfnd4 == 0 | frndfnd4 == 8 | frndfnd4 == 9 ;
replace frndfnd5 = . frndfnd5 == 0 | frndfnd5 == 8 | frndfnd5 == 9 ;
replace frndrac1 = . frndrac1 == 0 | frndrac1 == 8 | frndrac1 == 9 ;
replace frndrac2 = . frndrac2 == 0 | frndrac2 == 8 | frndrac2 == 9 ;
replace frndrac3 = . frndrac3 == 0 | frndrac3 == 8 | frndrac3 == 9 ;
replace frndrac4 = . frndrac4 == 0 | frndrac4 == 8 | frndrac4 == 9 ;
replace frndrac5 = . frndrac5 == 0 | frndrac5 == 8 | frndrac5 == 9 ;
replace friends = . friends == 0 | friends == 8 | friends == 9 ;
replace numfrend = . numfrend == -1 | numfrend == 98 | numfrend == 99 ;
replace numbwfrd = . numbwfrd == -1 | numbwfrd == 98 | numbwfrd == 99 ;
replace bwfriend = . bwfriend == 0 | bwfriend == 8 | bwfriend == 9 ;
replace godsells = . godsells == 0 | godsells == 8 | godsells == 9 ;
replace godsport = . godsport == 0 | godsport == 8 | godsport == 9 ;
replace givecong = . givecong >= 99997 && givecong <= 99999 | givecong == -1 ;
replace giverel = . giverel >= 99997 && giverel <= 99999 | giverel == -1 ;
replace giveoth = . giveoth >= 99997 && giveoth <= 99999 | giveoth == -1 ;
replace givearts = . givearts == 0 | givearts == 8 | givearts == 9 ;
replace relhrs1 = . relhrs1 == -1 | relhrs1 == 998 | relhrs1 == 999 ;
replace relhrs2 = . relhrs2 == -1 | relhrs2 == 998 | relhrs2 == 999 ;
replace numcong = . numcong == -1 | numcong == 9999 | numcong == 9998 ;
replace kid5up = . kid5up == 0 | kid5up == 8 | kid5up == 9 ;
replace pubsch = . pubsch == 0 | pubsch == 8 | pubsch == 9 ;
replace homesch = . homesch == 0 | homesch == 8 | homesch == 9 ;
replace cathsch = . cathsch == 0 | cathsch == 8 | cathsch == 9 ;
replace chrissch = . chrissch == 0 | chrissch == 8 | chrissch == 9 ;
replace denomsch = . denomsch == 0 | denomsch == 98 | denomsch == 99 ;
replace relsch = . relsch == 0 | relsch == 8 | relsch == 9 ;
replace privsch = . privsch == 0 | privsch == 8 | privsch == 9 ;
replace othsch = . othsch == 0 | othsch == 8 | othsch == 9 ;
replace shoprel = . shoprel == 0 | shoprel == 8 | shoprel == 9 ;
replace shopmove = . shopmove == 0 | shopmove == 8 | shopmove == 9 ;
replace shopnum = . shopnum == -1 | shopnum == 98 | shopnum == 99 ;
replace othchrch = . othchrch == 0 | othchrch == 8 | othchrch == 9 ;
replace implives = . implives == 0 | implives == 8 | implives == 9 ;
replace obeytch = . obeytch == 0 | obeytch == 8 | obeytch == 9 ;
replace preach = . preach == 0 | preach == 8 | preach == 9 ;
replace ferespct = . ferespct == 0 | ferespct == 8 | ferespct == 9 ;
replace sympcoun = . sympcoun == 0 | sympcoun == 8 | sympcoun == 9 ;
replace wrkyoung = . wrkyoung == 0 | wrkyoung == 8 | wrkyoung == 9 ;
replace worship = . worship == 0 | worship == 8 | worship == 9 ;
replace ownthing = . ownthing == 0 | ownthing == 8 | ownthing == 9 ;
replace talkback = . talkback == 0 | talkback == 8 | talkback == 9 ;
replace twoclass = . twoclass == 0 | twoclass == 8 | twoclass == 9 ;
replace openmind = . openmind == 0 | openmind == 8 | openmind == 9 ;
replace whypoor1 = . whypoor1 == 0 | whypoor1 == 8 | whypoor1 == 9 ;
replace whypoor2 = . whypoor2 == 0 | whypoor2 == 8 | whypoor2 == 9 ;
replace whypoor3 = . whypoor3 == 0 | whypoor3 == 8 | whypoor3 == 9 ;
replace whypoor4 = . whypoor4 == 0 | whypoor4 == 8 | whypoor4 == 9 ;
replace socdif1 = . socdif1 == 0 | socdif1 == 8 | socdif1 == 9 ;
replace socdif2 = . socdif2 == 0 | socdif2 == 8 | socdif2 == 9 ;
replace socdif3 = . socdif3 == 0 | socdif3 == 8 | socdif3 == 9 ;
replace socdif4 = . socdif4 == 0 | socdif4 == 8 | socdif4 == 9 ;
replace wlthwhts = . wlthwhts == 0 | wlthwhts == 8 | wlthwhts == 9 ;
replace wlthjews = . wlthjews == 0 | wlthjews == 8 | wlthjews == 9 ;
replace wlthblks = . wlthblks == 0 | wlthblks == 8 | wlthblks == 9 ;
replace wlthasns = . wlthasns == 0 | wlthasns == 8 | wlthasns == 9 ;
replace wlthhsps = . wlthhsps == 0 | wlthhsps == 8 | wlthhsps == 9 ;
replace wlthso = . wlthso == 0 | wlthso == 8 | wlthso == 9 ;
replace workwhts = . workwhts == 0 | workwhts == 8 | workwhts == 9 ;
replace workjews = . workjews == 0 | workjews == 8 | workjews == 9 ;
replace workblks = . workblks == 0 | workblks == 8 | workblks == 9 ;
replace workasns = . workasns == 0 | workasns == 8 | workasns == 9 ;
replace workhsps = . workhsps == 0 | workhsps == 8 | workhsps == 9 ;
replace workso = . workso == 0 | workso == 8 | workso == 9 ;
replace violwhts = . violwhts == 0 | violwhts == 8 | violwhts == 9 ;
replace violjews = . violjews == 0 | violjews == 8 | violjews == 9 ;
replace violblks = . violblks == 0 | violblks == 8 | violblks == 9 ;
replace violasns = . violasns == 0 | violasns == 8 | violasns == 9 ;
replace violhsps = . violhsps == 0 | violhsps == 8 | violhsps == 9 ;
replace violso = . violso == 0 | violso == 8 | violso == 9 ;
replace intlwhts = . intlwhts == 0 | intlwhts == 8 | intlwhts == 9 ;
replace intljews = . intljews == 0 | intljews == 8 | intljews == 9 ;
replace intlblks = . intlblks == 0 | intlblks == 8 | intlblks == 9 ;
replace intlasns = . intlasns == 0 | intlasns == 8 | intlasns == 9 ;
replace intlhsps = . intlhsps == 0 | intlhsps == 8 | intlhsps == 9 ;
replace intlso = . intlso == 0 | intlso == 8 | intlso == 9 ;
replace farewhts = . farewhts == 0 | farewhts == 8 | farewhts == 9 ;
replace farejews = . farejews == 0 | farejews == 8 | farejews == 9 ;
replace fareblks = . fareblks == 0 | fareblks == 8 | fareblks == 9 ;
replace fareasns = . fareasns == 0 | fareasns == 8 | fareasns == 9 ;
replace farehsps = . farehsps == 0 | farehsps == 8 | farehsps == 9 ;
replace fareso = . fareso == 0 | fareso == 8 | fareso == 9 ;
replace patrwhts = . patrwhts == 0 | patrwhts == 8 | patrwhts == 9 ;
replace patrjews = . patrjews == 0 | patrjews == 8 | patrjews == 9 ;
replace patrblks = . patrblks == 0 | patrblks == 8 | patrblks == 9 ;
replace patrasns = . patrasns == 0 | patrasns == 8 | patrasns == 9 ;
replace patrhsps = . patrhsps == 0 | patrhsps == 8 | patrhsps == 9 ;
replace patrso = . patrso == 0 | patrso == 8 | patrso == 9 ;
replace livejews = . livejews == 0 | livejews == 8 | livejews == 9 ;
replace liveblks = . liveblks == 0 | liveblks == 8 | liveblks == 9 ;
replace liveasns = . liveasns == 0 | liveasns == 8 | liveasns == 9 ;
replace livehsps = . livehsps == 0 | livehsps == 8 | livehsps == 9 ;
replace liveno = . liveno == 0 | liveno == 8 | liveno == 9 ;
replace liveso = . liveso == 0 | liveso == 8 | liveso == 9 ;
replace livewhts = . livewhts == 0 | livewhts == 8 | livewhts == 9 ;
replace marjew = . marjew == 0 | marjew == 8 | marjew == 9 ;
replace marblk = . marblk == 0 | marblk == 8 | marblk == 9 ;
replace marasian = . marasian == 0 | marasian == 8 | marasian == 9 ;
replace marhisp = . marhisp == 0 | marhisp == 8 | marhisp == 9 ;
replace marno = . marno == 0 | marno == 8 | marno == 9 ;
replace marso = . marso == 0 | marso == 8 | marso == 9 ;
replace marwht = . marwht == 0 | marwht == 8 | marwht == 9 ;
replace workfare = . workfare == 0 | workfare == 8 | workfare == 9 ;
replace lessfare = . lessfare == 0 | lessfare == 8 | lessfare == 9 ;
replace povzone = . povzone == 0 | povzone == 8 | povzone == 9 ;
replace povschs = . povschs == 0 | povschs == 8 | povschs == 9 ;
replace povcol = . povcol == 0 | povcol == 8 | povcol == 9 ;
replace blkzone = . blkzone == 0 | blkzone == 8 | blkzone == 9 ;
replace blkschs = . blkschs == 0 | blkschs == 8 | blkschs == 9 ;
replace blkcol = . blkcol == 0 | blkcol == 8 | blkcol == 9 ;
replace racquota = . racquota == 0 | racquota == 8 | racquota == 9 ;
replace influwht = . influwht == 0 | influwht == 8 | influwht == 9 ;
replace influjew = . influjew == 0 | influjew == 8 | influjew == 9 ;
replace influblk = . influblk == 0 | influblk == 8 | influblk == 9 ;
replace influasn = . influasn == 0 | influasn == 8 | influasn == 9 ;
replace influhsp = . influhsp == 0 | influhsp == 8 | influhsp == 9 ;
replace influso = . influso == 0 | influso == 8 | influso == 9 ;
replace hspjobs = . hspjobs == 0 | hspjobs == 8 | hspjobs == 9 ;
replace blkjobs = . blkjobs == 0 | blkjobs == 8 | blkjobs == 9 ;
replace asnjobs = . asnjobs == 0 | asnjobs == 8 | asnjobs == 9 ;
replace hsphouse = . hsphouse == 0 | hsphouse == 8 | hsphouse == 9 ;
replace blkhouse = . blkhouse == 0 | blkhouse == 8 | blkhouse == 9 ;
replace asnhouse = . asnhouse == 0 | asnhouse == 8 | asnhouse == 9 ;
replace racwork = . racwork == 0 | racwork == 8 | racwork == 9 ;
replace affact = . affact == 0 | affact == 8 | affact == 9 ;
replace discaff = . discaff == 0 | discaff == 8 | discaff == 9 ;
replace discwhy1 = . discwhy1 == 0 | discwhy1 == 8 | discwhy1 == 9 ;
replace discwhy2 = . discwhy2 == 0 | discwhy2 == 8 | discwhy2 == 9 ;
replace discwhy3 = . discwhy3 == 0 | discwhy3 == 8 | discwhy3 == 9 ;
replace discwhy4 = . discwhy4 == 0 | discwhy4 == 8 | discwhy4 == 9 ;
replace discwhy5 = . discwhy5 == 0 | discwhy5 == 8 | discwhy5 == 9 ;
replace discwhy6 = . discwhy6 == 0 | discwhy6 == 8 | discwhy6 == 9 ;
replace genejob = . genejob == 0 | genejob == 8 | genejob == 9 ;
replace genehire = . genehire == 0 | genehire == 8 | genehire == 9 ;
replace genecanx = . genecanx == 0 | genecanx == 8 | genecanx == 9 ;
replace genecany = . genecany == 0 | genecany == 8 | genecany == 9 ;
replace genegets = . genegets == 0 | genegets == 8 | genegets == 9 ;
replace profits1 = . profits1 == 0 | profits1 == 8 | profits1 == 9 ;
replace profits2 = . profits2 == 0 | profits2 == 8 | profits2 == 9 ;
replace unpower = . unpower == 0 | unpower == 8 | unpower == 9 ;
replace unprog = . unprog == 0 | unprog == 8 | unprog == 9 ;
replace outofbiz = . outofbiz == 0 | outofbiz == 8 | outofbiz == 9 ;
replace merged = . merged == 0 | merged == 8 | merged == 9 ;
replace reorg = . reorg == 0 | reorg == 8 | reorg == 9 ;
replace orgfin = . orgfin == 0 | orgfin == 8 | orgfin == 9 ;
replace wrkyears = . wrkyears == -1 | wrkyears == 98 | wrkyears == 99 ;
replace evunemp = . evunemp == 0 | evunemp == 8 | evunemp == 9 ;
replace numunemp = . numunemp == 0 | numunemp == 98 | numunemp == 99 ;
replace totunemp = . totunemp == 0 | totunemp == 8 | totunemp == 9 ;
replace empyears = . empyears == -1 | empyears == 99 | empyears == 99 ;
replace fndjob1 = . fndjob1 == 0 | fndjob1 == 9 ;
replace fndjob2 = . fndjob2 == 0 | fndjob2 == 9 ;
replace fndjob3 = . fndjob3 == 0 | fndjob3 == 9 ;
replace fndjob4 = . fndjob4 == 0 | fndjob4 == 9 ;
replace fndjob5 = . fndjob5 == 0 | fndjob5 == 9 ;
replace fndjob6 = . fndjob6 == 0 | fndjob6 == 9 ;
replace fndjob7 = . fndjob7 == 0 | fndjob7 == 9 ;
replace fndjob8 = . fndjob8 == 0 | fndjob8 == 9 ;
replace fndjob9 = . fndjob9 == 0 | fndjob9 == 9 ;
replace intltest = . intltest == 0 | intltest == 8 | intltest == 9 ;
replace skiltest = . skiltest == 0 | skiltest == 8 | skiltest == 9 ;
replace drugtest = . drugtest == 0 | drugtest == 8 | drugtest == 9 ;
replace physical = . physical == 0 | physical == 8 | physical == 9 ;
replace ltrsref = . ltrsref == 0 | ltrsref == 8 | ltrsref == 9 ;
replace samejob = . samejob == 0 | samejob == 8 | samejob == 9 ;
replace jobyears = . jobyears == -1 | jobyears == 99 | jobyears == 99 ;
replace thisjob1 = . thisjob1 == 0 | thisjob1 == 9 ;
replace thisjob2 = . thisjob2 == 0 | thisjob2 == 9 ;
replace thisjob3 = . thisjob3 == 0 | thisjob3 == 9 ;
replace thisjob4 = . thisjob4 == 0 | thisjob4 == 9 ;
replace thisjob5 = . thisjob5 == 0 | thisjob5 == 9 ;
replace thisjob6 = . thisjob6 == 0 | thisjob6 == 9 ;
replace thisjob7 = . thisjob7 == 0 | thisjob7 == 9 ;
replace promotng = . promotng == 0 | promotng == 8 | promotng == 9 ;
replace promoted = . promoted == 0 | promoted == 9 ;
replace numpromo = . numpromo == 0 | numpromo == 8 | numpromo == 9 ;
replace imppromo = . imppromo == 0 | imppromo == 8 | imppromo == 9 ;
replace futpromo = . futpromo == 0 | futpromo == 8 | futpromo == 9 ;
replace sexpromo = . sexpromo == 0 | sexpromo == 8 | sexpromo == 9 ;
replace racpromo = . racpromo == 0 | racpromo == 8 | racpromo == 9 ;
replace advances = . advances == 0 | advances == 8 | advances == 9 ;
replace jobcntrl = . jobcntrl == 0 | jobcntrl == 8 | jobcntrl == 9 ;
replace wrkindep = . wrkindep == 0 | wrkindep == 8 | wrkindep == 9 ;
replace lottosay = . lottosay == 0 | lottosay == 8 | lottosay == 9 ;
replace idecide = . idecide == 0 | idecide == 8 | idecide == 9 ;
replace automatn = . automatn == 0 | automatn == 8 | automatn == 9 ;
replace monitred = . monitred == 0 | monitred == 8 | monitred == 9 ;
replace offsup = . offsup == 0 | offsup == 8 | offsup == 9 ;
replace yousup = . yousup == 0 | yousup == 998 | yousup == 999 ;
replace supothrs = . supothrs == 0 | supothrs == 9 ;
replace levels = . levels == 0 | levels == 98 | levels == 99 ;
replace totsup = . totsup == 0 | totsup == 9998 | totsup == 9999 ;
replace supduty1 = . supduty1 == 0 | supduty1 == 9 ;
replace supduty2 = . supduty2 == 0 | supduty2 == 9 ;
replace supduty3 = . supduty3 == 0 | supduty3 == 8 | supduty3 == 9 ;
replace supduty4 = . supduty4 == 0 | supduty4 == 9 ;
replace supduty5 = . supduty5 == 0 | supduty5 == 9 ;
replace supduty6 = . supduty6 == 0 | supduty6 == 8 | supduty6 == 9 ;
replace supduty7 = . supduty7 == 0 | supduty7 == 9 ;
replace othduty1 = . othduty1 == 0 | othduty1 == 9 ;
replace othduty2 = . othduty2 == 0 | othduty2 == 9 ;
replace othduty3 = . othduty3 == 0 | othduty3 == 8 | othduty3 == 9 ;
replace othduty4 = . othduty4 == 0 | othduty4 == 9 ;
replace othduty5 = . othduty5 == 0 | othduty5 == 9 ;
replace othduty6 = . othduty6 == 0 | othduty6 == 8 | othduty6 == 9 ;
replace othduty7 = . othduty7 == 0 | othduty7 == 8 | othduty7 == 9 ;
replace orgmoney = . orgmoney == 0 | orgmoney == 9 ;
replace totmoney = . totmoney == 0 | totmoney == 9999998 | totmoney == 9999999 ;
replace youmoney = . youmoney == 0 | youmoney == 9999998 | youmoney == 9999999 ;
replace jobjudge = . jobjudge == 0 | jobjudge == 8 | jobjudge == 9 ;
replace quantity = . quantity == 0 | quantity == 8 | quantity == 9 ;
replace quality = . quality == 0 | quality == 8 | quality == 9 ;
replace wrkwell = . wrkwell == 0 | wrkwell == 8 | wrkwell == 9 ;
replace wrkmuch = . wrkmuch == 0 | wrkmuch == 8 | wrkmuch == 9 ;
replace imatter = . imatter == 0 | imatter == 8 | imatter == 9 ;
replace helporg = . helporg == 0 | helporg == 8 | helporg == 9 ;
replace notloyal = . notloyal == 0 | notloyal == 8 | notloyal == 9 ;
replace stayorg1 = . stayorg1 == 0 | stayorg1 == 8 | stayorg1 == 9 ;
replace samevals = . samevals == 0 | samevals == 8 | samevals == 9 ;
replace proudorg = . proudorg == 0 | proudorg == 8 | proudorg == 9 ;
replace stayorg2 = . stayorg2 == 0 | stayorg2 == 8 | stayorg2 == 9 ;
replace noticed = . noticed == 0 | noticed == 8 | noticed == 9 ;
replace chngeorg = . chngeorg == 0 | chngeorg == 8 | chngeorg == 9 ;
replace othpay = . othpay == 0 | othpay == 9 ;
replace raiseall = . raiseall == 0 | raiseall == 8 | raiseall == 9 ;
replace raisehrd = . raisehrd == 0 | raisehrd == 8 | raisehrd == 9 ;
replace raisefav = . raisefav == 0 | raisefav == 8 | raisefav == 9 ;
replace fringe1 = . fringe1 == 0 | fringe1 == 8 | fringe1 == 9 ;
replace fringe2 = . fringe2 == 0 | fringe2 == 8 | fringe2 == 9 ;
replace fringe3 = . fringe3 == 0 | fringe3 == 8 | fringe3 == 9 ;
replace fringe4 = . fringe4 == 0 | fringe4 == 8 | fringe4 == 9 ;
replace fringe5 = . fringe5 == 0 | fringe5 == 8 | fringe5 == 9 ;
replace fringe6 = . fringe6 == 0 | fringe6 == 8 | fringe6 == 9 ;
replace fringe7 = . fringe7 == 0 | fringe7 == 8 | fringe7 == 9 ;
replace fringe8 = . fringe8 == 0 | fringe8 == 8 | fringe8 == 9 ;
replace fringe9 = . fringe9 == 0 | fringe9 == 8 | fringe9 == 9 ;
replace fringe10 = . fringe10 == 0 | fringe10 == 8 | fringe10 == 9 ;
replace fringe11 = . fringe11 == 0 | fringe11 == 8 | fringe11 == 9 ;
replace jobvshme = . jobvshme == 0 | jobvshme == 9 ;
replace unvote = . unvote == 0 | unvote == 8 | unvote == 9 ;
replace unmanrel = . unmanrel == 0 | unmanrel == 8 | unmanrel == 9 ;
replace cowrkrel = . cowrkrel == 0 | cowrkrel == 8 | cowrkrel == 9 ;
replace schoolng = . schoolng == 0 | schoolng == 8 | schoolng == 9 ;
replace training = . training == 0 | training == 8 | training == 9 ;
replace learning = . learning == 0 | learning == 8 | learning == 9 ;
replace exptrain = . exptrain == 0 | exptrain == 8 | exptrain == 9 ;
replace wherewrk = . wherewrk == 0 | wherewrk == 9 ;
replace findout = . findout == 0 | findout == 9 ;
replace baseofop = . baseofop == 0 | baseofop == 9 ;
replace splocnum = . splocnum == 0 | splocnum == 8 | splocnum == 9 ;
replace standup = . standup == 0 | standup == 8 | standup == 9 ;
replace selfirst = . selfirst == 0 | selfirst == 8 | selfirst == 9 ;
replace richpoor = . richpoor == 0 | richpoor == 8 | richpoor == 9 ;
replace opoutcme = . opoutcme == 0 | opoutcme == 8 | opoutcme == 9 ;
replace united = . united == 0 | united == 8 | united == 9 ;
replace obtohelp = . obtohelp == 0 | obtohelp == 8 | obtohelp == 9 ;
replace lfegod = . lfegod == 0 | lfegod == 8 | lfegod == 9 ;
replace lfegenes = . lfegenes == 0 | lfegenes == 8 | lfegenes == 9 ;
replace lfesocty = . lfesocty == 0 | lfesocty == 8 | lfesocty == 9 ;
replace lfehrdwk = . lfehrdwk == 0 | lfehrdwk == 8 | lfehrdwk == 9 ;
replace lfechnce = . lfechnce == 0 | lfechnce == 8 | lfechnce == 9 ;
replace bigband = . bigband == 0 | bigband == 8 | bigband == 9 ;
replace blugrass = . blugrass == 0 | blugrass == 8 | blugrass == 9 ;
replace country = . country == 0 | country == 8 | country == 9 ;
replace blues = . blues == 0 | blues == 8 | blues == 9 ;
replace musicals = . musicals == 0 | musicals == 8 | musicals == 9 ;
replace classicl = . classicl == 0 | classicl == 8 | classicl == 9 ;
replace folk = . folk == 0 | folk == 8 | folk == 9 ;
replace gospel = . gospel == 0 | gospel == 8 | gospel == 9 ;
replace jazz = . jazz == 0 | jazz == 8 | jazz == 9 ;
replace latin = . latin == 0 | latin == 8 | latin == 9 ;
replace moodeasy = . moodeasy == 0 | moodeasy == 8 | moodeasy == 9 ;
replace newage = . newage == 0 | newage == 8 | newage == 9 ;
replace opera = . opera == 0 | opera == 8 | opera == 9 ;
replace rap = . rap == 0 | rap == 8 | rap == 9 ;
replace reggae = . reggae == 0 | reggae == 8 | reggae == 9 ;
replace conrock = . conrock == 0 | conrock == 8 | conrock == 9 ;
replace oldies = . oldies == 0 | oldies == 8 | oldies == 9 ;
replace hvymetal = . hvymetal == 0 | hvymetal == 8 | hvymetal == 9 ;
replace attsprts = . attsprts == 0 | attsprts == 8 | attsprts == 9 ;
replace visitart = . visitart == 0 | visitart == 8 | visitart == 9 ;
replace makeart = . makeart == 0 | makeart == 8 | makeart == 9 ;
replace autorace = . autorace == 0 | autorace == 8 | autorace == 9 ;
replace camping = . camping == 0 | camping == 8 | camping == 9 ;
replace garden = . garden == 0 | garden == 8 | garden == 9 ;
replace dance = . dance == 0 | dance == 8 | dance == 9 ;
replace gomusic = . gomusic == 0 | gomusic == 8 | gomusic == 9 ;
replace huntfish = . huntfish == 0 | huntfish == 8 | huntfish == 9 ;
replace perform = . perform == 0 | perform == 8 | perform == 9 ;
replace dosports = . dosports == 0 | dosports == 8 | dosports == 9 ;
replace seemovie = . seemovie == 0 | seemovie == 8 | seemovie == 9 ;
replace usevcr = . usevcr == 0 | usevcr == 8 | usevcr == 9 ;
replace plymusic = . plymusic == 0 | plymusic == 8 | plymusic == 9 ;
replace tvshows = . tvshows == 0 | tvshows == 8 | tvshows == 9 ;
replace tvnews = . tvnews == 0 | tvnews == 8 | tvnews == 9 ;
replace tvpbs = . tvpbs == 0 | tvpbs == 8 | tvpbs == 9 ;
replace judgeart = . judgeart == 0 | judgeart == 8 | judgeart == 9 ;
replace trstprof = . trstprof == 0 | trstprof == 8 | trstprof == 9 ;
replace classics = . classics == 0 | classics == 8 | classics == 9 ;
replace grtbooks = . grtbooks == 0 | grtbooks == 8 | grtbooks == 9 ;
replace modpaint = . modpaint == 0 | modpaint == 8 | modpaint == 9 ;
replace english = . english == 0 | english == 8 | english == 9 ;
replace pclit = . pclit == 0 | pclit == 8 | pclit == 9 ;
replace excelart = . excelart == 0 | excelart == 8 | excelart == 9 ;
replace hosthome = . hosthome == 0 | hosthome == 8 | hosthome == 9 ;
replace frdcreat = . frdcreat == 0 | frdcreat == 8 | frdcreat == 9 ;
replace frdcultr = . frdcultr == 0 | frdcultr == 8 | frdcultr == 9 ;
replace frddynam = . frddynam == 0 | frddynam == 8 | frddynam == 9 ;
replace frdfun = . frdfun == 0 | frdfun == 8 | frdfun == 9 ;
replace frdhonst = . frdhonst == 0 | frdhonst == 8 | frdhonst == 9 ;
replace frdintel = . frdintel == 0 | frdintel == 8 | frdintel == 9 ;
replace frdresp = . frdresp == 0 | frdresp == 8 | frdresp == 9 ;
replace impfinan = . impfinan == 0 | impfinan == 8 | impfinan == 9 ;
replace impmar = . impmar == 0 | impmar == 8 | impmar == 9 ;
replace impkids = . impkids == 0 | impkids == 8 | impkids == 9 ;
replace impgod = . impgod == 0 | impgod == 8 | impgod == 9 ;
replace impthngs = . impthngs == 0 | impthngs == 8 | impthngs == 9 ;
replace impcultr = . impcultr == 0 | impcultr == 8 | impcultr == 9 ;
replace impjob = . impjob == 0 | impjob == 8 | impjob == 9 ;
replace impself = . impself == 0 | impself == 8 | impself == 9 ;
replace mostimp1 = . mostimp1 == 0 | mostimp1 == 998 | mostimp1 == 999 ;
replace mostimp2 = . mostimp2 == 0 | mostimp2 == 998 | mostimp2 == 999 ;
replace mostimp3 = . mostimp3 == 0 | mostimp3 == 998 | mostimp3 == 999 ;
replace mostimp4 = . mostimp4 == 0 | mostimp4 == 998 | mostimp4 == 999 ;
replace colmajr1 = . colmajr1 == -1 | colmajr1 == 98 | colmajr1 == 99 ;
replace colmajr2 = . colmajr2 == -1 | colmajr2 == 98 | colmajr2 == 99 ;
replace hsclass1 = . hsclass1 == -1 | hsclass1 == 98 | hsclass1 == 99 ;
replace hsclass2 = . hsclass2 == -1 | hsclass2 == 98 | hsclass2 == 99 ;
replace malive1 = . malive1 == 0 | malive1 == 8 | malive1 == 9 ;
replace mayrborn = . mayrborn == 0 | mayrborn == 9998 | mayrborn == 9999 ;
replace mayrdied = . mayrdied == 0 | mayrdied == 9998 | mayrdied == 9999 ;
replace palive1 = . palive1 == 0 | palive1 == 8 | palive1 == 9 ;
replace payrborn = . payrborn == 0 | payrborn == 9998 | payrborn == 9999 ;
replace payrdied = . payrdied == 0 | payrdied == 9998 | payrdied == 9999 ;
replace datesch = . datesch == 0 | datesch == 9998 | datesch == 9999 ;
replace neverwk = . neverwk == 0 | neverwk == 8 | neverwk == 9 ;
replace occfirst = . occfirst == 0 | occfirst == 998 | occfirst == 999 ;
replace presfrst = . presfrst == 0 ;
replace wrkslfst = . wrkslfst == 0 | wrkslfst == 8 | wrkslfst == 9 ;
replace indfirst = . indfirst == 0 | indfirst == 998 | indfirst == 999 ;
replace datefrst = . datefrst == 0 | datefrst == 9998 | datefrst == 9999 ;
replace alike1 = . alike1 == -1 | alike1 == 8 | alike1 == 9 ;
replace alike2 = . alike2 == -1 | alike2 == 8 | alike2 == 9 ;
replace alike3 = . alike3 == -1 | alike3 == 8 | alike3 == 9 ;
replace alike4 = . alike4 == -1 | alike4 == 8 | alike4 == 9 ;
replace alike5 = . alike5 == -1 | alike5 == 8 | alike5 == 9 ;
replace alike6 = . alike6 == -1 | alike6 == 8 | alike6 == 9 ;
replace alike7 = . alike7 == -1 | alike7 == 8 | alike7 == 9 ;
replace alike8 = . alike8 == -1 | alike8 == 8 | alike8 == 9 ;
replace marnum = . marnum == 0 | marnum == 8 | marnum == 9 ;
replace fstspyr = . fstspyr == 0 | fstspyr == 9998 | fstspyr == 9999 ;
replace fstspedc = . fstspedc == 97 | fstspedc == 98 | fstspedc == 99 ;
replace fstspdeg = . fstspdeg == 7 | fstspdeg == 8 | fstspdeg == 9 ;
replace fstspped = . fstspped == -1 | fstspped == 98 | fstspped == 99 ;
replace fstspmed = . fstspmed == -1 | fstspmed == 98 | fstspmed == 99 ;
replace agewedcr = . agewedcr == 0 | agewedcr == 98 | agewedcr == 99 ;
replace spyrborn = . spyrborn == 0 | spyrborn == 9998 | spyrborn == 9999 ;
replace spmarnum = . spmarnum == 0 | spmarnum == 8 | spmarnum == 9 ;
replace spfam16 = . spfam16 == -1 | spfam16 == 9 ;
replace sppaeduc = . sppaeduc == -1 | sppaeduc == 98 | sppaeduc == 99 ;
replace spmaeduc = . spmaeduc == -1 | spmaeduc == 98 | spmaeduc == 99 ;
replace sphedocc = . sphedocc == 0 | sphedocc == 998 | sphedocc == 999 ;
replace sphedpre = . sphedpre == 0 ;
replace sphedslf = . sphedslf == 0 | sphedslf == 8 | sphedslf == 9 ;
replace sphedind = . sphedind == 0 | sphedind == 998 | sphedind == 999 ;
replace spsibs = . spsibs == -1 | spsibs == 98 | spsibs == 99 ;
replace kdsex1 = . kdsex1 == 0 | kdsex1 == 8 | kdsex1 == 9 ;
replace kdsex2 = . kdsex2 == 0 | kdsex2 == 8 | kdsex2 == 9 ;
replace kdsex3 = . kdsex3 == 0 | kdsex3 == 8 | kdsex3 == 9 ;
replace kdsex4 = . kdsex4 == 0 | kdsex4 == 8 | kdsex4 == 9 ;
replace kdsex5 = . kdsex5 == 0 | kdsex5 == 8 | kdsex5 == 9 ;
replace kdsex6 = . kdsex6 == 0 | kdsex6 == 8 | kdsex6 == 9 ;
replace kdsex7 = . kdsex7 == 0 | kdsex7 == 8 | kdsex7 == 9 ;
replace kdsex8 = . kdsex8 == 0 | kdsex8 == 8 | kdsex8 == 9 ;
replace kdsex9 = . kdsex9 == 0 | kdsex9 == 8 | kdsex9 == 9 ;
replace kdyrbrn1 = . kdyrbrn1 == 0 | kdyrbrn1 == 9998 | kdyrbrn1 == 9999 ;
replace kdyrbrn2 = . kdyrbrn2 == 0 | kdyrbrn2 == 9998 | kdyrbrn2 == 9999 ;
replace kdyrbrn3 = . kdyrbrn3 == 0 | kdyrbrn3 == 9998 | kdyrbrn3 == 9999 ;
replace kdyrbrn4 = . kdyrbrn4 == 0 | kdyrbrn4 == 9998 | kdyrbrn4 == 9999 ;
replace kdyrbrn5 = . kdyrbrn5 == 0 | kdyrbrn5 == 9998 | kdyrbrn5 == 9999 ;
replace kdyrbrn6 = . kdyrbrn6 == 0 | kdyrbrn6 == 9998 | kdyrbrn6 == 9999 ;
replace kdyrbrn7 = . kdyrbrn7 == 0 | kdyrbrn7 == 9998 | kdyrbrn7 == 9999 ;
replace kdyrbrn8 = . kdyrbrn8 == 0 | kdyrbrn8 == 9998 | kdyrbrn8 == 9999 ;
replace kdyrbrn9 = . kdyrbrn9 == 0 | kdyrbrn9 == 9998 | kdyrbrn9 == 9999 ;
replace kdrel1 = . kdrel1 == 0 | kdrel1 == 8 | kdrel1 == 9 ;
replace kdrel2 = . kdrel2 == 0 | kdrel2 == 8 | kdrel2 == 9 ;
replace kdrel3 = . kdrel3 == 0 | kdrel3 == 8 | kdrel3 == 9 ;
replace kdrel4 = . kdrel4 == 0 | kdrel4 == 8 | kdrel4 == 9 ;
replace kdrel5 = . kdrel5 == 0 | kdrel5 == 8 | kdrel5 == 9 ;
replace kdrel6 = . kdrel6 == 0 | kdrel6 == 8 | kdrel6 == 9 ;
replace kdrel7 = . kdrel7 == 0 | kdrel7 == 8 | kdrel7 == 9 ;
replace kdrel8 = . kdrel8 == 0 | kdrel8 == 8 | kdrel8 == 9 ;
replace kdrel9 = . kdrel9 == 0 | kdrel9 == 8 | kdrel9 == 9 ;
replace kdalive1 = . kdalive1 == 0 | kdalive1 == 8 | kdalive1 == 9 ;
replace kdalive2 = . kdalive2 == 0 | kdalive2 == 8 | kdalive2 == 9 ;
replace kdalive3 = . kdalive3 == 0 | kdalive3 == 8 | kdalive3 == 9 ;
replace kdalive4 = . kdalive4 == 0 | kdalive4 == 8 | kdalive4 == 9 ;
replace kdalive5 = . kdalive5 == 0 | kdalive5 == 8 | kdalive5 == 9 ;
replace kdalive6 = . kdalive6 == 0 | kdalive6 == 8 | kdalive6 == 9 ;
replace kdalive7 = . kdalive7 == 0 | kdalive7 == 8 | kdalive7 == 9 ;
replace kdalive8 = . kdalive8 == 0 | kdalive8 == 8 | kdalive8 == 9 ;
replace kdalive9 = . kdalive9 == 0 | kdalive9 == 8 | kdalive9 == 9 ;
replace kdeduc1 = . kdeduc1 == -1 | kdeduc1 == 98 | kdeduc1 == 99 ;
replace kdeduc2 = . kdeduc2 == -1 | kdeduc2 == 98 | kdeduc2 == 99 ;
replace kdeduc3 = . kdeduc3 == -1 | kdeduc3 == 98 | kdeduc3 == 99 ;
replace kdeduc4 = . kdeduc4 == -1 | kdeduc4 == 98 | kdeduc4 == 99 ;
replace kdeduc5 = . kdeduc5 == -1 | kdeduc5 == 98 | kdeduc5 == 99 ;
replace kdeduc6 = . kdeduc6 == -1 | kdeduc6 == 98 | kdeduc6 == 99 ;
replace kdeduc7 = . kdeduc7 == -1 | kdeduc7 == 98 | kdeduc7 == 99 ;
replace kdeduc8 = . kdeduc8 == -1 | kdeduc8 == 98 | kdeduc8 == 99 ;
replace kdeduc9 = . kdeduc9 == -1 | kdeduc9 == 98 | kdeduc9 == 99 ;
replace kdpicked = . kdpicked == -1 ;
replace kdwork1 = . kdwork1 == 0 | kdwork1 == 8 | kdwork1 == 9 ;
replace kdwork2 = . kdwork2 == 0 | kdwork2 == 8 | kdwork2 == 9 ;
replace kdevwork = . kdevwork == 0 | kdevwork == 8 | kdevwork == 9 ;
replace kdocc80 = . kdocc80 == 0 | kdocc80 == 998 | kdocc80 == 999 ;
replace kdpres80 = . kdpres80 == 0 ;
replace kdwrkslf = . kdwrkslf == 0 | kdwrkslf == 8 | kdwrkslf == 9 ;
replace kdind80 = . kdind80 == 0 | kdind80 == 998 | kdind80 == 999 ;
replace sbsex1 = . sbsex1 == 0 | sbsex1 == 8 | sbsex1 == 9 ;
replace sbsex2 = . sbsex2 == 0 | sbsex2 == 8 | sbsex2 == 9 ;
replace sbsex3 = . sbsex3 == 0 | sbsex3 == 8 | sbsex3 == 9 ;
replace sbsex4 = . sbsex4 == 0 | sbsex4 == 8 | sbsex4 == 9 ;
replace sbsex5 = . sbsex5 == 0 | sbsex5 == 8 | sbsex5 == 9 ;
replace sbsex6 = . sbsex6 == 0 | sbsex6 == 8 | sbsex6 == 9 ;
replace sbsex7 = . sbsex7 == 0 | sbsex7 == 8 | sbsex7 == 9 ;
replace sbsex8 = . sbsex8 == 0 | sbsex8 == 8 | sbsex8 == 9 ;
replace sbsex9 = . sbsex9 == 0 | sbsex9 == 8 | sbsex9 == 9 ;
replace sbyrbrn1 = . sbyrbrn1 == 0 | sbyrbrn1 == 9998 | sbyrbrn1 == 9999 ;
replace sbyrbrn2 = . sbyrbrn2 == 0 | sbyrbrn2 == 9998 | sbyrbrn2 == 9999 ;
replace sbyrbrn3 = . sbyrbrn3 == 0 | sbyrbrn3 == 9998 | sbyrbrn3 == 9999 ;
replace sbyrbrn4 = . sbyrbrn4 == 0 | sbyrbrn4 == 9998 | sbyrbrn4 == 9999 ;
replace sbyrbrn5 = . sbyrbrn5 == 0 | sbyrbrn5 == 9998 | sbyrbrn5 == 9999 ;
replace sbyrbrn6 = . sbyrbrn6 == 0 | sbyrbrn6 == 9998 | sbyrbrn6 == 9999 ;
replace sbyrbrn7 = . sbyrbrn7 == 0 | sbyrbrn7 == 9998 | sbyrbrn7 == 9999 ;
replace sbyrbrn8 = . sbyrbrn8 == 0 | sbyrbrn8 == 9998 | sbyrbrn8 == 9999 ;
replace sbyrbrn9 = . sbyrbrn9 == 0 | sbyrbrn9 == 9998 | sbyrbrn9 == 9999 ;
replace sbrel1 = . sbrel1 == 0 | sbrel1 == 8 | sbrel1 == 9 ;
replace sbrel2 = . sbrel2 == 0 | sbrel2 == 8 | sbrel2 == 9 ;
replace sbrel3 = . sbrel3 == 0 | sbrel3 == 8 | sbrel3 == 9 ;
replace sbrel4 = . sbrel4 == 0 | sbrel4 == 8 | sbrel4 == 9 ;
replace sbrel5 = . sbrel5 == 0 | sbrel5 == 8 | sbrel5 == 9 ;
replace sbrel6 = . sbrel6 == 0 | sbrel6 == 8 | sbrel6 == 9 ;
replace sbrel7 = . sbrel7 == 0 | sbrel7 == 8 | sbrel7 == 9 ;
replace sbrel8 = . sbrel8 == 0 | sbrel8 == 8 | sbrel8 == 9 ;
replace sbrel9 = . sbrel9 == 0 | sbrel9 == 8 | sbrel9 == 9 ;
replace sbalive1 = . sbalive1 == 0 | sbalive1 == 8 | sbalive1 == 9 ;
replace sbalive2 = . sbalive2 == 0 | sbalive2 == 8 | sbalive2 == 9 ;
replace sbalive3 = . sbalive3 == 0 | sbalive3 == 8 | sbalive3 == 9 ;
replace sbalive4 = . sbalive4 == 0 | sbalive4 == 8 | sbalive4 == 9 ;
replace sbalive5 = . sbalive5 == 0 | sbalive5 == 8 | sbalive5 == 9 ;
replace sbalive6 = . sbalive6 == 0 | sbalive6 == 8 | sbalive6 == 9 ;
replace sbalive7 = . sbalive7 == 0 | sbalive7 == 8 | sbalive7 == 9 ;
replace sbalive8 = . sbalive8 == 0 | sbalive8 == 8 | sbalive8 == 9 ;
replace sbalive9 = . sbalive9 == 0 | sbalive9 == 8 | sbalive9 == 9 ;
replace sbpicked = . sbpicked == -1 ;
replace sbeduc = . sbeduc == 97 | sbeduc == 98 | sbeduc == 99 ;
replace sbdeg = . sbdeg == 7 | sbdeg == 8 | sbdeg == 9 ;
replace sbwork1 = . sbwork1 == 0 | sbwork1 == 8 | sbwork1 == 9 ;
replace sbwork2 = . sbwork2 == 0 | sbwork2 == 8 | sbwork2 == 9 ;
replace sbevwork = . sbevwork == 0 | sbevwork == 8 | sbevwork == 9 ;
replace sbocc80 = . sbocc80 == 0 | sbocc80 == 998 | sbocc80 == 999 ;
replace sbpres80 = . sbpres80 == 0 ;
replace sbwrkslf = . sbwrkslf == 0 | sbwrkslf == 8 | sbwrkslf == 9 ;
replace sbind80 = . sbind80 == 0 | sbind80 == 998 | sbind80 == 999 ;
replace ethid = . ethid == 0 | ethid == 8 | ethid == 9 ;
replace amissue = . amissue == 0 | amissue == 8 | amissue == 9 ;
replace ethissue = . ethissue == 0 | ethissue == 8 | ethissue == 9 ;
replace ethid1 = . ethid1 == 0 | ethid1 == 8 | ethid1 == 9 ;
replace amissue1 = . amissue1 == 0 | amissue1 == 8 | amissue1 == 9 ;
replace ethissu1 = . ethissu1 == 0 | ethissu1 == 8 | ethissu1 == 9 ;
replace amrank = . amrank == 0 | amrank == 8 | amrank == 9 ;
replace amproud = . amproud == 0 | amproud == 8 | amproud == 9 ;
replace meltpot = . meltpot == 0 | meltpot == 8 | meltpot == 9 ;
replace gvtapart = . gvtapart == 0 | gvtapart == 8 | gvtapart == 9 ;
replace gvtmelt = . gvtmelt == 0 | gvtmelt == 8 | gvtmelt == 9 ;
replace ethorgs = . ethorgs == 0 | ethorgs == 8 | ethorgs == 9 ;
replace ethspkok = . ethspkok == 0 | ethspkok == 8 | ethspkok == 9 ;
replace ethspkno = . ethspkno == 0 | ethspkno == 8 | ethspkno == 9 ;
replace symptblk = . symptblk == 0 | symptblk == 8 | symptblk == 9 ;
replace admirblk = . admirblk == 0 | admirblk == 8 | admirblk == 9 ;
replace bilinged = . bilinged == 0 | bilinged == 8 | bilinged == 9 ;
replace engteach = . engteach == 0 | engteach == 8 | engteach == 9 ;
replace engballt = . engballt == 0 | engballt == 8 | engballt == 9 ;
replace engoffcl = . engoffcl == 0 | engoffcl == 8 | engoffcl == 9 ;
replace letin = . letin == 0 | letin == 8 | letin == 9 ;
replace hspasn10 = . hspasn10 == 0 | hspasn10 == 8 | hspasn10 == 9 ;
replace immecon = . immecon == 0 | immecon == 8 | immecon == 9 ;
replace immunemp = . immunemp == 0 | immunemp == 8 | immunemp == 9 ;
replace immunite = . immunite == 0 | immunite == 8 | immunite == 9 ;
replace immfare = . immfare == 0 | immfare == 8 | immfare == 9 ;
replace undocwrk = . undocwrk == 0 | undocwrk == 8 | undocwrk == 9 ;
replace undoccol = . undoccol == 0 | undoccol == 8 | undoccol == 9 ;
replace undockid = . undockid == 0 | undockid == 8 | undockid == 9 ;
replace immpush = . immpush == 0 | immpush == 8 | immpush == 9 ;
replace immwrkup = . immwrkup == 0 | immwrkup == 8 | immwrkup == 9 ;
replace colaff = . colaff == 0 | colaff == 8 | colaff == 9 ;
replace colaffy = . colaffy == 0 | colaffy == 8 | colaffy == 9 ;
replace discaffy = . discaffy == 0 | discaffy == 8 | discaffy == 9 ;
replace jobaff = . jobaff == 0 | jobaff == 8 | jobaff == 9 ;
replace owneth = . owneth == 0 | owneth == 8 | owneth == 9 ;
replace congeth = . congeth == 0 | congeth == 8 | congeth == 9 ;
replace teacheth = . teacheth == 0 | teacheth == 8 | teacheth == 9 ;
replace schleth = . schleth == 0 | schleth == 8 | schleth == 9 ;
replace ethhist = . ethhist == 0 | ethhist == 8 | ethhist == 9 ;
replace whoteach = . whoteach == 0 | whoteach == 8 | whoteach == 9 ;
replace whtgovt = . whtgovt == 0 | whtgovt == 8 | whtgovt == 9 ;
replace blkgovt = . blkgovt == 0 | blkgovt == 8 | blkgovt == 9 ;
replace hspgovt = . hspgovt == 0 | hspgovt == 8 | hspgovt == 9 ;
replace asngovt = . asngovt == 0 | asngovt == 8 | asngovt == 9 ;
replace wlthimm = . wlthimm == 0 | wlthimm == 8 | wlthimm == 9 ;
replace wlthundc = . wlthundc == 0 | wlthundc == 8 | wlthundc == 9 ;
replace workimm = . workimm == 0 | workimm == 8 | workimm == 9 ;
replace workundc = . workundc == 0 | workundc == 8 | workundc == 9 ;
replace obrespct = . obrespct == 0 | obrespct == 8 | obrespct == 9 ;
replace econpast = . econpast == 0 | econpast == 8 | econpast == 9 ;
replace pastup = . pastup == 0 | pastup == 8 | pastup == 9 ;
replace pastdown = . pastdown == 0 | pastdown == 8 | pastdown == 9 ;
replace econfutr = . econfutr == 0 | econfutr == 8 | econfutr == 9 ;
replace futrup = . futrup == 0 | futrup == 8 | futrup == 9 ;
replace futrdown = . futrdown == 0 | futrdown == 8 | futrdown == 9 ;
replace rdiscaff = . rdiscaff == 0 | rdiscaff == 8 | rdiscaff == 9 ;
replace rimmdisc = . rimmdisc == 0 | rimmdisc == 8 | rimmdisc == 9 ;
replace romance = . romance == 0 | romance == 8 | romance == 9 ;
replace livewith = . livewith == 0 | livewith == 8 | livewith == 9 ;
replace haprom = . haprom == 0 | haprom == 8 | haprom == 9 ;
replace willwed1 = . willwed1 == 0 | willwed1 == 8 | willwed1 == 9 ;
replace willwed2 = . willwed2 == 0 | willwed2 == 8 | willwed2 == 9 ;
replace hapgirls = . hapgirls == 0 | hapgirls == 8 | hapgirls == 9 ;
replace hapboys = . hapboys == 0 | hapboys == 8 | hapboys == 9 ;
replace fejobaff = . fejobaff == 0 | fejobaff == 8 | fejobaff == 9 ;
replace tradmod = . tradmod == 0 | tradmod == 8 | tradmod == 9 ;
replace sharesep = . sharesep == 0 | sharesep == 8 | sharesep == 9 ;
replace emoteoth = . emoteoth == 0 | emoteoth == 8 | emoteoth == 9 ;
replace rhmewrk = . rhmewrk == 0 | rhmewrk == 8 | rhmewrk == 9 ;
replace sphmewrk = . sphmewrk == 0 | sphmewrk == 8 | sphmewrk == 9 ;
replace fairhwrk = . fairhwrk == 0 | fairhwrk == 8 | fairhwrk == 9 ;
replace earnmore = . earnmore == 0 | earnmore == 8 | earnmore == 9 ;
replace famlife = . famlife == 0 | famlife == 8 | famlife == 9 ;
replace worklife = . worklife == 0 | worklife == 8 | worklife == 9 ;
replace balwkfam = . balwkfam == 0 | balwkfam == 8 | balwkfam == 9 ;
replace refpromo = . refpromo == 0 | refpromo == 8 | refpromo == 9 ;
replace refmorwk = . refmorwk == 0 | refmorwk == 8 | refmorwk == 9 ;
replace refxhour = . refxhour == 0 | refxhour == 8 | refxhour == 9 ;
replace workless = . workless == 0 | workless == 8 | workless == 9 ;
replace noathome = . noathome == 0 | noathome == 8 | noathome == 9 ;
replace nonurse = . nonurse == 0 | nonurse == 8 | nonurse == 9 ;
replace nohmewrk = . nohmewrk == 0 | nohmewrk == 8 | nohmewrk == 9 ;
replace discaffm = . discaffm == 0 | discaffm == 8 | discaffm == 9 ;
replace discaffw = . discaffw == 0 | discaffw == 8 | discaffw == 9 ;
replace flextime = . flextime == 0 | flextime == 8 | flextime == 9 ;
replace parleave = . parleave == 0 | parleave == 8 | parleave == 9 ;
replace menben = . menben == 0 | menben == 8 | menben == 9 ;
replace womenben = . womenben == 0 | womenben == 8 | womenben == 9 ;
replace chldben = . chldben == 0 | chldben == 8 | chldben == 9 ;
replace allben = . allben == 0 | allben == 8 | allben == 9 ;
replace nooneben = . nooneben == 0 | nooneben == 8 | nooneben == 9 ;
replace menhrt = . menhrt == 0 | menhrt == 8 | menhrt == 9 ;
replace womenhrt = . womenhrt == 0 | womenhrt == 8 | womenhrt == 9 ;
replace chldhrt = . chldhrt == 0 | chldhrt == 8 | chldhrt == 9 ;
replace allhrt = . allhrt == 0 | allhrt == 8 | allhrt == 9 ;
replace noonehrt = . noonehrt == 0 | noonehrt == 8 | noonehrt == 9 ;
replace feless1 = . feless1 == 0 | feless1 == 8 | feless1 == 9 ;
replace feless2 = . feless2 == 0 | feless2 == 8 | feless2 == 9 ;
replace feless3 = . feless3 == 0 | feless3 == 8 | feless3 == 9 ;
replace fekids1 = . fekids1 == 0 | fekids1 == 8 | fekids1 == 9 ;
replace fekids2 = . fekids2 == 0 | fekids2 == 8 | fekids2 == 9 ;
replace fekids3 = . fekids3 == 0 | fekids3 == 8 | fekids3 == 9 ;
replace fekids4 = . fekids4 == 0 | fekids4 == 8 | fekids4 == 9 ;
replace fekids5 = . fekids5 == 0 | fekids5 == 8 | fekids5 == 9 ;
replace mebear = . mebear == 0 | mebear == 8 | mebear == 9 ;
replace fehire = . fehire == 0 | fehire == 8 | fehire == 9 ;
replace feminist = . feminist == 0 | feminist == 8 | feminist == 9 ;
replace fenews = . fenews == 0 | fenews == 8 | fenews == 9 ;
replace hmemaker = . hmemaker == 0 | hmemaker == 8 | hmemaker == 9 ;
replace wrkclass = . wrkclass == 0 | wrkclass == 8 | wrkclass == 9 ;
replace manprof = . manprof == 0 | manprof == 8 | manprof == 9 ;
replace men = . men == 0 | men == 8 | men == 9 ;
replace children = . children == 0 | children == 8 | children == 9 ;
replace yourself = . yourself == 0 | yourself == 8 | yourself == 9 ;
replace shakeblu = . shakeblu == -1 | shakeblu == 8 | shakeblu == 9 ;
replace calm = . calm == -1 | calm == 8 | calm == 9 ;
replace outraged = . outraged == -1 | outraged == 8 | outraged == 9 ;
replace hapfeel = . hapfeel == -1 | hapfeel == 8 | hapfeel == 9 ;
replace sad = . sad == -1 | sad == 8 | sad == 9 ;
replace ashamed = . ashamed == -1 | ashamed == 8 | ashamed == 9 ;
replace excited = . excited == -1 | excited == 8 | excited == 9 ;
replace lonely = . lonely == -1 | lonely == 8 | lonely == 9 ;
replace fearful = . fearful == -1 | fearful == 8 | fearful == 9 ;
replace ovrjoyed = . ovrjoyed == -1 | ovrjoyed == 8 | ovrjoyed == 9 ;
replace worried = . worried == -1 | worried == 8 | worried == 9 ;
replace contentd = . contentd == -1 | contentd == 8 | contentd == 9 ;
replace anxious = . anxious == -1 | anxious == 8 | anxious == 9 ;
replace restless = . restless == -1 | restless == 8 | restless == 9 ;
replace madat = . madat == -1 | madat == 8 | madat == 9 ;
replace atease = . atease == -1 | atease == 8 | atease == 9 ;
replace angry = . angry == -1 | angry == 8 | angry == 9 ;
replace embarrss = . embarrss == -1 | embarrss == 8 | embarrss == 9 ;
replace proud = . proud == -1 | proud == 8 | proud == 9 ;
replace noplan = . noplan == 0 | noplan == 8 | noplan == 9 ;
replace badbrks = . badbrks == 0 | badbrks == 8 | badbrks == 9 ;
replace mostluck = . mostluck == 0 | mostluck == 8 | mostluck == 9 ;
replace litcntrl = . litcntrl == 0 | litcntrl == 8 | litcntrl == 9 ;
replace showangr = . showangr == 0 | showangr == 8 | showangr == 9 ;
replace showfeel = . showfeel == 0 | showfeel == 8 | showfeel == 9 ;
replace noemote = . noemote == 0 | noemote == 8 | noemote == 9 ;
replace notupset = . notupset == 0 | notupset == 8 | notupset == 9 ;
replace beplesnt = . beplesnt == 0 | beplesnt == 8 | beplesnt == 9 ;
replace notworry = . notworry == 0 | notworry == 8 | notworry == 9 ;
replace angrywrk = . angrywrk == 0 | angrywrk == 8 | angrywrk == 9 ;
replace angryfam = . angryfam == 0 | angryfam == 8 | angryfam == 9 ;
replace angrygvt = . angrygvt == 0 | angrygvt == 8 | angrygvt == 9 ;
replace angrywhy = . angrywhy == 0 | angrywhy == 98 | angrywhy == 99 ;
replace angryev = . angryev == 0 | angryev == 8 | angryev == 9 ;
replace whnangry = . whnangry == 0 | whnangry == 8 | whnangry == 9 ;
replace madat1 = . madat1 == 0 | madat1 == 8 | madat1 == 9 ;
replace madat2 = . madat2 == 0 | madat2 == 8 | madat2 == 9 ;
replace madat3 = . madat3 == 0 | madat3 == 8 | madat3 == 9 ;
replace madat4 = . madat4 == 0 | madat4 == 8 | madat4 == 9 ;
replace madat5 = . madat5 == 0 | madat5 == 8 | madat5 == 9 ;
replace madat6 = . madat6 == 0 | madat6 == 8 | madat6 == 9 ;
replace madat7 = . madat7 == 0 | madat7 == 8 | madat7 == 9 ;
replace madat8 = . madat8 == 0 | madat8 == 8 | madat8 == 9 ;
replace madat9 = . madat9 == 0 | madat9 == 8 | madat9 == 9 ;
replace madat10 = . madat10 == 0 | madat10 == 8 | madat10 == 9 ;
replace madat11 = . madat11 == 0 | madat11 == 8 | madat11 == 9 ;
replace madat12 = . madat12 == 0 | madat12 == 8 | madat12 == 9 ;
replace madat13 = . madat13 == 0 | madat13 == 8 | madat13 == 9 ;
replace madat14 = . madat14 == 0 | madat14 == 8 | madat14 == 9 ;
replace madat15 = . madat15 == 0 | madat15 == 8 | madat15 == 9 ;
replace madat16 = . madat16 == 0 | madat16 == 8 | madat16 == 9 ;
replace madat17 = . madat17 == 0 | madat17 == 8 | madat17 == 9 ;
replace madat18 = . madat18 == 0 | madat18 == 8 | madat18 == 9 ;
replace madat19 = . madat19 == 0 | madat19 == 8 | madat19 == 9 ;
replace madat20 = . madat20 == 0 | madat20 == 8 | madat20 == 9 ;
replace madat21 = . madat21 == 0 | madat21 == 8 | madat21 == 9 ;
replace madat22 = . madat22 == 0 | madat22 == 8 | madat22 == 9 ;
replace madat23 = . madat23 == 0 | madat23 == 9 ;
replace howangry = . howangry == -1 | howangry == 98 | howangry == 99 ;
replace angrlast = . angrlast == 0 | angrlast == 8 | angrlast == 9 ;
replace thnkangr = . thnkangr == 0 | thnkangr == 8 | thnkangr == 9 ;
replace chnang1 = . chnang1 == 0 | chnang1 == 8 | chnang1 == 9 ;
replace chnang2 = . chnang2 == 0 | chnang2 == 8 | chnang2 == 9 ;
replace chnang3 = . chnang3 == 0 | chnang3 == 8 | chnang3 == 9 ;
replace chnang4 = . chnang4 == 0 | chnang4 == 8 | chnang4 == 9 ;
replace chnang5 = . chnang5 == 0 | chnang5 == 8 | chnang5 == 9 ;
replace chnang6 = . chnang6 == 0 | chnang6 == 8 | chnang6 == 9 ;
replace chnang7 = . chnang7 == 0 | chnang7 == 8 | chnang7 == 9 ;
replace chnang8 = . chnang8 == 0 | chnang8 == 8 | chnang8 == 9 ;
replace chnang9 = . chnang9 == 0 | chnang9 == 8 | chnang9 == 9 ;
replace chnang10 = . chnang10 == 0 | chnang10 == 8 | chnang10 == 9 ;
replace chnang11 = . chnang11 == 0 | chnang11 == 8 | chnang11 == 9 ;
replace chnang12 = . chnang12 == 0 | chnang12 == 8 | chnang12 == 9 ;
replace chnang13 = . chnang13 == 0 | chnang13 == 8 | chnang13 == 9 ;
replace chnang14 = . chnang14 == 0 | chnang14 == 8 | chnang14 == 9 ;
replace chnang15 = . chnang15 == 0 | chnang15 == 8 | chnang15 == 9 ;
replace chnang16 = . chnang16 == 0 | chnang16 == 8 | chnang16 == 9 ;
replace reactok = . reactok == -1 | reactok == 98 | reactok == 99 ;
replace othresp = . othresp == -1 | othresp == 98 | othresp == 99 ;
replace selfresp = . selfresp == -1 | selfresp == 98 | selfresp == 99 ;
replace likeoth = . likeoth == 0 | likeoth == 8 | likeoth == 9 ;
replace amimp = . amimp == -1 | amimp == 98 | amimp == 99 ;
replace notam = . notam == 0 | notam == 8 | notam == 9 ;
replace usworry = . usworry == 0 | usworry == 8 | usworry == 9 ;
replace ussat = . ussat == 0 | ussat == 8 | ussat == 9 ;
replace usfrustr = . usfrustr == 0 | usfrustr == 8 | usfrustr == 9 ;
replace usenthus = . usenthus == 0 | usenthus == 8 | usenthus == 9 ;
replace usangry = . usangry == 0 | usangry == 8 | usangry == 9 ;
replace ushopefl = . ushopefl == 0 | ushopefl == 8 | ushopefl == 9 ;
replace usupset = . usupset == 0 | usupset == 8 | usupset == 9 ;
replace carprivt = . carprivt == 0 | carprivt == 8 | carprivt == 9 ;
replace relprivt = . relprivt == 0 | relprivt == 8 | relprivt == 9 ;
replace warrntyc = . warrntyc == 0 | warrntyc == 8 | warrntyc == 9 ;
replace cardealr = . cardealr == 0 | cardealr == 8 | cardealr == 9 ;
replace newused = . newused == 0 | newused == 8 | newused == 9 ;
replace typdealr = . typdealr == 0 | typdealr == 8 | typdealr == 9 ;
replace carbuya = . carbuya == 0 | carbuya == 8 | carbuya == 9 ;
replace carbuyb = . carbuyb == 0 | carbuyb == 8 | carbuyb == 9 ;
replace carbuyc = . carbuyc == 0 | carbuyc == 8 | carbuyc == 9 ;
replace carbuyd = . carbuyd == 0 | carbuyd == 8 | carbuyd == 9 ;
replace carbuye = . carbuye == 0 | carbuye == 8 | carbuye == 9 ;
replace carbuyf = . carbuyf == 0 | carbuyf == 8 | carbuyf == 9 ;
replace carbuyg = . carbuyg == 0 | carbuyg == 8 | carbuyg == 9 ;
replace carbuy1 = . carbuy1 == 0 | carbuy1 == 8 | carbuy1 == 9 ;
replace reldealr = . reldealr == 0 | reldealr == 8 | reldealr == 9 ;
replace satcar = . satcar == 0 | satcar == 8 | satcar == 9 ;
replace evbuyhme = . evbuyhme == 0 | evbuyhme == 8 | evbuyhme == 9 ;
replace homeyear = . homeyear == 0 | homeyear == 98 | homeyear == 99 ;
replace learnhme = . learnhme == 0 | learnhme == 8 | learnhme == 9 ;
replace newowned = . newowned == 0 | newowned == 8 | newowned == 9 ;
replace relhome = . relhome == 0 | relhome == 8 | relhome == 9 ;
replace whosold = . whosold == 0 | whosold == 8 | whosold == 9 ;
replace realtora = . realtora == 0 | realtora == 8 | realtora == 9 ;
replace realtorb = . realtorb == 0 | realtorb == 8 | realtorb == 9 ;
replace realtorc = . realtorc == 0 | realtorc == 8 | realtorc == 9 ;
replace realtord = . realtord == 0 | realtord == 8 | realtord == 9 ;
replace realtore = . realtore == 0 | realtore == 8 | realtore == 9 ;
replace realtorf = . realtorf == 0 | realtorf == 8 | realtorf == 9 ;
replace realtor1 = . realtor1 == 0 | realtor1 == 9 ;
replace relagent = . relagent == 0 | relagent == 8 | relagent == 9 ;
replace warrntyh = . warrntyh == 0 | warrntyh == 8 | warrntyh == 9 ;
replace sathome = . sathome == 0 | sathome == 8 | sathome == 9 ;
replace lawyer = . lawyer == 0 | lawyer == 8 | lawyer == 9 ;
replace lawyera = . lawyera == 0 | lawyera == 8 | lawyera == 9 ;
replace lawyerb = . lawyerb == 0 | lawyerb == 8 | lawyerb == 9 ;
replace lawyerc = . lawyerc == 0 | lawyerc == 8 | lawyerc == 9 ;
replace lawyerd = . lawyerd == 0 | lawyerd == 8 | lawyerd == 9 ;
replace lawyere = . lawyere == 0 | lawyere == 8 | lawyere == 9 ;
replace lawyerf = . lawyerf == 0 | lawyerf == 8 | lawyerf == 9 ;
replace lawyerg = . lawyerg == 0 | lawyerg == 8 | lawyerg == 9 ;
replace lawyer1 = . lawyer1 == 0 | lawyer1 == 8 | lawyer1 == 9 ;
replace rellaw = . rellaw == 0 | rellaw == 8 | rellaw == 9 ;
replace satlawyr = . satlawyr == 0 | satlawyr == 8 | satlawyr == 9 ;
replace fixhome = . fixhome == 0 | fixhome == 8 | fixhome == 9 ;
replace fixera = . fixera == 0 | fixera == 8 | fixera == 9 ;
replace fixerb = . fixerb == 0 | fixerb == 8 | fixerb == 9 ;
replace fixerc = . fixerc == 0 | fixerc == 8 | fixerc == 9 ;
replace fixerd = . fixerd == 0 | fixerd == 8 | fixerd == 9 ;
replace fixere = . fixere == 0 | fixere == 8 | fixere == 9 ;
replace fixerf = . fixerf == 0 | fixerf == 8 | fixerf == 9 ;
replace fixer1 = . fixer1 == 0 | fixer1 == 8 | fixer1 == 9 ;
replace relfixer = . relfixer == 0 | relfixer == 8 | relfixer == 9 ;
replace satfixes = . satfixes == 0 | satfixes == 8 | satfixes == 9 ;
replace borrowed = . borrowed == 0 | borrowed == 8 | borrowed == 9 ;
replace wholoand = . wholoand == 0 | wholoand == 8 | wholoand == 9 ;
replace sellbed = . sellbed == 0 | sellbed == 8 | sellbed == 9 ;
replace sellauto = . sellauto == 0 | sellauto == 8 | sellauto == 9 ;
replace sellhome = . sellhome == 0 | sellhome == 8 | sellhome == 9 ;
replace transoth = . transoth == 0 | transoth == 8 | transoth == 9 ;
replace loaned = . loaned == 0 | loaned == 8 | loaned == 9 ;
replace loanedto = . loanedto == 0 | loanedto == 8 | loanedto == 9 ;
replace buybed = . buybed == 0 | buybed == 8 | buybed == 9 ;
replace buyauto = . buyauto == 0 | buyauto == 8 | buyauto == 9 ;
replace buylaw = . buylaw == 0 | buylaw == 8 | buylaw == 9 ;
replace buyfixes = . buyfixes == 0 | buyfixes == 8 | buyfixes == 9 ;
replace buyhome = . buyhome == 0 | buyhome == 8 | buyhome == 9 ;
replace transrel = . transrel == 0 | transrel == 8 | transrel == 9 ;
replace frnddeal = . frnddeal == 0 | frnddeal == 8 | frnddeal == 9 ;
replace frndawk = . frndawk == 0 | frndawk == 8 | frndawk == 9 ;
replace tablprce = . tablprce == 0 | tablprce == 8 | tablprce == 9 ;
replace organsb = . organsb == 0 | organsb == 8 | organsb == 9 ;
replace organsw = . organsw == 0 | organsw == 8 | organsw == 9 ;
replace sellorgn = . sellorgn == 0 | sellorgn == 8 | sellorgn == 9 ;
replace adoption = . adoption == 0 | adoption == 8 | adoption == 9 ;
replace sellbaby = . sellbaby == 0 | sellbaby == 8 | sellbaby == 9 ;
replace sellsex = . sellsex == 0 | sellsex == 8 | sellsex == 9 ;
replace reqinfo = . reqinfo == 0 | reqinfo == 8 | reqinfo == 9 ;
replace natrecon = . natrecon == 0 | natrecon == 8 | natrecon == 9 ;
replace tagsales = . tagsales == 0 | tagsales == 8 | tagsales == 9 ;
replace haggle = . haggle == 0 | haggle == 8 | haggle == 9 ;
replace wkfambiz = . wkfambiz == 0 | wkfambiz == 8 | wkfambiz == 9 ;
replace hrfambiz = . hrfambiz == 0 | hrfambiz == 8 | hrfambiz == 9 ;
replace fambiz = . fambiz == 0 | fambiz == 98 | fambiz == 99 ;
replace econsys = . econsys == 0 | econsys == 8 | econsys == 9 ;
replace famfinan = . famfinan == 0 | famfinan == 8 | famfinan == 9 ;
replace decauto = . decauto == 0 | decauto == 8 | decauto == 9 ;
replace decbed = . decbed == 0 | decbed == 8 | decbed == 9 ;
replace decgift = . decgift == 0 | decgift == 8 | decgift == 9 ;
replace layoffs = . layoffs == 0 | layoffs == 98 | layoffs == 99 ;
replace volhlth = . volhlth == 0 | volhlth == 8 | volhlth == 9 ;
replace voleduc = . voleduc == 0 | voleduc == 8 | voleduc == 9 ;
replace volrelig = . volrelig == 0 | volrelig == 8 | volrelig == 9 ;
replace volhuman = . volhuman == 0 | volhuman == 8 | volhuman == 9 ;
replace volenvir = . volenvir == 0 | volenvir == 8 | volenvir == 9 ;
replace volpub = . volpub == 0 | volpub == 8 | volpub == 9 ;
replace volrec = . volrec == 0 | volrec == 8 | volrec == 9 ;
replace volart = . volart == 0 | volart == 8 | volart == 9 ;
replace volwork = . volwork == 0 | volwork == 8 | volwork == 9 ;
replace volpol = . volpol == 0 | volpol == 8 | volpol == 9 ;
replace volyouth = . volyouth == 0 | volyouth == 8 | volyouth == 9 ;
replace volfound = . volfound == 0 | volfound == 8 | volfound == 9 ;
replace volintl = . volintl == 0 | volintl == 8 | volintl == 9 ;
replace volinfrm = . volinfrm == 0 | volinfrm == 8 | volinfrm == 9 ;
replace voloth = . voloth == 0 | voloth == 8 | voloth == 9 ;
replace monhlth = . monhlth == 0 | monhlth == 8 | monhlth == 9 ;
replace moneduc = . moneduc == 0 | moneduc == 8 | moneduc == 9 ;
replace monrelig = . monrelig == 0 | monrelig == 8 | monrelig == 9 ;
replace monhuman = . monhuman == 0 | monhuman == 8 | monhuman == 9 ;
replace monenvir = . monenvir == 0 | monenvir == 8 | monenvir == 9 ;
replace monpub = . monpub == 0 | monpub == 8 | monpub == 9 ;
replace monrec = . monrec == 0 | monrec == 8 | monrec == 9 ;
replace monart = . monart == 0 | monart == 8 | monart == 9 ;
replace monwork = . monwork == 0 | monwork == 8 | monwork == 9 ;
replace monpol = . monpol == 0 | monpol == 8 | monpol == 9 ;
replace monyouth = . monyouth == 0 | monyouth == 8 | monyouth == 9 ;
replace monfound = . monfound == 0 | monfound == 8 | monfound == 9 ;
replace monintl = . monintl == 0 | monintl == 8 | monintl == 9 ;
replace moninfrm = . moninfrm == 0 | moninfrm == 8 | moninfrm == 9 ;
replace monoth = . monoth == 0 | monoth == 8 | monoth == 9 ;
replace hrshlth = . hrshlth == -1 | hrshlth == 98 | hrshlth == 99 ;
replace hrseduc = . hrseduc == -1 | hrseduc == 98 | hrseduc == 99 ;
replace hrsrelig = . hrsrelig == -1 | hrsrelig == 98 | hrsrelig == 99 ;
replace hrshuman = . hrshuman == -1 | hrshuman == 98 | hrshuman == 99 ;
replace hrsenvir = . hrsenvir == -1 | hrsenvir == 98 | hrsenvir == 99 ;
replace hrspub = . hrspub == -1 | hrspub == 98 | hrspub == 99 ;
replace hrsrec = . hrsrec == -1 | hrsrec == 98 | hrsrec == 99 ;
replace hrsart = . hrsart == -1 | hrsart == 98 | hrsart == 99 ;
replace hrswork = . hrswork == -1 | hrswork == 98 | hrswork == 99 ;
replace hrspol = . hrspol == -1 | hrspol == 98 | hrspol == 99 ;
replace hrsyouth = . hrsyouth == -1 | hrsyouth == 98 | hrsyouth == 99 ;
replace hrsfound = . hrsfound == -1 | hrsfound == 98 | hrsfound == 99 ;
replace hrsintl = . hrsintl == -1 | hrsintl == 98 | hrsintl == 99 ;
replace hrsinfrm = . hrsinfrm == -1 | hrsinfrm == 98 | hrsinfrm == 99 ;
replace hrsoth = . hrsoth == -1 | hrsoth == 98 | hrsoth == 99 ;
replace givhlth = . givhlth == 0 | givhlth == 8 | givhlth == 9 ;
replace giveduc = . giveduc == 0 | giveduc == 8 | giveduc == 9 ;
replace givrelig = . givrelig == 0 | givrelig == 8 | givrelig == 9 ;
replace givhuman = . givhuman == 0 | givhuman == 8 | givhuman == 9 ;
replace givenvir = . givenvir == 0 | givenvir == 8 | givenvir == 9 ;
replace givpub = . givpub == 0 | givpub == 8 | givpub == 9 ;
replace givrec = . givrec == 0 | givrec == 8 | givrec == 9 ;
replace givart = . givart == 0 | givart == 8 | givart == 9 ;
replace givwork = . givwork == 0 | givwork == 8 | givwork == 9 ;
replace givpol = . givpol == 0 | givpol == 8 | givpol == 9 ;
replace givyouth = . givyouth == 0 | givyouth == 8 | givyouth == 9 ;
replace givfound = . givfound == 0 | givfound == 8 | givfound == 9 ;
replace givintl = . givintl == 0 | givintl == 8 | givintl == 9 ;
replace givinfrm = . givinfrm == 0 | givinfrm == 8 | givinfrm == 9 ;
replace givoth = . givoth == 0 | givoth == 8 | givoth == 9 ;
replace tothlth = . tothlth == -1 | tothlth == 99998 | tothlth == 99999 ;
replace toteduc = . toteduc == -1 | toteduc == 99998 | toteduc == 99999 ;
replace totrelig = . totrelig == -1 | totrelig == 99998 | totrelig == 99999 ;
replace tothuman = . tothuman == -1 | tothuman == 99998 | tothuman == 99999 ;
replace totenvir = . totenvir == -1 | totenvir == 99998 | totenvir == 99999 ;
replace totpub = . totpub == -1 | totpub == 99998 | totpub == 99999 ;
replace totrec = . totrec == -1 | totrec == 99998 | totrec == 99999 ;
replace totart = . totart == -1 | totart == 99998 | totart == 99999 ;
replace totwork = . totwork == -1 | totwork == 99998 | totwork == 99999 ;
replace totpol = . totpol == -1 | totpol == 99998 | totpol == 99999 ;
replace totyouth = . totyouth == -1 | totyouth == 99998 | totyouth == 99999 ;
replace totfound = . totfound == -1 | totfound == 99998 | totfound == 99999 ;
replace totintl = . totintl == -1 | totintl == 99998 | totintl == 99999 ;
replace totinfrm = . totinfrm == -1 | totinfrm == 99998 | totinfrm == 99999 ;
replace tototh = . tototh == -1 | tototh == 99998 | tototh == 99999 ;
replace valhlth = . valhlth == -1 | valhlth == 99998 | valhlth == 99999 ;
replace valeduc = . valeduc == -1 | valeduc == 99998 | valeduc == 99999 ;
replace valrelig = . valrelig == -1 | valrelig == 99998 | valrelig == 99999 ;
replace valhuman = . valhuman == -1 | valhuman == 99998 | valhuman == 99999 ;
replace valenvir = . valenvir == -1 | valenvir == 99998 | valenvir == 99999 ;
replace valpub = . valpub == -1 | valpub == 99998 | valpub == 99999 ;
replace valrec = . valrec == -1 | valrec == 99998 | valrec == 99999 ;
replace valart = . valart == -1 | valart == 99998 | valart == 99999 ;
replace valwork = . valwork == -1 | valwork == 99998 | valwork == 99999 ;
replace valpol = . valpol == -1 | valpol == 99998 | valpol == 99999 ;
replace valyouth = . valyouth == -1 | valyouth == 99998 | valyouth == 99999 ;
replace valfound = . valfound == -1 | valfound == 99998 | valfound == 99999 ;
replace valintl = . valintl == -1 | valintl == 99998 | valintl == 99999 ;
replace valinfrm = . valinfrm == -1 | valinfrm == 99998 | valinfrm == 99999 ;
replace valoth = . valoth == -1 | valoth == 99998 | valoth == 99999 ;
replace homeless = . homeless == 0 | homeless == 8 | homeless == 9 ;
replace needynei = . needynei == 0 | needynei == 8 | needynei == 9 ;
replace needyrel = . needyrel == 0 | needyrel == 8 | needyrel == 9 ;
replace needyfrd = . needyfrd == 0 | needyfrd == 8 | needyfrd == 9 ;
replace needyoth = . needyoth == 0 | needyoth == 8 | needyoth == 9 ;
replace probfix1 = . probfix1 == 0 | probfix1 == 98 | probfix1 == 99 ;
replace probfix2 = . probfix2 == 0 | probfix2 == 98 | probfix2 == 99 ;
replace probfix3 = . probfix3 == 0 | probfix3 == 98 | probfix3 == 99 ;
replace probhlp1 = . probhlp1 == 0 | probhlp1 == 998 | probhlp1 == 999 ;
replace probhlp2 = . probhlp2 == 0 | probhlp2 == 998 | probhlp2 == 999 ;
replace probhlp3 = . probhlp3 == 0 | probhlp3 == 998 | probhlp3 == 999 ;
replace vigversn = . vigversn == 0 | vigversn == 98 | vigversn == 99 ;
replace seriousp = . seriousp == 0 | seriousp == 8 | seriousp == 9 ;
replace charactr = . charactr == 0 | charactr == 8 | charactr == 9 ;
replace imbalnce = . imbalnce == 0 | imbalnce == 8 | imbalnce == 9 ;
replace wayraise = . wayraise == 0 | wayraise == 8 | wayraise == 9 ;
replace stresses = . stresses == 0 | stresses == 8 | stresses == 9 ;
replace genetics = . genetics == 0 | genetics == 8 | genetics == 9 ;
replace godswill = . godswill == 0 | godswill == 8 | godswill == 9 ;
replace upsdowns = . upsdowns == 0 | upsdowns == 8 | upsdowns == 9 ;
replace breakdwn = . breakdwn == 0 | breakdwn == 8 | breakdwn == 9 ;
replace mentlill = . mentlill == 0 | mentlill == 8 | mentlill == 9 ;
replace physill = . physill == 0 | physill == 8 | physill == 9 ;
replace viglabel = . viglabel == 0 | viglabel == 8 | viglabel == 9 ;
replace dectreat = . dectreat == 0 | dectreat == 8 | dectreat == 9 ;
replace decmoney = . decmoney == 0 | decmoney == 8 | decmoney == 9 ;
replace imprvown = . imprvown == 0 | imprvown == 8 | imprvown == 9 ;
replace imprvtrt = . imprvtrt == 0 | imprvtrt == 8 | imprvtrt == 9 ;
replace vignei = . vignei == 0 | vignei == 8 | vignei == 9 ;
replace vigsoc = . vigsoc == 0 | vigsoc == 8 | vigsoc == 9 ;
replace vigfrnd = . vigfrnd == 0 | vigfrnd == 8 | vigfrnd == 9 ;
replace vigwork = . vigwork == 0 | vigwork == 8 | vigwork == 9 ;
replace viggrp = . viggrp == 0 | viggrp == 8 | viggrp == 9 ;
replace vigmar = . vigmar == 0 | vigmar == 8 | vigmar == 9 ;
replace hurtoth = . hurtoth == 0 | hurtoth == 8 | hurtoth == 9 ;
replace hurtself = . hurtself == 0 | hurtself == 8 | hurtself == 9 ;
replace tlkfam = . tlkfam == 0 | tlkfam == 8 | tlkfam == 9 ;
replace tlkclrgy = . tlkclrgy == 0 | tlkclrgy == 8 | tlkclrgy == 9 ;
replace meddoc = . meddoc == 0 | meddoc == 8 | meddoc == 9 ;
replace mentldoc = . mentldoc == 0 | mentldoc == 8 | mentldoc == 9 ;
replace mentloth = . mentloth == 0 | mentloth == 8 | mentloth == 9 ;
replace sphealer = . sphealer == 0 | sphealer == 8 | sphealer == 9 ;
replace selfhelp = . selfhelp == 0 | selfhelp == 8 | selfhelp == 9 ;
replace otcmed = . otcmed == 0 | otcmed == 8 | otcmed == 9 ;
replace rxmed = . rxmed == 0 | rxmed == 8 | rxmed == 9 ;
replace mentlhos = . mentlhos == 0 | mentlhos == 8 | mentlhos == 9 ;
replace ortlkfm = . ortlkfm == 0 | ortlkfm == 98 | ortlkfm == 99 ;
replace ortlkclr = . ortlkclr == 0 | ortlkclr == 98 | ortlkclr == 99 ;
replace ormeddoc = . ormeddoc == 0 | ormeddoc == 98 | ormeddoc == 99 ;
replace ormntldc = . ormntldc == 0 | ormntldc == 98 | ormntldc == 99 ;
replace ormntlot = . ormntlot == 0 | ormntlot == 98 | ormntlot == 99 ;
replace orhealer = . orhealer == 0 | orhealer == 98 | orhealer == 99 ;
replace orslfhlp = . orslfhlp == 0 | orslfhlp == 98 | orslfhlp == 99 ;
replace orotcmed = . orotcmed == 0 | orotcmed == 98 | orotcmed == 99 ;
replace orrxmed = . orrxmed == 0 | orrxmed == 98 | orrxmed == 99 ;
replace ormntlhs = . ormntlhs == 0 | ormntlhs == 98 | ormntlhs == 99 ;
replace mustdoc = . mustdoc == 0 | mustdoc == 8 | mustdoc == 9 ;
replace mustmed = . mustmed == 0 | mustmed == 8 | mustmed == 9 ;
replace musthosp = . musthosp == 0 | musthosp == 8 | musthosp == 9 ;
replace dangrslf = . dangrslf == 0 | dangrslf == 8 | dangrslf == 9 ;
replace dangroth = . dangroth == 0 | dangroth == 8 | dangroth == 9 ;
replace medcare1 = . medcare1 == 0 | medcare1 == 8 | medcare1 == 9 ;
replace medcare2 = . medcare2 == 0 | medcare2 == 8 | medcare2 == 9 ;
replace spmentl = . spmentl == 0 | spmentl == 8 | spmentl == 9 ;
replace govmentl = . govmentl == 0 | govmentl == 8 | govmentl == 9 ;
replace mntlas1 = . mntlas1 == 0 | mntlas1 == 98 | mntlas1 == 99 ;
replace mntlas2 = . mntlas2 == 0 | mntlas2 == 98 | mntlas2 == 99 ;
replace mntlimp1 = . mntlimp1 == 0 | mntlimp1 == 998 | mntlimp1 == 999 ;
replace mntlimp2 = . mntlimp2 == 0 | mntlimp2 == 998 | mntlimp2 == 999 ;
replace mntlimp3 = . mntlimp3 == 0 | mntlimp3 == 998 | mntlimp3 == 999 ;
replace mntlsym1 = . mntlsym1 == 0 | mntlsym1 == 998 | mntlsym1 == 999 ;
replace mntlsym2 = . mntlsym2 == 0 | mntlsym2 == 998 | mntlsym2 == 999 ;
replace mntlsym3 = . mntlsym3 == 0 | mntlsym3 == 998 | mntlsym3 == 999 ;
replace mntloth = . mntloth == 0 | mntloth == 9999 ;
replace brkdas1 = . brkdas1 == 0 | brkdas1 == 98 | brkdas1 == 99 ;
replace brkdas2 = . brkdas2 == 0 | brkdas2 == 98 | brkdas2 == 99 ;
replace brkdimp1 = . brkdimp1 == 0 | brkdimp1 == 998 | brkdimp1 == 999 ;
replace brkdimp2 = . brkdimp2 == 0 | brkdimp2 == 998 | brkdimp2 == 999 ;
replace brkdimp3 = . brkdimp3 == 0 | brkdimp3 == 998 | brkdimp3 == 999 ;
replace brkdsym1 = . brkdsym1 == 0 | brkdsym1 == 998 | brkdsym1 == 999 ;
replace brkdsym2 = . brkdsym2 == 0 | brkdsym2 == 998 | brkdsym2 == 999 ;
replace brkdsym3 = . brkdsym3 == 0 | brkdsym3 == 998 | brkdsym3 == 999 ;
replace brkdoth = . brkdoth == 0 | brkdoth == 9999 ;
replace knwmhosp = . knwmhosp == 0 | knwmhosp == 8 | knwmhosp == 9 ;
replace relmhsp1 = . relmhsp1 == 0 | relmhsp1 == 8 | relmhsp1 == 9 ;
replace relmhsp2 = . relmhsp2 == 0 | relmhsp2 == 8 | relmhsp2 == 9 ;
replace relmhsp3 = . relmhsp3 == 0 | relmhsp3 == 8 | relmhsp3 == 9 ;
replace relmhsp4 = . relmhsp4 == 0 | relmhsp4 == 8 | relmhsp4 == 9 ;
replace relmhsp5 = . relmhsp5 == 0 | relmhsp5 == 8 | relmhsp5 == 9 ;
replace relmhsp6 = . relmhsp6 == 0 | relmhsp6 == 8 | relmhsp6 == 9 ;
replace knwpatnt = . knwpatnt == 0 | knwpatnt == 8 | knwpatnt == 9 ;
replace evbrkdwn = . evbrkdwn == 0 | evbrkdwn == 8 | evbrkdwn == 9 ;
replace brkdwhy1 = . brkdwhy1 == 0 | brkdwhy1 == 998 | brkdwhy1 == 999 ;
replace brkdwhy2 = . brkdwhy2 == 0 | brkdwhy2 == 998 | brkdwhy2 == 999 ;
replace brkdwhy3 = . brkdwhy3 == 0 | brkdwhy3 == 998 | brkdwhy3 == 999 ;
replace brkddo1 = . brkddo1 == 0 | brkddo1 == 98 | brkddo1 == 99 ;
replace brkddo2 = . brkddo2 == 0 | brkddo2 == 98 | brkddo2 == 99 ;
replace brkddo3 = . brkddo3 == 0 | brkddo3 == 98 | brkddo3 == 99 ;
replace brkdhlp1 = . brkdhlp1 == 0 | brkdhlp1 == 998 | brkdhlp1 == 999 ;
replace brkdhlp2 = . brkdhlp2 == 0 | brkdhlp2 == 998 | brkdhlp2 == 999 ;
replace brkdhlp3 = . brkdhlp3 == 0 | brkdhlp3 == 998 | brkdhlp3 == 999 ;
replace brkdtime = . brkdtime == 0 | brkdtime == 9 ;
replace brkddur = . brkddur == 0 | brkddur == 9 ;
replace evmhp = . evmhp == 0 | evmhp == 8 | evmhp == 9 ;
replace mnilwhy1 = . mnilwhy1 == 0 | mnilwhy1 == 998 | mnilwhy1 == 999 ;
replace mnilwhy2 = . mnilwhy2 == 0 | mnilwhy2 == 998 | mnilwhy2 == 999 ;
replace mnilwhy3 = . mnilwhy3 == 0 | mnilwhy3 == 998 | mnilwhy3 == 999 ;
replace mnildo1 = . mnildo1 == 0 | mnildo1 == 98 | mnildo1 == 99 ;
replace mnildo2 = . mnildo2 == 0 | mnildo2 == 98 | mnildo2 == 99 ;
replace mnildo3 = . mnildo3 == 0 | mnildo3 == 98 | mnildo3 == 99 ;
replace mnilhlp1 = . mnilhlp1 == 0 | mnilhlp1 == 998 | mnilhlp1 == 999 ;
replace mnilhlp2 = . mnilhlp2 == 0 | mnilhlp2 == 998 | mnilhlp2 == 999 ;
replace mnilhlp3 = . mnilhlp3 == 0 | mnilhlp3 == 998 | mnilhlp3 == 999 ;
replace mniltime = . mniltime == 0 | mniltime == 9 ;
replace mnildur = . mnildur == 0 | mnildur == 9 ;
replace privpray = . privpray == 0 | privpray == 98 | privpray == 99 ;
replace meditate = . meditate == 0 | meditate == 98 | meditate == 99 ;
replace conghlp1 = . conghlp1 == 0 | conghlp1 == 9 | conghlp1 == 8 ;
replace conghlp2 = . conghlp2 == 0 | conghlp2 == 9 | conghlp2 == 8 ;
replace conghrm1 = . conghrm1 == 0 | conghrm1 == 9 | conghrm1 == 8 ;
replace conghrm2 = . conghrm2 == 0 | conghrm2 == 9 | conghrm2 == 8 ;
replace cope1 = . cope1 == 0 | cope1 == 9 | cope1 == 8 ;
replace cope2 = . cope2 == 0 | cope2 == 9 | cope2 == 8 ;
replace cope3 = . cope3 == 0 | cope3 == 9 | cope3 == 8 ;
replace cope4 = . cope4 == 0 | cope4 == 9 | cope4 == 8 ;
replace cope5 = . cope5 == 0 | cope5 == 9 | cope5 == 8 ;
replace cope6 = . cope6 == 0 | cope6 == 9 | cope6 == 8 ;
replace godwatch = . godwatch == 0 | godwatch == 9 | godwatch == 8 ;
replace lesspain = . lesspain == 0 | lesspain == 9 | lesspain == 8 ;
replace rellife = . rellife == 0 | rellife == 9 | rellife == 8 ;
replace forgive1 = . forgive1 == 0 | forgive1 == 9 | forgive1 == 8 ;
replace forgive2 = . forgive2 == 0 | forgive2 == 9 | forgive2 == 8 ;
replace forgive3 = . forgive3 == 0 | forgive3 == 9 | forgive3 == 8 ;
replace feelgod = . feelgod == 0 | feelgod == 9 | feelgod == 8 ;
replace relcmfrt = . relcmfrt == 0 | relcmfrt == 9 | relcmfrt == 8 ;
replace harmony = . harmony == 0 | harmony == 9 | harmony == 8 ;
replace uniongod = . uniongod == 0 | uniongod == 9 | uniongod == 8 ;
replace godlove = . godlove == 0 | godlove == 9 | godlove == 8 ;
replace beausprt = . beausprt == 0 | beausprt == 9 | beausprt == 8 ;
replace nocheer = . nocheer == 0 | nocheer == 9 | nocheer == 8 ;
replace nervous = . nervous == 0 | nervous == 9 | nervous == 8 ;
replace fidgety = . fidgety == 0 | fidgety == 9 | fidgety == 8 ;
replace hopeless = . hopeless == 0 | hopeless == 9 | hopeless == 8 ;
replace effort = . effort == 0 | effort == 9 | effort == 8 ;
replace wrthless = . wrthless == 0 | wrthless == 9 | wrthless == 8 ;
replace relpersn = . relpersn == 0 | relpersn == 9 | relpersn == 8 ;
replace sprtprsn = . sprtprsn == 0 | sprtprsn == 9 | sprtprsn == 8 ;
replace relexp = . relexp == 0 | relexp == 9 | relexp == 8 ;
replace natarts = . natarts == 0 | natarts == 9 | natarts == 8 ;
replace artgod = . artgod == 0 | artgod == 9 | artgod == 8 ;
replace artists = . artists == 0 | artists == 9 | artists == 8 ;
replace irrelart = . irrelart == 0 | irrelart == 9 | irrelart == 8 ;
replace irreloff = . irreloff == 0 | irreloff == 9 | irreloff == 8 ;
replace aimofart = . aimofart == 0 | aimofart == 9 | aimofart == 8 ;
replace readfict = . readfict == 0 | readfict == 8 | readfict == 9 ;
replace popmusic = . popmusic == 0 | popmusic == 8 | popmusic == 9 ;
replace drama = . drama == 0 | drama == 8 | drama == 9 ;
replace relart = . relart == 0 | relart == 8 | relart == 9 ;
replace volarts = . volarts == 0 | volarts == 8 | volarts == 9 ;
replace natlart = . natlart == 0 | natlart == 8 | natlart == 9 ;
replace stateart = . stateart == 0 | stateart == 8 | stateart == 9 ;
replace localart = . localart == 0 | localart == 8 | localart == 9 ;
replace occyrs = . occyrs == -1 | occyrs == 98 | occyrs == 99 ;
replace occtrain = . occtrain == 0 | occtrain == 8 | occtrain == 9 ;
replace trainsch = . trainsch == 0 | trainsch == 8 | trainsch == 9 ;
replace typeorg = . typeorg == 0 | typeorg == 8 | typeorg == 9 ;
replace wrkoth = . wrkoth == 0 | wrkoth == 8 | wrkoth == 9 ;
replace othyrs = . othyrs == -1 | othyrs == 98 | othyrs == 99 ;
replace partorg = . partorg == 0 | partorg == 8 | partorg == 9 ;
replace orgsize = . orgsize == 0 | orgsize == 98 | orgsize == 99 ;
replace genderwk = . genderwk == 0 | genderwk == 8 | genderwk == 9 ;
replace locyrs = . locyrs == -1 | locyrs == 98 | locyrs == 99 ;
replace samework = . samework == 0 | samework == 8 | samework == 9 ;
replace siteyrs = . siteyrs == -1 | siteyrs == 98 | siteyrs == 99 ;
replace otjtrain = . otjtrain == 0 | otjtrain == 8 | otjtrain == 9 ;
replace formltrn = . formltrn == 0 | formltrn == 8 | formltrn == 9 ;
replace formlfin = . formlfin == 0 | formlfin == 8 | formlfin == 9 ;
replace formldys = . formldys == 0 | formldys == 8 | formldys == 9 ;
replace formlhrs = . formlhrs == 0 | formlhrs == 8 | formlhrs == 9 ;
replace doingtrn = . doingtrn == 0 | doingtrn == 8 | doingtrn == 9 ;
replace doingfin = . doingfin == 0 | doingfin == 8 | doingfin == 9 ;
replace doingdys = . doingdys == 0 | doingdys == 8 | doingdys == 9 ;
replace wojob = . wojob == 0 | wojob == 8 | wojob == 9 ;
replace wojobyrs = . wojobyrs == 0 | wojobyrs == 8 | wojobyrs == 9 ;
replace numemp = . numemp == 0 | numemp == 8 | numemp == 9 ;
replace howpaid = . howpaid == 0 | howpaid == 8 | howpaid == 9 ;
replace hourly = . hourly == 0 | hourly == 998 | hourly == 999 ;
replace daily = . daily == 0 | daily == 9998 | daily == 9999 ;
replace weekly = . weekly == 0 | weekly == 9998 | weekly == 9999 ;
replace monthly = . monthly == 0 | monthly == 99998 | monthly == 99999 ;
replace yearly = . yearly == 0 | yearly == 999998 | yearly == 999999 ;
replace trusting = . trusting == 0 | trusting == 8 | trusting == 9 ;
replace seenmntl = . seenmntl == 0 | seenmntl == 8 | seenmntl == 9 ;
replace psycmed1 = . psycmed1 == 0 | psycmed1 == 8 | psycmed1 == 9 ;
replace psycmed2 = . psycmed2 == 0 | psycmed2 == 8 | psycmed2 == 9 ;
replace psycmed3 = . psycmed3 == 0 | psycmed3 == 8 | psycmed3 == 9 ;
replace psycmed4 = . psycmed4 == 0 | psycmed4 == 8 | psycmed4 == 9 ;
replace psycmed5 = . psycmed5 == 0 | psycmed5 == 8 | psycmed5 == 9 ;
replace psycmed6 = . psycmed6 == 0 | psycmed6 == 8 | psycmed6 == 9 ;
replace psycmed7 = . psycmed7 == 0 | psycmed7 == 8 | psycmed7 == 9 ;
replace usepsyc1 = . usepsyc1 == 0 | usepsyc1 == 8 | usepsyc1 == 9 ;
replace usepsyc2 = . usepsyc2 == 0 | usepsyc2 == 8 | usepsyc2 == 9 ;
replace usepsyc3 = . usepsyc3 == 0 | usepsyc3 == 8 | usepsyc3 == 9 ;
replace usepsyc4 = . usepsyc4 == 0 | usepsyc4 == 8 | usepsyc4 == 9 ;
replace psyckid1 = . psyckid1 == 0 | psyckid1 == 8 | psyckid1 == 9 ;
replace psyckid2 = . psyckid2 == 0 | psyckid2 == 8 | psyckid2 == 9 ;
replace psyckid3 = . psyckid3 == 0 | psyckid3 == 8 | psyckid3 == 9 ;
replace psycdrct = . psycdrct == 0 | psycdrct == 8 | psycdrct == 9 ;
replace psycfdoc = . psycfdoc == 0 | psycfdoc == 8 | psycfdoc == 9 ;
replace psycpsyc = . psycpsyc == 0 | psycpsyc == 8 | psycpsyc == 9 ;
replace hlthinsr = . hlthinsr == 0 | hlthinsr == 8 | hlthinsr == 9 ;
replace doclist = . doclist == 0 | doclist == 8 | doclist == 9 ;
replace anydoc = . anydoc == 0 | anydoc == 8 | anydoc == 9 ;
replace swithlth = . swithlth == 0 | swithlth == 8 | swithlth == 9 ;
replace usedmntl = . usedmntl == 0 | usedmntl == 8 | usedmntl == 9 ;
replace mntlcare = . mntlcare == 0 | mntlcare == 8 | mntlcare == 9 ;
replace mntldif = . mntldif == 0 | mntldif == 8 | mntldif == 9 ;
replace mntldeny = . mntldeny == 0 | mntldeny == 8 | mntldeny == 9 ;
replace hmo1 = . hmo1 == 0 | hmo1 == 8 | hmo1 == 9 ;
replace hmo2 = . hmo2 == 0 | hmo2 == 8 | hmo2 == 9 ;
replace hmo3 = . hmo3 == 0 | hmo3 == 8 | hmo3 == 9 ;
replace hmo4 = . hmo4 == 0 | hmo4 == 8 | hmo4 == 9 ;
replace hmo5 = . hmo5 == 0 | hmo5 == 8 | hmo5 == 9 ;
replace hmo6 = . hmo6 == 0 | hmo6 == 8 | hmo6 == 9 ;
replace hmo7 = . hmo7 == 0 | hmo7 == 8 | hmo7 == 9 ;
replace doc1 = . doc1 == 0 | doc1 == 8 | doc1 == 9 ;
replace doc2 = . doc2 == 0 | doc2 == 8 | doc2 == 9 ;
replace doc3 = . doc3 == 0 | doc3 == 8 | doc3 == 9 ;
replace doc4 = . doc4 == 0 | doc4 == 8 | doc4 == 9 ;
replace doc5 = . doc5 == 0 | doc5 == 8 | doc5 == 9 ;
replace doc6 = . doc6 == 0 | doc6 == 8 | doc6 == 9 ;
replace doc7 = . doc7 == 0 | doc7 == 8 | doc7 == 9 ;
replace doc8 = . doc8 == 0 | doc8 == 8 | doc8 == 9 ;
replace doc9 = . doc9 == 0 | doc9 == 8 | doc9 == 9 ;
replace doc10 = . doc10 == 0 | doc10 == 8 | doc10 == 9 ;
replace doc11 = . doc11 == 0 | doc11 == 8 | doc11 == 9 ;
replace doc12 = . doc12 == 0 | doc12 == 8 | doc12 == 9 ;
replace doc13 = . doc13 == 0 | doc13 == 8 | doc13 == 9 ;
replace doc14 = . doc14 == 0 | doc14 == 8 | doc14 == 9 ;
replace doc15 = . doc15 == 0 | doc15 == 8 | doc15 == 9 ;
replace doc16 = . doc16 == 0 | doc16 == 8 | doc16 == 9 ;
replace doc17 = . doc17 == 0 | doc17 == 8 | doc17 == 9 ;
replace doc18 = . doc18 == 0 | doc18 == 8 | doc18 == 9 ;
replace doc19 = . doc19 == 0 | doc19 == 8 | doc19 == 9 ;
replace doc20 = . doc20 == 0 | doc20 == 8 | doc20 == 9 ;
replace prozac = . prozac == 0 | prozac == 8 | prozac == 9 ;
replace usedproz = . usedproz == 0 | usedproz == 8 | usedproz == 9 ;
replace knwnproz = . knwnproz == 0 | knwnproz == 8 | knwnproz == 9 ;
replace prozfor1 = . prozfor1 == 0 | prozfor1 == 98 | prozfor1 == 99 ;
replace prozfor2 = . prozfor2 == 0 | prozfor2 == 98 | prozfor2 == 99 ;
replace prozfor3 = . prozfor3 == 0 | prozfor3 == 98 | prozfor3 == 99 ;
replace proz1 = . proz1 == 0 | proz1 == 8 | proz1 == 9 ;
replace proz2 = . proz2 == 0 | proz2 == 8 | proz2 == 9 ;
replace proz3 = . proz3 == 0 | proz3 == 8 | proz3 == 9 ;
replace proz4 = . proz4 == 0 | proz4 == 8 | proz4 == 9 ;
replace proz5 = . proz5 == 0 | proz5 == 8 | proz5 == 9 ;
replace proz6 = . proz6 == 0 | proz6 == 8 | proz6 == 9 ;
replace proz7 = . proz7 == 0 | proz7 == 8 | proz7 == 9 ;
replace proz8 = . proz8 == 0 | proz8 == 8 | proz8 == 9 ;
replace proz9 = . proz9 == 0 | proz9 == 8 | proz9 == 9 ;
replace prozslf1 = . prozslf1 == 0 | prozslf1 == 8 | prozslf1 == 9 ;
replace prozslf2 = . prozslf2 == 0 | prozslf2 == 8 | prozslf2 == 9 ;
replace prozslf3 = . prozslf3 == 0 | prozslf3 == 8 | prozslf3 == 9 ;
replace prozslf4 = . prozslf4 == 0 | prozslf4 == 8 | prozslf4 == 9 ;
replace prozkid1 = . prozkid1 == 0 | prozkid1 == 8 | prozkid1 == 9 ;
replace prozkid2 = . prozkid2 == 0 | prozkid2 == 8 | prozkid2 == 9 ;
replace prozkid3 = . prozkid3 == 0 | prozkid3 == 8 | prozkid3 == 9 ;
replace socsecrt = . socsecrt == 0 | socsecrt == 8 | socsecrt == 9 ;
replace socsecfx = . socsecfx == 0 | socsecfx == 8 | socsecfx == 9 ;
replace socsecnu = . socsecnu == 0 | socsecnu == 8 | socsecnu == 9 ;
replace terminal = . terminal == 0 | terminal == 8 | terminal == 9 ;
replace termecon = . termecon == 0 | termecon == 8 | termecon == 9 ;
replace termrel = . termrel == 0 | termrel == 8 | termrel == 9 ;
replace termemot = . termemot == 0 | termemot == 8 | termemot == 9 ;
replace termpain = . termpain == 0 | termpain == 8 | termpain == 9 ;
replace termpay = . termpay == 0 | termpay == 8 | termpay == 9 ;
replace trustfam = . trustfam == 0 | trustfam == 8 | trustfam == 9 ;
replace trustdoc = . trustdoc == 0 | trustdoc == 8 | trustdoc == 9 ;
replace trustcrt = . trustcrt == 0 | trustcrt == 8 | trustcrt == 9 ;
replace termvig = . termvig == 0 | termvig == 8 | termvig == 9 ;
replace rightref = . rightref == 0 | rightref == 8 | rightref == 9 ;
replace notreat = . notreat == 0 | notreat == 8 | notreat == 9 ;
replace instrctn = . instrctn == 0 | instrctn == 8 | instrctn == 9 ;
replace hospice = . hospice == 0 | hospice == 8 | hospice == 9 ;
replace painmed = . painmed == 0 | painmed == 8 | painmed == 9 ;
replace docsui = . docsui == 0 | docsui == 8 | docsui == 9 ;
replace famwhts = . famwhts == 0 | famwhts == 8 | famwhts == 9 ;
replace famblks = . famblks == 0 | famblks == 8 | famblks == 9 ;
replace famjews = . famjews == 0 | famjews == 8 | famjews == 9 ;
replace famhsps = . famhsps == 0 | famhsps == 8 | famhsps == 9 ;
replace famasns = . famasns == 0 | famasns == 8 | famasns == 9 ;
replace fairwhts = . fairwhts == 0 | fairwhts == 8 | fairwhts == 9 ;
replace fairblks = . fairblks == 0 | fairblks == 8 | fairblks == 9 ;
replace fairjews = . fairjews == 0 | fairjews == 8 | fairjews == 9 ;
replace fairhsps = . fairhsps == 0 | fairhsps == 8 | fairhsps == 9 ;
replace fairasns = . fairasns == 0 | fairasns == 8 | fairasns == 9 ;
replace conteng = . conteng == 0 | conteng == 8 | conteng == 9 ;
replace contitl = . contitl == 0 | contitl == 8 | contitl == 9 ;
replace contchn = . contchn == 0 | contchn == 8 | contchn == 9 ;
replace contjew = . contjew == 0 | contjew == 8 | contjew == 9 ;
replace contblk = . contblk == 0 | contblk == 8 | contblk == 9 ;
replace contmex = . contmex == 0 | contmex == 8 | contmex == 9 ;
replace contvn = . contvn == 0 | contvn == 8 | contvn == 9 ;
replace contcuba = . contcuba == 0 | contcuba == 8 | contcuba == 9 ;
replace contirsh = . contirsh == 0 | contirsh == 8 | contirsh == 9 ;
replace contpr = . contpr == 0 | contpr == 8 | contpr == 9 ;
replace contjpn = . contjpn == 0 | contjpn == 8 | contjpn == 9 ;
replace contmslm = . contmslm == 0 | contmslm == 8 | contmslm == 9 ;
replace othlang = . othlang == 0 | othlang == 8 | othlang == 9 ;
replace othlang1 = . othlang1 == 0 | othlang1 == 998 | othlang1 == 999 ;
replace othlang2 = . othlang2 == 0 | othlang2 == 998 | othlang2 == 999 ;
replace othbest = . othbest == 0 | othbest == 998 | othbest == 999 ;
replace spklang = . spklang == 0 | spklang == 8 | spklang == 9 ;
replace uselang = . uselang == 0 | uselang == 8 | uselang == 9 ;
replace getlang = . getlang == 0 | getlang == 8 | getlang == 9 ;
replace parlang = . parlang == 0 | parlang == 8 | parlang == 9 ;
replace granlang = . granlang == 0 | granlang == 8 | granlang == 9 ;
replace langcom = . langcom == 0 | langcom == 8 | langcom == 9 ;
replace langwrk = . langwrk == 0 | langwrk == 8 | langwrk == 9 ;
replace engoff1 = . engoff1 == 0 | engoff1 == 8 | engoff1 == 9 ;
replace twolang = . twolang == 0 | twolang == 8 | twolang == 9 ;
replace nobiling = . nobiling == 0 | nobiling == 8 | nobiling == 9 ;
replace engunite = . engunite == 0 | engunite == 8 | engunite == 9 ;
replace forlang1 = . forlang1 == 0 | forlang1 == 8 | forlang1 == 9 ;
replace engthrtn = . engthrtn == 0 | engthrtn == 8 | engthrtn == 9 ;
replace engvote = . engvote == 0 | engvote == 8 | engvote == 9 ;
replace othhome = . othhome == 0 | othhome == 8 | othhome == 9 ;
replace betrlang = . betrlang == 0 | betrlang == 8 | betrlang == 9 ;
replace spklangw = . spklangw == 0 | spklangw == 8 | spklangw == 9 ;
replace letinhsp = . letinhsp == 0 | letinhsp == 8 | letinhsp == 9 ;
replace letinasn = . letinasn == 0 | letinasn == 8 | letinasn == 9 ;
replace letineur = . letineur == 0 | letineur == 8 | letineur == 9 ;
replace immcrmup = . immcrmup == 0 | immcrmup == 8 | immcrmup == 9 ;
replace immnew = . immnew == 0 | immnew == 8 | immnew == 9 ;
replace immnojob = . immnojob == 0 | immnojob == 8 | immnojob == 9 ;
replace uswht = . uswht == -1 | uswht == 998 | uswht == 999 ;
replace usblk = . usblk == -1 | usblk == 998 | usblk == 999 ;
replace usjews = . usjews == -1 | usjews == 998 | usjews == 999 ;
replace ushisp = . ushisp == -1 | ushisp == 998 | ushisp == 999 ;
replace usasn = . usasn == -1 | usasn == 998 | usasn == 999 ;
replace usamind = . usamind == -1 | usamind == 998 | usamind == 999 ;
replace usmixed = . usmixed == -1 | usmixed == 998 | usmixed == 999 ;
replace whtchng = . whtchng == 0 | whtchng == 8 | whtchng == 9 ;
replace blkchng = . blkchng == 0 | blkchng == 8 | blkchng == 9 ;
replace jewschng = . jewschng == 0 | jewschng == 8 | jewschng == 9 ;
replace hispchng = . hispchng == 0 | hispchng == 8 | hispchng == 9 ;
replace asnchng = . asnchng == 0 | asnchng == 8 | asnchng == 9 ;
replace ethchng = . ethchng == 0 | ethchng == 8 | ethchng == 9 ;
replace comwht = . comwht == -1 | comwht == 998 | comwht == 999 ;
replace comblk = . comblk == -1 | comblk == 998 | comblk == 999 ;
replace comjews = . comjews == -1 | comjews == 998 | comjews == 999 ;
replace comhisp = . comhisp == -1 | comhisp == 998 | comhisp == 999 ;
replace comasn = . comasn == -1 | comasn == 998 | comasn == 999 ;
replace comamind = . comamind == -1 | comamind == 998 | comamind == 999 ;
replace hispwork = . hispwork == 0 | hispwork == 8 | hispwork == 9 ;
replace knwwht = . knwwht == 0 | knwwht == 8 | knwwht == 9 ;
replace knwblk = . knwblk == 0 | knwblk == 8 | knwblk == 9 ;
replace knwjew = . knwjew == 0 | knwjew == 8 | knwjew == 9 ;
replace knwhisp = . knwhisp == 0 | knwhisp == 8 | knwhisp == 9 ;
replace knwasn = . knwasn == 0 | knwasn == 8 | knwasn == 9 ;
replace whtschl = . whtschl == 0 | whtschl == 8 | whtschl == 9 ;
replace whtcom = . whtcom == 0 | whtcom == 8 | whtcom == 9 ;
replace whtrel = . whtrel == 0 | whtrel == 8 | whtrel == 9 ;
replace whtwrk = . whtwrk == 0 | whtwrk == 8 | whtwrk == 9 ;
replace whtcls = . whtcls == 0 | whtcls == 8 | whtcls == 9 ;
replace blkschl = . blkschl == 0 | blkschl == 8 | blkschl == 9 ;
replace blkcom = . blkcom == 0 | blkcom == 8 | blkcom == 9 ;
replace blkrel = . blkrel == 0 | blkrel == 8 | blkrel == 9 ;
replace blkwrk = . blkwrk == 0 | blkwrk == 8 | blkwrk == 9 ;
replace blkcls = . blkcls == 0 | blkcls == 8 | blkcls == 9 ;
replace jewsschl = . jewsschl == 0 | jewsschl == 8 | jewsschl == 9 ;
replace jewscom = . jewscom == 0 | jewscom == 8 | jewscom == 9 ;
replace jewsrel = . jewsrel == 0 | jewsrel == 8 | jewsrel == 9 ;
replace jewswrk = . jewswrk == 0 | jewswrk == 8 | jewswrk == 9 ;
replace jewscls = . jewscls == 0 | jewscls == 8 | jewscls == 9 ;
replace hispschl = . hispschl == 0 | hispschl == 8 | hispschl == 9 ;
replace hispcom = . hispcom == 0 | hispcom == 8 | hispcom == 9 ;
replace hisprel = . hisprel == 0 | hisprel == 8 | hisprel == 9 ;
replace hispwrk = . hispwrk == 0 | hispwrk == 8 | hispwrk == 9 ;
replace hispcls = . hispcls == 0 | hispcls == 8 | hispcls == 9 ;
replace asnschl = . asnschl == 0 | asnschl == 8 | asnschl == 9 ;
replace asncom = . asncom == 0 | asncom == 8 | asncom == 9 ;
replace asnrel = . asnrel == 0 | asnrel == 8 | asnrel == 9 ;
replace asnwrk = . asnwrk == 0 | asnwrk == 8 | asnwrk == 9 ;
replace asncls = . asncls == 0 | asncls == 8 | asncls == 9 ;
replace mostcom = . mostcom == 0 | mostcom == 8 | mostcom == 9 ;
replace leastcom = . leastcom == 0 | leastcom == 8 | leastcom == 9 ;
replace neieth1 = . neieth1 == 0 | neieth1 == 8 | neieth1 == 9 ;
replace neieth2 = . neieth2 == 0 | neieth2 == 8 | neieth2 == 9 ;
replace neieth3 = . neieth3 == 0 | neieth3 == 8 | neieth3 == 9 ;
replace neieth4 = . neieth4 == 0 | neieth4 == 8 | neieth4 == 9 ;
replace neieth5 = . neieth5 == 0 | neieth5 == 8 | neieth5 == 9 ;
replace neieth6 = . neieth6 == 0 | neieth6 == 8 | neieth6 == 9 ;
replace neieth7 = . neieth7 == 0 | neieth7 == 8 | neieth7 == 9 ;
replace neieth8 = . neieth8 == 0 | neieth8 == 8 | neieth8 == 9 ;
replace neieth9 = . neieth9 == 0 | neieth9 == 8 | neieth9 == 9 ;
replace neieth10 = . neieth10 == 0 | neieth10 == 8 | neieth10 == 9 ;
replace neieth11 = . neieth11 == 0 | neieth11 == 8 | neieth11 == 9 ;
replace neieth12 = . neieth12 == 0 | neieth12 == 8 | neieth12 == 9 ;
replace neieth13 = . neieth13 == 0 | neieth13 == 8 | neieth13 == 9 ;
replace neieth14 = . neieth14 == 0 | neieth14 == 8 | neieth14 == 9 ;
replace hswht = . hswht == 0 | hswht == 8 | hswht == 9 ;
replace hseth = . hseth == 0 | hseth == 8 | hseth == 9 ;
replace compuse = . compuse == 0 | compuse == 8 | compuse == 9 ;
replace webtv = . webtv == 0 | webtv == 8 | webtv == 9 ;
replace WEBMOB = . WEBMOB == 0 | WEBMOB == 8 | WEBMOB == 9 ;
replace emailmin = . emailmin == -1 | emailmin == 98 | emailmin == 99 ;
replace emailhr = . emailhr == -1 | emailhr == 998 | emailhr == 999 ;
replace usewww = . usewww == 0 | usewww == 8 | usewww == 9 ;
replace wwwhr = . wwwhr == -1 | wwwhr == 998 | wwwhr == 999 ;
replace wwwmin = . wwwmin == -1 | wwwmin == 98 | wwwmin == 99 ;
replace chathr = . chathr == -1 | chathr == 998 | chathr == 999 ;
replace chatmin = . chatmin == -1 | chatmin == 98 | chatmin == 99 ;
replace drctlink = . drctlink == 0 | drctlink == 8 | drctlink == 9 ;
replace typeurl = . typeurl == 0 | typeurl == 8 | typeurl == 9 ;
replace srcheng = . srcheng == 0 | srcheng == 8 | srcheng == 9 ;
replace bookmark = . bookmark == 0 | bookmark == 8 | bookmark == 9 ;
replace catdrcty = . catdrcty == 0 | catdrcty == 8 | catdrcty == 9 ;
replace hyperlnk = . hyperlnk == 0 | hyperlnk == 8 | hyperlnk == 9 ;
replace emaillnk = . emaillnk == 0 | emaillnk == 8 | emaillnk == 9 ;
replace fin30 = . fin30 == 0 | fin30 == 8 | fin30 == 9 ;
replace schl30 = . schl30 == 0 | schl30 == 8 | schl30 == 9 ;
replace educ30 = . educ30 == 0 | educ30 == 8 | educ30 == 9 ;
replace work30 = . work30 == 0 | work30 == 8 | work30 == 9 ;
replace news30 = . news30 == 0 | news30 == 8 | news30 == 9 ;
replace govt30 = . govt30 == 0 | govt30 == 8 | govt30 == 9 ;
replace pol30 = . pol30 == 0 | pol30 == 8 | pol30 == 9 ;
replace travel30 = . travel30 == 0 | travel30 == 8 | travel30 == 9 ;
replace sports30 = . sports30 == 0 | sports30 == 8 | sports30 == 9 ;
replace music30 = . music30 == 0 | music30 == 8 | music30 == 9 ;
replace art30 = . art30 == 0 | art30 == 8 | art30 == 9 ;
replace tvmov30 = . tvmov30 == 0 | tvmov30 == 8 | tvmov30 == 9 ;
replace health30 = . health30 == 0 | health30 == 8 | health30 == 9 ;
replace relig30 = . relig30 == 0 | relig30 == 8 | relig30 == 9 ;
replace games30 = . games30 == 0 | games30 == 8 | games30 == 9 ;
replace humor30 = . humor30 == 0 | humor30 == 8 | humor30 == 9 ;
replace porn30 = . porn30 == 0 | porn30 == 8 | porn30 == 9 ;
replace person30 = . person30 == 0 | person30 == 8 | person30 == 9 ;
replace sci30 = . sci30 == 0 | sci30 == 8 | sci30 == 9 ;
replace hobby30 = . hobby30 == 0 | hobby30 == 8 | hobby30 == 9 ;
replace cook30 = . cook30 == 0 | cook30 == 8 | cook30 == 9 ;
replace work12 = . work12 == 0 | work12 == 8 | work12 == 9 ;
replace hmefin12 = . hmefin12 == 0 | hmefin12 == 8 | hmefin12 == 9 ;
replace buyinf12 = . buyinf12 == 0 | buyinf12 == 8 | buyinf12 == 9 ;
replace buyit12 = . buyit12 == 0 | buyit12 == 8 | buyit12 == 9 ;
replace invest12 = . invest12 == 0 | invest12 == 8 | invest12 == 9 ;
replace people12 = . people12 == 0 | people12 == 8 | people12 == 9 ;
replace health12 = . health12 == 0 | health12 == 8 | health12 == 9 ;
replace travel12 = . travel12 == 0 | travel12 == 8 | travel12 == 9 ;
replace locate12 = . locate12 == 0 | locate12 == 8 | locate12 == 9 ;
replace game12 = . game12 == 0 | game12 == 8 | game12 == 9 ;
replace newjob12 = . newjob12 == 0 | newjob12 == 8 | newjob12 == 9 ;
replace chat12 = . chat12 == 0 | chat12 == 8 | chat12 == 9 ;
replace polinf12 = . polinf12 == 0 | polinf12 == 8 | polinf12 == 9 ;
replace econ12 = . econ12 == 0 | econ12 == 8 | econ12 == 9 ;
replace abort12 = . abort12 == 0 | abort12 == 8 | abort12 == 9 ;
replace moral12 = . moral12 == 0 | moral12 == 8 | moral12 == 9 ;
replace foraff12 = . foraff12 == 0 | foraff12 == 8 | foraff12 == 9 ;
replace racrel12 = . racrel12 == 0 | racrel12 == 8 | racrel12 == 9 ;
replace enviro12 = . enviro12 == 0 | enviro12 == 8 | enviro12 == 9 ;
replace polcam12 = . polcam12 == 0 | polcam12 == 8 | polcam12 == 9 ;
replace gun12 = . gun12 == 0 | gun12 == 8 | gun12 == 9 ;
replace taxes12 = . taxes12 == 0 | taxes12 == 8 | taxes12 == 9 ;
replace fe12 = . fe12 == 0 | fe12 == 8 | fe12 == 9 ;
replace news12 = . news12 == 0 | news12 == 8 | news12 == 9 ;
replace polagree = . polagree == 0 | polagree == 8 | polagree == 9 ;
replace polneutl = . polneutl == 0 | polneutl == 8 | polneutl == 9 ;
replace poldsagr = . poldsagr == 0 | poldsagr == 8 | poldsagr == 9 ;
replace petition = . petition == 0 | petition == 8 | petition == 9 ;
replace contact = . contact == 0 | contact == 8 | contact == 9 ;
replace meeting = . meeting == 0 | meeting == 8 | meeting == 9 ;
replace polnew = . polnew == 0 | polnew == 8 | polnew == 9 ;
replace votefor = . votefor == 0 | votefor == 8 | votefor == 9 ;
replace polchnge = . polchnge == 0 | polchnge == 8 | polchnge == 9 ;
replace polforms = . polforms == 0 | polforms == 8 | polforms == 9 ;
replace polconf = . polconf == 0 | polconf == 8 | polconf == 9 ;
replace polalter = . polalter == 0 | polalter == 8 | polalter == 9 ;
replace poltough = . poltough == 0 | poltough == 8 | poltough == 9 ;
replace artsmin = . artsmin == -1 | artsmin == 98 | artsmin == 99 ;
replace artshr = . artshr == -1 | artshr == 998 | artshr == 999 ;
replace artschat = . artschat == 0 | artschat == 8 | artschat == 9 ;
replace artsnew = . artsnew == 0 | artsnew == 8 | artsnew == 9 ;
replace artschng = . artschng == 0 | artschng == 8 | artschng == 9 ;
replace wwwmusic = . wwwmusic == 0 | wwwmusic == 8 | wwwmusic == 9 ;
replace musicinf = . musicinf == 0 | musicinf == 8 | musicinf == 9 ;
replace musicget = . musicget == 0 | musicget == 8 | musicget == 9 ;
replace musiclst = . musiclst == 0 | musiclst == 8 | musiclst == 9 ;
replace musicbuy = . musicbuy == 0 | musicbuy == 8 | musicbuy == 9 ;
replace wwwclass = . wwwclass == 0 | wwwclass == 8 | wwwclass == 9 ;
replace wwwcntry = . wwwcntry == 0 | wwwcntry == 8 | wwwcntry == 9 ;
replace wwwgthic = . wwwgthic == 0 | wwwgthic == 8 | wwwgthic == 9 ;
replace wwwjazz = . wwwjazz == 0 | wwwjazz == 8 | wwwjazz == 9 ;
replace wwwoldie = . wwwoldie == 0 | wwwoldie == 8 | wwwoldie == 9 ;
replace wwwrap = . wwwrap == 0 | wwwrap == 8 | wwwrap == 9 ;
replace wwwrelig = . wwwrelig == 0 | wwwrelig == 8 | wwwrelig == 9 ;
replace wwwrock = . wwwrock == 0 | wwwrock == 8 | wwwrock == 9 ;
replace wwwworld = . wwwworld == 0 | wwwworld == 8 | wwwworld == 9 ;
replace musiclke = . musiclke == 0 | musiclke == 8 | musiclke == 9 ;
replace musicdif = . musicdif == 0 | musicdif == 8 | musicdif == 9 ;
replace musicnew = . musicnew == 0 | musicnew == 8 | musicnew == 9 ;
replace wwwart = . wwwart == 0 | wwwart == 8 | wwwart == 9 ;
replace artmus1 = . artmus1 == 0 | artmus1 == 8 | artmus1 == 9 ;
replace artmus2 = . artmus2 == 0 | artmus2 == 8 | artmus2 == 9 ;
replace artview = . artview == 0 | artview == 8 | artview == 9 ;
replace artinfo = . artinfo == 0 | artinfo == 8 | artinfo == 9 ;
replace artmus3 = . artmus3 == 0 | artmus3 == 8 | artmus3 == 9 ;
replace wwwlit = . wwwlit == 0 | wwwlit == 8 | wwwlit == 9 ;
replace litsite = . litsite == 0 | litsite == 8 | litsite == 9 ;
replace litget = . litget == 0 | litget == 8 | litget == 9 ;
replace litauth = . litauth == 0 | litauth == 8 | litauth == 9 ;
replace litread = . litread == 0 | litread == 8 | litread == 9 ;
replace wwwpersn = . wwwpersn == 0 | wwwpersn == 8 | wwwpersn == 9 ;
replace wwwsp = . wwwsp == 0 | wwwsp == 8 | wwwsp == 9 ;
replace wwwgfbf = . wwwgfbf == 0 | wwwgfbf == 8 | wwwgfbf == 9 ;
replace wwwcowrk = . wwwcowrk == 0 | wwwcowrk == 8 | wwwcowrk == 9 ;
replace wwwbiz = . wwwbiz == 0 | wwwbiz == 8 | wwwbiz == 9 ;
replace wwwnei = . wwwnei == 0 | wwwnei == 8 | wwwnei == 9 ;
replace wwwfrnd = . wwwfrnd == 0 | wwwfrnd == 8 | wwwfrnd == 9 ;
replace wwwvol = . wwwvol == 0 | wwwvol == 8 | wwwvol == 9 ;
replace online = . online == 0 | online == 8 | online == 9 ;
replace manual = . manual == 0 | manual == 8 | manual == 9 ;
replace callcomp = . callcomp == 0 | callcomp == 8 | callcomp == 9 ;
replace askwork = . askwork == 0 | askwork == 8 | askwork == 9 ;
replace askother = . askother == 0 | askother == 8 | askother == 9 ;
replace payother = . payother == 0 | payother == 8 | payother == 9 ;
replace doonown = . doonown == 0 | doonown == 8 | doonown == 9 ;
replace advsp = . advsp == 0 | advsp == 8 | advsp == 9 ;
replace advchld = . advchld == 0 | advchld == 8 | advchld == 9 ;
replace advpar = . advpar == 0 | advpar == 8 | advpar == 9 ;
replace advsib = . advsib == 0 | advsib == 8 | advsib == 9 ;
replace advfam = . advfam == 0 | advfam == 8 | advfam == 9 ;
replace advtchr = . advtchr == 0 | advtchr == 8 | advtchr == 9 ;
replace advstu = . advstu == 0 | advstu == 8 | advstu == 9 ;
replace advsup = . advsup == 0 | advsup == 8 | advsup == 9 ;
replace advcowrk = . advcowrk == 0 | advcowrk == 8 | advcowrk == 9 ;
replace advcfrnd = . advcfrnd == 0 | advcfrnd == 8 | advcfrnd == 9 ;
replace advofrnd = . advofrnd == 0 | advofrnd == 8 | advofrnd == 9 ;
replace advlib = . advlib == 0 | advlib == 8 | advlib == 9 ;
replace srcheng1 = . srcheng1 == 0 | srcheng1 == 8 | srcheng1 == 9 ;
replace srcheng2 = . srcheng2 == 0 | srcheng2 == 98 | srcheng2 == 99 ;
replace download = . download == 0 | download == 8 | download == 9 ;
replace upload = . upload == 0 | upload == 8 | upload == 9 ;
replace cmpvirus = . cmpvirus == 0 | cmpvirus == 8 | cmpvirus == 9 ;
replace hlthinfo = . hlthinfo == -1 | hlthinfo == 8 | hlthinfo == 9 ;
replace hlthpapr = . hlthpapr == -1 | hlthpapr == 8 | hlthpapr == 9 ;
replace hlthmag1 = . hlthmag1 == -1 | hlthmag1 == 8 | hlthmag1 == 9 ;
replace hlthmag2 = . hlthmag2 == -1 | hlthmag2 == 8 | hlthmag2 == 9 ;
replace hlthdoc = . hlthdoc == -1 | hlthdoc == 8 | hlthdoc == 9 ;
replace hlthfrel = . hlthfrel == -1 | hlthfrel == 8 | hlthfrel == 9 ;
replace hlthtv = . hlthtv == -1 | hlthtv == 8 | hlthtv == 9 ;
replace hlthwww = . hlthwww == -1 | hlthwww == 8 | hlthwww == 9 ;
replace polinfo = . polinfo == -1 | polinfo == 8 | polinfo == 9 ;
replace polpapr = . polpapr == -1 | polpapr == 8 | polpapr == 9 ;
replace polmag1 = . polmag1 == -1 | polmag1 == 8 | polmag1 == 9 ;
replace polmag2 = . polmag2 == -1 | polmag2 == 8 | polmag2 == 9 ;
replace poltv = . poltv == -1 | poltv == 8 | poltv == 9 ;
replace polfrel = . polfrel == -1 | polfrel == 8 | polfrel == 9 ;
replace polcamp = . polcamp == -1 | polcamp == 8 | polcamp == 9 ;
replace polwww = . polwww == -1 | polwww == 8 | polwww == 9 ;
replace buyinfgn = . buyinfgn == -1 | buyinfgn == 8 | buyinfgn == 9 ;
replace investgn = . investgn == -1 | investgn == 8 | investgn == 9 ;
replace travelgn = . travelgn == -1 | travelgn == 8 | travelgn == 9 ;
replace peoplegn = . peoplegn == -1 | peoplegn == 8 | peoplegn == 9 ;
replace gamegn = . gamegn == -1 | gamegn == 8 | gamegn == 9 ;
replace newjobgn = . newjobgn == -1 | newjobgn == 8 | newjobgn == 9 ;
replace poldisgn = . poldisgn == -1 | poldisgn == 8 | poldisgn == 9 ;
replace polinfgn = . polinfgn == -1 | polinfgn == 8 | polinfgn == 9 ;
replace perfrmgn = . perfrmgn == -1 | perfrmgn == 8 | perfrmgn == 9 ;
replace artgn = . artgn == -1 | artgn == 8 | artgn == 9 ;
replace polcangn = . polcangn == -1 | polcangn == 8 | polcangn == 9 ;
replace numcntct = . numcntct == -1 | numcntct == 998 | numcntct == 999 ;
replace inperson = . inperson == 0 | inperson == 98 | inperson == 99 ;
replace byphone = . byphone == 0 | byphone == 98 | byphone == 99 ;
replace letters = . letters == 0 | letters == 98 | letters == 99 ;
replace meetings = . meetings == 0 | meetings == 98 | meetings == 99 ;
replace byemail = . byemail == 0 | byemail == 98 | byemail == 99 ;
replace comphome = . comphome == 0 | comphome == 8 | comphome == 9 ;
replace usehome = . usehome == 0 | usehome == 8 | usehome == 9 ;
replace numhome = . numhome == 0 | numhome == 8 | numhome == 9 ;
replace wwwhome = . wwwhome == 0 | wwwhome == 8 | wwwhome == 9 ;
replace paywww = . paywww == 0 | paywww == 8 | paywww == 9 ;
replace wwwline1 = . wwwline1 == 0 | wwwline1 == 8 | wwwline1 == 9 ;
replace wwwline2 = . wwwline2 == 0 | wwwline2 == 8 | wwwline2 == 9 ;
replace ecomminh = . ecomminh == -1 | ecomminh == 98 | ecomminh == 99 ;
replace ecomhrh = . ecomhrh == -1 | ecomhrh == 998 | ecomhrh == 999 ;
replace perminh = . perminh == -1 | perminh == 98 | perminh == 99 ;
replace perhrh = . perhrh == -1 | perhrh == 998 | perhrh == 999 ;
replace wrkminh = . wrkminh == -1 | wrkminh == 98 | wrkminh == 99 ;
replace wrkhrh = . wrkhrh == -1 | wrkhrh == 998 | wrkhrh == 999 ;
replace emminh = . emminh == -1 | emminh == 98 | emminh == 99 ;
replace emhrh = . emhrh == -1 | emhrh == 998 | emhrh == 999 ;
replace wwwminh = . wwwminh == -1 | wwwminh == 98 | wwwminh == 99 ;
replace wwwhrh = . wwwhrh == -1 | wwwhrh == 998 | wwwhrh == 999 ;
replace compwork = . compwork == 0 | compwork == 8 | compwork == 9 ;
replace jobminw = . jobminw == -1 | jobminw == 98 | jobminw == 99 ;
replace jobhrw = . jobhrw == -1 | jobhrw == 998 | jobhrw == 999 ;
replace incminw = . incminw == -1 | incminw == 98 | incminw == 99 ;
replace inchrw = . inchrw == -1 | inchrw == 998 | inchrw == 999 ;
replace ecomminw = . ecomminw == -1 | ecomminw == 98 | ecomminw == 99 ;
replace ecomhrw = . ecomhrw == -1 | ecomhrw == 998 | ecomhrw == 999 ;
replace perminw = . perminw == -1 | perminw == 98 | perminw == 99 ;
replace perhrw = . perhrw == -1 | perhrw == 998 | perhrw == 999 ;
replace emminw = . emminw == -1 | emminw == 98 | emminw == 99 ;
replace emhrw = . emhrw == -1 | emhrw == 998 | emhrw == 999 ;
replace wwwminw = . wwwminw == -1 | wwwminw == 98 | wwwminw == 99 ;
replace wwwhrw = . wwwhrw == -1 | wwwhrw == 998 | wwwhrw == 999 ;
replace compoth = . compoth == 0 | compoth == 8 | compoth == 9 ;
replace compschl = . compschl == 0 | compschl == 8 | compschl == 9 ;
replace complib = . complib == 0 | complib == 8 | complib == 9 ;
replace compfri = . compfri == 0 | compfri == 8 | compfri == 9 ;
replace compelse = . compelse == 0 | compelse == 8 | compelse == 9 ;
replace mostloc = . mostloc == 0 | mostloc == 8 | mostloc == 9 ;
replace ecommino = . ecommino == -1 | ecommino == 98 | ecommino == 99 ;
replace ecomhro = . ecomhro == -1 | ecomhro == 998 | ecomhro == 999 ;
replace permino = . permino == -1 | permino == 98 | permino == 99 ;
replace perhro = . perhro == -1 | perhro == 998 | perhro == 999 ;
replace wrkmino = . wrkmino == -1 | wrkmino == 98 | wrkmino == 99 ;
replace wrkhro = . wrkhro == -1 | wrkhro == 998 | wrkhro == 999 ;
replace emmino = . emmino == -1 | emmino == 98 | emmino == 99 ;
replace emhro = . emhro == -1 | emhro == 998 | emhro == 999 ;
replace wwwmino = . wwwmino == -1 | wwwmino == 98 | wwwmino == 99 ;
replace wwwhro = . wwwhro == -1 | wwwhro == 998 | wwwhro == 999 ;
replace emsent = . emsent == -1 | emsent == 998 | emsent == 999 ;
replace emsentp = . emsentp == -1 | emsentp == 998 | emsentp == 999 ;
replace emget = . emget == -1 | emget == 998 | emget == 999 ;
replace emgetp = . emgetp == -1 | emgetp == 998 | emgetp == 999 ;
replace emwrkloc = . emwrkloc == 0 | emwrkloc == 8 | emwrkloc == 9 ;
replace emwrkawy = . emwrkawy == 0 | emwrkawy == 8 | emwrkawy == 9 ;
replace emfamloc = . emfamloc == 0 | emfamloc == 8 | emfamloc == 9 ;
replace emfamoth = . emfamoth == 0 | emfamoth == 8 | emfamoth == 9 ;
replace emfri = . emfri == 0 | emfri == 8 | emfri == 9 ;
replace emchurch = . emchurch == 0 | emchurch == 8 | emchurch == 9 ;
replace emgroups = . emgroups == 0 | emgroups == 8 | emgroups == 9 ;
replace numprobs = . numprobs == -1 | numprobs == 98 | numprobs == 99 ;
replace byemprob = . byemprob == -1 | byemprob == 98 | byemprob == 99 ;
replace intaccss = . intaccss == 0 | intaccss == 8 | intaccss == 9 ;
replace jobinfo = . jobinfo == -1 | jobinfo == 8 | jobinfo == 9 ;
replace jobpaper = . jobpaper == -1 | jobpaper == 8 | jobpaper == 9 ;
replace jobpub = . jobpub == -1 | jobpub == 8 | jobpub == 9 ;
replace jobcowrk = . jobcowrk == -1 | jobcowrk == 8 | jobcowrk == 9 ;
replace jobcntct = . jobcntct == -1 | jobcntct == 8 | jobcntct == 9 ;
replace jobfrnds = . jobfrnds == -1 | jobfrnds == 8 | jobfrnds == 9 ;
replace jobplace = . jobplace == -1 | jobplace == 8 | jobplace == 9 ;
replace jobtvrad = . jobtvrad == -1 | jobtvrad == 8 | jobtvrad == 9 ;
replace jobonwww = . jobonwww == -1 | jobonwww == 8 | jobonwww == 9 ;
replace emailyr = . emailyr == 0 | emailyr == 8 | emailyr == 9 ;
replace webyr = . webyr == 0 | webyr == 8 | webyr == 9 ;
replace webable = . webable == 0 | webable == 8 | webable == 9 ;
replace manbook = . manbook == 0 | manbook == 8 | manbook == 9 ;
replace cussup = . cussup == 0 | cussup == 8 | cussup == 9 ;
replace tecsup = . tecsup == 0 | tecsup == 8 | tecsup == 9 ;
replace askwksch = . askwksch == 0 | askwksch == 8 | askwksch == 9 ;
replace askelse = . askelse == 0 | askelse == 8 | askelse == 9 ;
replace payelse = . payelse == 0 | payelse == 8 | payelse == 9 ;
replace doself = . doself == 0 | doself == 8 | doself == 9 ;
replace processr = . processr == 0 | processr == 8 | processr == 9 ;
replace browser1 = . browser1 == 0 | browser1 == 8 | browser1 == 9 ;
replace browser2 = . browser2 == 0 | browser2 == 8 | browser2 == 9 ;
replace browser3 = . browser3 == 0 | browser3 == 98 | browser3 == 99 ;
replace advsrch = . advsrch == 0 | advsrch == 8 | advsrch == 9 ;
replace mp3 = . mp3 == 0 | mp3 == 8 | mp3 == 9 ;
replace ezines = . ezines == 0 | ezines == 8 | ezines == 9 ;
replace prefsets = . prefsets == 0 | prefsets == 8 | prefsets == 9 ;
replace newsgrps = . newsgrps == 0 | newsgrps == 8 | newsgrps == 9 ;
replace timekid1 = . timekid1 == 0 | timekid1 == 8 | timekid1 == 9 ;
replace timekid2 = . timekid2 == 0 | timekid2 == 8 | timekid2 == 9 ;
replace timekid3 = . timekid3 == 0 | timekid3 == 8 | timekid3 == 9 ;
replace timekid4 = . timekid4 == 0 | timekid4 == 8 | timekid4 == 9 ;
replace sptmkid1 = . sptmkid1 == 0 | sptmkid1 == 8 | sptmkid1 == 9 ;
replace sptmkid2 = . sptmkid2 == 0 | sptmkid2 == 8 | sptmkid2 == 9 ;
replace sptmkid3 = . sptmkid3 == 0 | sptmkid3 == 8 | sptmkid3 == 9 ;
replace sptmkid4 = . sptmkid4 == 0 | sptmkid4 == 8 | sptmkid4 == 9 ;
replace kdtmkid1 = . kdtmkid1 == 0 | kdtmkid1 == 8 | kdtmkid1 == 9 ;
replace kdtmkid2 = . kdtmkid2 == 0 | kdtmkid2 == 8 | kdtmkid2 == 9 ;
replace kdtmkid3 = . kdtmkid3 == 0 | kdtmkid3 == 8 | kdtmkid3 == 9 ;
replace kdtmkid4 = . kdtmkid4 == 0 | kdtmkid4 == 8 | kdtmkid4 == 9 ;
replace knowkid1 = . knowkid1 == 0 | knowkid1 == 8 | knowkid1 == 9 ;
replace knowkid2 = . knowkid2 == 0 | knowkid2 == 8 | knowkid2 == 9 ;
replace knowkid3 = . knowkid3 == 0 | knowkid3 == 8 | knowkid3 == 9 ;
replace knowkid4 = . knowkid4 == 0 | knowkid4 == 8 | knowkid4 == 9 ;
replace huclean = . huclean == 0 | huclean == 8 | huclean == 9 ;
replace homeband = . homeband == 0 | homeband == 9 ;
replace freemns1 = . freemns1 == 0 | freemns1 == 98 ;
replace freemns2 = . freemns2 == 0 | freemns2 == 98 ;
replace freemns3 = . freemns3 == 0 | freemns3 == 98 ;
replace freeexp1 = . freeexp1 == 0 | freeexp1 == 98 ;
replace freeexp2 = . freeexp2 == 0 | freeexp2 == 98 ;
replace freeexp3 = . freeexp3 == 0 | freeexp3 == 98 ;
replace howfree = . howfree == 0 | howfree == 8 | howfree == 9 ;
replace rhowfree = . rhowfree == 0 | rhowfree == 8 | rhowfree == 9 ;
replace freenow = . freenow == 0 | freenow == 8 | freenow == 9 ;
replace rfreenow = . rfreenow == 0 | rfreenow == 8 | rfreenow == 9 ;
replace satdemoc = . satdemoc == 0 | satdemoc == 8 | satdemoc == 9 ;
replace leftlone = . leftlone == 0 | leftlone == 8 | leftlone == 9 ;
replace nogovt = . nogovt == 0 | nogovt == 8 | nogovt == 9 ;
replace inpeace = . inpeace == 0 | inpeace == 8 | inpeace == 9 ;
replace partpol = . partpol == 0 | partpol == 8 | partpol == 9 ;
replace choice = . choice == 0 | choice == 8 | choice == 9 ;
replace expunpop = . expunpop == 0 | expunpop == 8 | expunpop == 9 ;
replace freeprss = . freeprss == 0 | freeprss == 8 | freeprss == 9 ;
replace wlthpov = . wlthpov == 0 | wlthpov == 8 | wlthpov == 9 ;
replace cntrlife = . cntrlife == 0 | cntrlife == 8 | cntrlife == 9 ;
replace modact = . modact == 0 | modact == 8 | modact == 9 ;
replace stairs = . stairs == 0 | stairs == 8 | stairs == 9 ;
replace didlessp = . didlessp == 0 | didlessp == 8 | didlessp == 9 ;
replace limitedp = . limitedp == 0 | limitedp == 8 | limitedp == 9 ;
replace didlesse = . didlesse == 0 | didlesse == 8 | didlesse == 9 ;
replace crelesse = . crelesse == 0 | crelesse == 8 | crelesse == 9 ;
replace pain = . pain == 0 | pain == 8 | pain == 9 ;
replace peaceful = . peaceful == 0 | peaceful == 8 | peaceful == 9 ;
replace energy = . energy == 0 | energy == 8 | energy == 9 ;
replace downblue = . downblue == 0 | downblue == 8 | downblue == 9 ;
replace socacts = . socacts == 0 | socacts == 8 | socacts == 9 ;
replace treat1 = . treat1 == 0 | treat1 == 8 | treat1 == 9 ;
replace treat2 = . treat2 == 0 | treat2 == 8 | treat2 == 9 ;
replace treat3 = . treat3 == 0 | treat3 == 8 | treat3 == 9 ;
replace treat4 = . treat4 == 0 | treat4 == 8 | treat4 == 9 ;
replace treat5 = . treat5 == 0 | treat5 == 8 | treat5 == 9 ;
replace treat6 = . treat6 == 0 | treat6 == 8 | treat6 == 9 ;
replace treat7 = . treat7 == 0 | treat7 == 8 | treat7 == 9 ;
replace treat8 = . treat8 == 0 | treat8 == 8 | treat8 == 9 ;
replace treat9 = . treat9 == 0 | treat9 == 8 | treat9 == 9 ;
replace treat10 = . treat10 == 0 | treat10 == 8 | treat10 == 9 ;
replace treat11 = . treat11 == 0 | treat11 == 8 | treat11 == 9 ;
replace wait1 = . wait1 == -1 | wait1 == 8 | wait1 == 9 ;
replace wait2 = . wait2 == -1 | wait2 == 8 | wait2 == 9 ;
replace wait3 = . wait3 == -1 | wait3 == 998 | wait3 == 999 ;
replace wait4 = . wait4 == -1 | wait4 == 998 | wait4 == 999 ;
replace wait5 = . wait5 == -1 | wait5 == 998 | wait5 == 999 ;
replace wait6 = . wait6 == -1 | wait6 == 998 | wait6 == 999 ;
replace wait7 = . wait7 == -1 | wait7 == 998 | wait7 == 999 ;
replace wait8 = . wait8 == -1 | wait8 == 998 | wait8 == 999 ;
replace wait9 = . wait9 == -1 | wait9 == 998 | wait9 == 999 ;
replace wait10 = . wait10 == -1 | wait10 == 998 | wait10 == 999 ;
replace wait11 = . wait11 == -1 | wait11 == 998 | wait11 == 999 ;
replace downqol = . downqol == 0 | downqol == 8 | downqol == 9 ;
replace downfam = . downfam == 0 | downfam == 8 | downfam == 9 ;
replace downcure = . downcure == 0 | downcure == 8 | downcure == 9 ;
replace downrely = . downrely == 0 | downrely == 8 | downrely == 9 ;
replace downfeel = . downfeel == 0 | downfeel == 8 | downfeel == 9 ;
replace painqol = . painqol == 0 | painqol == 8 | painqol == 9 ;
replace painfam = . painfam == 0 | painfam == 8 | painfam == 9 ;
replace paincure = . paincure == 0 | paincure == 8 | paincure == 9 ;
replace painrely = . painrely == 0 | painrely == 8 | painrely == 9 ;
replace painfeel = . painfeel == 0 | painfeel == 8 | painfeel == 9 ;
replace emotqol = . emotqol == 0 | emotqol == 8 | emotqol == 9 ;
replace emotfam = . emotfam == 0 | emotfam == 8 | emotfam == 9 ;
replace emotcure = . emotcure == 0 | emotcure == 8 | emotcure == 9 ;
replace emotrely = . emotrely == 0 | emotrely == 8 | emotrely == 9 ;
replace emotfeel = . emotfeel == 0 | emotfeel == 8 | emotfeel == 9 ;
replace ethimp = . ethimp == 0 | ethimp == 8 | ethimp == 9 ;
replace ethignor = . ethignor == 0 | ethignor == 8 | ethignor == 9 ;
replace ethnofit = . ethnofit == 0 | ethnofit == 8 | ethnofit == 9 ;
replace ethtrads = . ethtrads == 0 | ethtrads == 8 | ethtrads == 9 ;
replace ethadapt = . ethadapt == 0 | ethadapt == 8 | ethadapt == 9 ;
replace feelblks = . feelblks == 0 | feelblks == 98 | feelblks == 99 ;
replace feelasns = . feelasns == 0 | feelasns == 98 | feelasns == 99 ;
replace feelhsps = . feelhsps == 0 | feelhsps == 98 | feelhsps == 99 ;
replace feelwhts = . feelwhts == 0 | feelwhts == 98 | feelwhts == 99 ;
replace ethsame = . ethsame == 0 | ethsame == 8 | ethsame == 9 ;
replace ethdiff = . ethdiff == 0 | ethdiff == 8 | ethdiff == 9 ;
replace whtsdiff = . whtsdiff == 0 | whtsdiff == 8 | whtsdiff == 9 ;
replace docvig = . docvig == 0 | docvig == 8 | docvig == 9 ;
replace regdoc = . regdoc == 0 | regdoc == 8 | regdoc == 9 ;
replace regdocyr = . regdocyr == 0 | regdocyr == 8 | regdocyr == 9 ;
replace docaskme = . docaskme == 0 | docaskme == 8 | docaskme == 9 ;
replace docdecid = . docdecid == 0 | docdecid == 8 | docdecid == 9 ;
replace docrely = . docrely == 0 | docrely == 8 | docrely == 9 ;
replace hlthplan = . hlthplan == 0 | hlthplan == 8 | hlthplan == 9 ;
replace chosedoc = . chosedoc == 0 | chosedoc == 8 | chosedoc == 9 ;
replace insrlmts = . insrlmts == 0 | insrlmts == 8 | insrlmts == 9 ;
replace diffcare = . diffcare == 0 | diffcare == 8 | diffcare == 9 ;
replace fininc = . fininc == 0 | fininc == 8 | fininc == 9 ;
replace fininc1 = . fininc1 == 0 | fininc1 == 8 | fininc1 == 9 ;
replace fininc2 = . fininc2 == 0 | fininc2 == 8 | fininc2 == 9 ;
replace fininc3 = . fininc3 == 0 | fininc3 == 8 | fininc3 == 9 ;
replace fininc4 = . fininc4 == 0 | fininc4 == 8 | fininc4 == 9 ;
replace belvedoc = . belvedoc == 0 | belvedoc == 8 | belvedoc == 9 ;
replace docinfo = . docinfo == 0 | docinfo == 8 | docinfo == 9 ;
replace docnomri = . docnomri == 0 | docnomri == 8 | docnomri == 9 ;
replace docsat = . docsat == 0 | docsat == 8 | docsat == 9 ;
replace doccosts = . doccosts == 0 | doccosts == 8 | doccosts == 9 ;
replace docswtch = . docswtch == 0 | docswtch == 8 | docswtch == 9 ;
replace insrchng = . insrchng == 0 | insrchng == 8 | insrchng == 9 ;
replace secopin = . secopin == 0 | secopin == 8 | secopin == 9 ;
replace wrktype = . wrktype == 0 | wrktype == 8 | wrktype == 9 ;
replace yearsjob = . yearsjob == -1 | yearsjob == 98 | yearsjob == 99 ;
replace waypaid = . waypaid == 0 | waypaid == 98 | waypaid == 99 ;
replace wrksched = . wrksched == 0 | wrksched == 8 | wrksched == 9 ;
replace moredays = . moredays == -1 | moredays == 98 | moredays == 99 ;
replace mustwork = . mustwork == 0 | mustwork == 8 | mustwork == 9 ;
replace chngtme = . chngtme == 0 | chngtme == 8 | chngtme == 9 ;
replace wrkhome = . wrkhome == 0 | wrkhome == 8 | wrkhome == 9 ;
replace whywkhme = . whywkhme == 0 | whywkhme == 8 | whywkhme == 9 ;
replace famwkoff = . famwkoff == 0 | famwkoff == 8 | famwkoff == 9 ;
replace wkvsfam = . wkvsfam == 0 | wkvsfam == 8 | wkvsfam == 9 ;
replace famvswk = . famvswk == 0 | famvswk == 8 | famvswk == 9 ;
replace hrsrelax = . hrsrelax == -1 | hrsrelax == 98 | hrsrelax == 99 ;
replace secondwk = . secondwk == 0 | secondwk == 8 | secondwk == 9 ;
replace learnnew = . learnnew == 0 | learnnew == 8 | learnnew == 9 ;
replace workfast = . workfast == 0 | workfast == 8 | workfast == 9 ;
replace workdiff = . workdiff == 0 | workdiff == 8 | workdiff == 9 ;
replace lotofsay = . lotofsay == 0 | lotofsay == 8 | lotofsay == 9 ;
replace wktopsat = . wktopsat == 0 | wktopsat == 8 | wktopsat == 9 ;
replace overwork = . overwork == 0 | overwork == 8 | overwork == 9 ;
replace knowwhat = . knowwhat == 0 | knowwhat == 8 | knowwhat == 9 ;
replace myskills = . myskills == 0 | myskills == 8 | myskills == 9 ;
replace respect = . respect == 0 | respect == 8 | respect == 9 ;
replace trustman = . trustman == 0 | trustman == 8 | trustman == 9 ;
replace safetywk = . safetywk == 0 | safetywk == 8 | safetywk == 9 ;
replace safefrst = . safefrst == 0 | safefrst == 8 | safefrst == 9 ;
replace teamsafe = . teamsafe == 0 | teamsafe == 8 | teamsafe == 9 ;
replace safehlth = . safehlth == 0 | safehlth == 8 | safehlth == 9 ;
replace proudemp = . proudemp == 0 | proudemp == 8 | proudemp == 9 ;
replace prodctiv = . prodctiv == 0 | prodctiv == 8 | prodctiv == 9 ;
replace wksmooth = . wksmooth == 0 | wksmooth == 8 | wksmooth == 9 ;
replace trdunion = . trdunion == 0 | trdunion == 8 | trdunion == 9 ;
replace partteam = . partteam == 0 | partteam == 8 | partteam == 9 ;
replace wkdecide = . wkdecide == 0 | wkdecide == 8 | wkdecide == 9 ;
replace setthngs = . setthngs == 0 | setthngs == 8 | setthngs == 9 ;
replace toofewwk = . toofewwk == 0 | toofewwk == 8 | toofewwk == 9 ;
replace promteok = . promteok == 0 | promteok == 8 | promteok == 9 ;
replace opdevel = . opdevel == 0 | opdevel == 8 | opdevel == 9 ;
replace hlpequip = . hlpequip == 0 | hlpequip == 8 | hlpequip == 9 ;
replace haveinfo = . haveinfo == 0 | haveinfo == 8 | haveinfo == 9 ;
replace wkfreedm = . wkfreedm == 0 | wkfreedm == 8 | wkfreedm == 9 ;
replace fringeok = . fringeok == 0 | fringeok == 8 | fringeok == 9 ;
replace supcares = . supcares == 0 | supcares == 8 | supcares == 9 ;
replace condemnd = . condemnd == 0 | condemnd == 8 | condemnd == 9 ;
replace promtefr = . promtefr == 0 | promtefr == 8 | promtefr == 9 ;
replace cowrkint = . cowrkint == 0 | cowrkint == 8 | cowrkint == 9 ;
replace jobsecok = . jobsecok == 0 | jobsecok == 8 | jobsecok == 9 ;
replace suphelp = . suphelp == 0 | suphelp == 8 | suphelp == 9 ;
replace wrktime = . wrktime == 0 | wrktime == 8 | wrktime == 9 ;
replace cowrkhlp = . cowrkhlp == 0 | cowrkhlp == 8 | cowrkhlp == 9 ;
replace trainops = . trainops == 0 | trainops == 8 | trainops == 9 ;
replace manvsemp = . manvsemp == 0 | manvsemp == 8 | manvsemp == 9 ;
replace hvylift = . hvylift == 0 | hvylift == 8 | hvylift == 9 ;
replace handmove = . handmove == 0 | handmove == 8 | handmove == 9 ;
replace wkpraise = . wkpraise == 0 | wkpraise == 8 | wkpraise == 9 ;
replace wkbonus = . wkbonus == 0 | wkbonus == 8 | wkbonus == 9 ;
replace fairearn = . fairearn == 0 | fairearn == 8 | fairearn == 9 ;
replace rincblls = . rincblls == 0 | rincblls == 8 | rincblls == 9 ;
replace laidoff = . laidoff == 0 | laidoff == 8 | laidoff == 9 ;
replace jobfind1 = . jobfind1 == 0 | jobfind1 == 8 | jobfind1 == 9 ;
replace trynewjb = . trynewjb == 0 | trynewjb == 8 | trynewjb == 9 ;
replace wkageism = . wkageism == 0 | wkageism == 8 | wkageism == 9 ;
replace wkracism = . wkracism == 0 | wkracism == 8 | wkracism == 9 ;
replace wksexism = . wksexism == 0 | wksexism == 8 | wksexism == 9 ;
replace wkharsex = . wkharsex == 0 | wkharsex == 8 | wkharsex == 9 ;
replace wkharoth = . wkharoth == 0 | wkharoth == 8 | wkharoth == 9 ;
replace health1 = . health1 == 0 | health1 == 8 | health1 == 9 ;
replace physhlth = . physhlth == -1 | physhlth == 98 | physhlth == 99 ;
replace mntlhlth = . mntlhlth == -1 | mntlhlth == 98 | mntlhlth == 99 ;
replace hlthdays = . hlthdays == -1 | hlthdays == 98 | hlthdays == 99 ;
replace usedup = . usedup == 0 | usedup == 8 | usedup == 9 ;
replace backpain = . backpain == 0 | backpain == 8 | backpain == 9 ;
replace painarms = . painarms == 0 | painarms == 8 | painarms == 9 ;
replace hurtatwk = . hurtatwk == -1 | hurtatwk == 8 | hurtatwk == 9 ;
replace SPVTRFAIR = . SPVTRFAIR == 0 | SPVTRFAIR == 8 | SPVTRFAIR == 9 ;
replace suprvsjb = . suprvsjb == 0 | suprvsjb == 8 | suprvsjb == 9 ;
replace STRREDPG = . STRREDPG == 0 | STRREDPG == 8 | STRREDPG == 9 ;
replace PHYEFFRT = . PHYEFFRT == 0 | PHYEFFRT == 8 | PHYEFFRT == 9 ;
replace SLPPRBLM = . SLPPRBLM == 0 | SLPPRBLM == 8 | SLPPRBLM == 9 ;
replace satjob1 = . satjob1 == 0 | satjob1 == 8 | satjob1 == 9 ;
replace KNOWSCHD = . KNOWSCHD == 0 | KNOWSCHD == 8 | KNOWSCHD == 9 ;
replace USETECH = . USETECH == -1 | USETECH == 998 | USETECH == 999 ;
replace STRESS12 = . STRESS12 == 0 | STRESS12 == 8 | STRESS12 == 9 ;
replace HYPERTEN = . HYPERTEN == 0 | HYPERTEN == 8 | HYPERTEN == 9 ;
replace arthrtis = . arthrtis == 0 | arthrtis == 8 | arthrtis == 9 ;
replace DIABETES = . DIABETES == 0 | DIABETES == 8 | DIABETES == 9 ;
replace DEPRESS = . DEPRESS == 0 | DEPRESS == 8 | DEPRESS == 9 ;
replace WEIGHT = . WEIGHT == 0 | WEIGHT == 998 | WEIGHT == 999 ;
replace HEIGHT = . HEIGHT == 0 | HEIGHT == 98 | HEIGHT == 99 ;
replace NTWKHARD = . NTWKHARD == -1 | NTWKHARD == 998 | NTWKHARD == 999 ;
replace MISSWORK = . MISSWORK == -1 | MISSWORK == 98 | MISSWORK == 99 ;
replace workfor = . workfor == 0 | workfor == 8 | workfor == 9 ;
replace WORKFOR1 = . WORKFOR1 == 0 | WORKFOR1 == 8 | WORKFOR1 == 9 ;
replace ownstock = . ownstock == 0 | ownstock == 8 | ownstock == 9 ;
replace stockval = . stockval == -1 | stockval == 9999998 | stockval == 9999999 ;
replace stockops = . stockops == 0 | stockops == 8 | stockops == 9 ;
replace extrapay = . extrapay == 0 | extrapay == 8 | extrapay == 9 ;
replace compperf = . compperf == 0 | compperf == 8 | compperf == 9 ;
replace deptperf = . deptperf == 0 | deptperf == 8 | deptperf == 9 ;
replace indperf = . indperf == 0 | indperf == 8 | indperf == 9 ;
replace extr2001 = . extr2001 == 0 | extr2001 == 8 | extr2001 == 9 ;
replace extraval = . extraval == -1 | extraval == 9999998 | extraval == 9999999 ;
replace extrayr = . extrayr == 0 | extrayr == 9998 | extrayr == 9999 ;
replace yearval = . yearval == -1 | yearval == 9999998 | yearval == 9999999 ;
replace seecowrk = . seecowrk == -1 | seecowrk == 98 | seecowrk == 99 ;
replace cowrkhrd = . cowrkhrd == -1 | cowrkhrd == 98 | cowrkhrd == 99 ;
replace talkemp = . talkemp == 0 | talkemp == 8 | talkemp == 9 ;
replace talksup = . talksup == -1 | talksup == 8 | talksup == 9 ;
replace donothng = . donothng == 0 | donothng == 8 | donothng == 9 ;
replace lastwkmo = . lastwkmo == 0 | lastwkmo == 98 | lastwkmo == 99 ;
replace lastwkyr = . lastwkyr == 0 | lastwkyr == 9998 | lastwkyr == 9999 ;
replace empathy1 = . empathy1 == 0 | empathy1 == 8 | empathy1 == 9 ;
replace empathy2 = . empathy2 == 0 | empathy2 == 8 | empathy2 == 9 ;
replace empathy3 = . empathy3 == 0 | empathy3 == 8 | empathy3 == 9 ;
replace empathy4 = . empathy4 == 0 | empathy4 == 8 | empathy4 == 9 ;
replace empathy5 = . empathy5 == 0 | empathy5 == 8 | empathy5 == 9 ;
replace empathy6 = . empathy6 == 0 | empathy6 == 8 | empathy6 == 9 ;
replace empathy7 = . empathy7 == 0 | empathy7 == 8 | empathy7 == 9 ;
replace givblood = . givblood == 0 | givblood == 8 | givblood == 9 ;
replace givhmlss = . givhmlss == 0 | givhmlss == 8 | givhmlss == 9 ;
replace retchnge = . retchnge == 0 | retchnge == 8 | retchnge == 9 ;
replace cutahead = . cutahead == 0 | cutahead == 8 | cutahead == 9 ;
replace volchrty = . volchrty == 0 | volchrty == 8 | volchrty == 9 ;
replace givchrty = . givchrty == 0 | givchrty == 8 | givchrty == 9 ;
replace givseat = . givseat == 0 | givseat == 8 | givseat == 9 ;
replace helpaway = . helpaway == 0 | helpaway == 8 | helpaway == 9 ;
replace carried = . carried == 0 | carried == 8 | carried == 9 ;
replace directns = . directns == 0 | directns == 8 | directns == 9 ;
replace loanitem = . loanitem == 0 | loanitem == 8 | loanitem == 9 ;
replace selfless = . selfless == 0 | selfless == 8 | selfless == 9 ;
replace accptoth = . accptoth == 0 | accptoth == 8 | accptoth == 9 ;
replace othshelp = . othshelp == 0 | othshelp == 8 | othshelp == 9 ;
replace careself = . careself == 0 | careself == 8 | careself == 9 ;
replace peoptrbl = . peoptrbl == 0 | peoptrbl == 8 | peoptrbl == 9 ;
replace selffrst = . selffrst == 0 | selffrst == 8 | selffrst == 9 ;
replace VOLMONTH = . VOLMONTH == 0 | VOLMONTH == 8 | VOLMONTH == 9 ;
replace VALGIVEN = . VALGIVEN == -1 | VALGIVEN == 999998 | VALGIVEN == 999999 ;
replace finind = . finind == 0 | finind == 8 | finind == 9 ;
replace finind1 = . finind1 == -1 | finind1 == 98 | finind1 == 99 ;
replace ownhh = . ownhh == 0 | ownhh == 8 | ownhh == 9 ;
replace ownhh1 = . ownhh1 == -1 | ownhh1 == 98 | ownhh1 == 99 ;
replace eddone = . eddone == 0 | eddone == 8 | eddone == 9 ;
replace eddone1 = . eddone1 == -1 | eddone1 == 98 | eddone1 == 99 ;
replace ftwork = . ftwork == 0 | ftwork == 8 | ftwork == 9 ;
replace ftwork1 = . ftwork1 == -1 | ftwork1 == 98 | ftwork1 == 99 ;
replace supfam = . supfam == 0 | supfam == 8 | supfam == 9 ;
replace supfam1 = . supfam1 == -1 | supfam1 == 98 | supfam1 == 99 ;
replace havchld = . havchld == 0 | havchld == 8 | havchld == 9 ;
replace havchld1 = . havchld1 == -1 | havchld1 == 98 | havchld1 == 99 ;
replace getmar = . getmar == 0 | getmar == 8 | getmar == 9 ;
replace getmar1 = . getmar1 == -1 | getmar1 == 98 | getmar1 == 99 ;
replace boycott = . boycott == 0 | boycott == 8 | boycott == 9 ;
replace signpet = . signpet == 0 | signpet == 8 | signpet == 9 ;
replace protest = . protest == 0 | protest == 8 | protest == 9 ;
replace conoffcl = . conoffcl == 0 | conoffcl == 8 | conoffcl == 9 ;
replace givchng = . givchng == 0 | givchng == 8 | givchng == 9 ;
replace hlpneedy = . hlpneedy == 0 | hlpneedy == 8 | hlpneedy == 9 ;
replace partthon = . partthon == 0 | partthon == 8 | partthon == 9 ;
replace chldvig = . chldvig == 0 ;
replace chldprb = . chldprb == 0 | chldprb == 98 | chldprb == 99 ;
replace chldprob = . chldprob == 0 | chldprob == 8 | chldprob == 9 ;
replace chldhlp = . chldhlp == 0 | chldhlp == 97 | chldhlp == 99 ;
replace badchar = . badchar == 0 | badchar == 8 | badchar == 9 ;
replace chembal = . chembal == 0 | chembal == 8 | chembal == 9 ;
replace stressfl = . stressfl == 0 | stressfl == 8 | stressfl == 9 ;
replace geneprob = . geneprob == 0 | geneprob == 8 | geneprob == 9 ;
replace raised = . raised == 0 | raised == 8 | raised == 9 ;
replace violtv = . violtv == 0 | violtv == 8 | violtv == 9 ;
replace discipln = . discipln == 0 | discipln == 8 | discipln == 9 ;
replace allergic = . allergic == 0 | allergic == 8 | allergic == 9 ;
replace bettrown = . bettrown == 0 | bettrown == 8 | bettrown == 9 ;
replace imprvdis = . imprvdis == 0 | imprvdis == 8 | imprvdis == 9 ;
replace imprveat = . imprveat == 0 | imprveat == 8 | imprveat == 9 ;
replace imprvmed = . imprvmed == 0 | imprvmed == 8 | imprvmed == 9 ;
replace nextdoor = . nextdoor == 0 | nextdoor == 8 | nextdoor == 9 ;
replace spendeve = . spendeve == 0 | spendeve == 8 | spendeve == 9 ;
replace chldfrnd = . chldfrnd == 0 | chldfrnd == 8 | chldfrnd == 9 ;
replace chldsch = . chldsch == 0 | chldsch == 8 | chldsch == 9 ;
replace adfam = . adfam == 0 | adfam == 8 | adfam == 9 ;
replace adfammed = . adfammed == 0 | adfammed == 8 | adfammed == 9 ;
replace adtch = . adtch == 0 | adtch == 8 | adtch == 9 ;
replace adtchmed = . adtchmed == 0 | adtchmed == 8 | adtchmed == 9 ;
replace addoc = . addoc == 0 | addoc == 8 | addoc == 9 ;
replace addocmed = . addocmed == 0 | addocmed == 8 | addocmed == 9 ;
replace adcou = . adcou == 0 | adcou == 8 | adcou == 9 ;
replace adcoumed = . adcoumed == 0 | adcoumed == 8 | adcoumed == 9 ;
replace adpsy = . adpsy == 0 | adpsy == 8 | adpsy == 9 ;
replace adpsymed = . adpsymed == 0 | adpsymed == 8 | adpsymed == 9 ;
replace adhos = . adhos == 0 | adhos == 8 | adhos == 9 ;
replace adhosmed = . adhosmed == 0 | adhosmed == 8 | adhosmed == 9 ;
replace forcedoc = . forcedoc == 0 | forcedoc == 8 | forcedoc == 9 ;
replace forcemed = . forcemed == 0 | forcemed == 8 | forcemed == 9 ;
replace forcehos = . forcehos == 0 | forcehos == 8 | forcehos == 9 ;
replace grwingup = . grwingup == 0 | grwingup == 8 | grwingup == 9 ;
replace mntlill = . mntlill == 0 | mntlill == 8 | mntlill == 9 ;
replace illphys = . illphys == 0 | illphys == 8 | illphys == 9 ;
replace violpeop = . violpeop == 0 | violpeop == 8 | violpeop == 9 ;
replace violself = . violself == 0 | violself == 8 | violself == 9 ;
replace outsider = . outsider == 0 | outsider == 8 | outsider == 9 ;
replace sufadult = . sufadult == 0 | sufadult == 8 | sufadult == 9 ;
replace comknows = . comknows == 0 | comknows == 8 | comknows == 9 ;
replace failure = . failure == 0 | failure == 8 | failure == 9 ;
replace ovrmedkd = . ovrmedkd == 0 | ovrmedkd == 8 | ovrmedkd == 9 ;
replace medkdneg = . medkdneg == 0 | medkdneg == 8 | medkdneg == 9 ;
replace putsoff = . putsoff == 0 | putsoff == 8 | putsoff == 9 ;
replace trbllaw = . trbllaw == 0 | trbllaw == 8 | trbllaw == 9 ;
replace medsavtx = . medsavtx == 0 | medsavtx == 8 | medsavtx == 9 ;
replace zombies = . zombies == 0 | zombies == 8 | zombies == 9 ;
replace pryntfam = . pryntfam == 0 | pryntfam == 8 | pryntfam == 9 ;
replace adhdknow = . adhdknow == 0 | adhdknow == 8 | adhdknow == 9 ;
replace adhdknw = . adhdknw == 0 | adhdknw == 98 | adhdknw == 99 ;
replace adhdreal = . adhdreal == 0 | adhdreal == 8 | adhdreal == 9 ;
replace adhdcon = . adhdcon == 0 | adhdcon == 8 | adhdcon == 9 ;
replace adhdmed = . adhdmed == 0 | adhdmed == 8 | adhdmed == 9 ;
replace mntlrel = . mntlrel == 0 | mntlrel == 8 | mntlrel == 9 ;
replace medsymps = . medsymps == 0 | medsymps == 8 | medsymps == 9 ;
replace medaddct = . medaddct == 0 | medaddct == 8 | medaddct == 9 ;
replace medweak = . medweak == 0 | medweak == 8 | medweak == 9 ;
replace medunacc = . medunacc == 0 | medunacc == 8 | medunacc == 9 ;
replace solveown = . solveown == 0 | solveown == 8 | solveown == 9 ;
replace doc15a = . doc15a == 0 | doc15a == 8 | doc15a == 9 ;
replace doc16a = . doc16a == 0 | doc16a == 8 | doc16a == 9 ;
replace doc18a = . doc18a == 0 | doc18a == 8 | doc18a == 9 ;
replace doc19a = . doc19a == 0 | doc19a == 8 | doc19a == 9 ;
replace doc20a = . doc20a == 0 | doc20a == 8 | doc20a == 9 ;
replace caninf1 = . caninf1 == -1 | caninf1 == 8 | caninf1 == 9 ;
replace caninf2 = . caninf2 == -1 | caninf2 == 8 | caninf2 == 9 ;
replace caninf3 = . caninf3 == -1 | caninf3 == 8 | caninf3 == 9 ;
replace caninf4 = . caninf4 == -1 | caninf4 == 8 | caninf4 == 9 ;
replace caninf5 = . caninf5 == -1 | caninf5 == 8 | caninf5 == 9 ;
replace caninf6 = . caninf6 == -1 | caninf6 == 8 | caninf6 == 9 ;
replace caninf7 = . caninf7 == -1 | caninf7 == 8 | caninf7 == 9 ;
replace caninf8 = . caninf8 == -1 | caninf8 == 8 | caninf8 == 9 ;
replace caninf9 = . caninf9 == -1 | caninf9 == 8 | caninf9 == 9 ;
replace caninf10 = . caninf10 == -1 | caninf10 == 8 | caninf10 == 9 ;
replace caninf11 = . caninf11 == -1 | caninf11 == 8 | caninf11 == 9 ;
replace caninf12 = . caninf12 == -1 | caninf12 == 8 | caninf12 == 9 ;
replace caninf13 = . caninf13 == -1 | caninf13 == 8 | caninf13 == 9 ;
replace caninf14 = . caninf14 == -1 | caninf14 == 98 | caninf14 == 99 ;
replace difstand = . difstand == 0 | difstand == 8 | difstand == 9 ;
replace rptprobs = . rptprobs == 0 | rptprobs == 8 | rptprobs == 9 ;
replace othcredt = . othcredt == 0 | othcredt == 8 | othcredt == 9 ;
replace putdown = . putdown == 0 | putdown == 8 | putdown == 9 ;
replace lackinfo = . lackinfo == 0 | lackinfo == 8 | lackinfo == 9 ;
replace perspace = . perspace == 0 | perspace == 8 | perspace == 9 ;
replace physharm = . physharm == 0 | physharm == 8 | physharm == 9 ;
replace actupset = . actupset == 0 | actupset == 8 | actupset == 9 ;
replace shout = . shout == 0 | shout == 8 | shout == 9 ;
replace hotargus = . hotargus == 0 | hotargus == 8 | hotargus == 9 ;
replace reliedon = . reliedon == 0 | reliedon == 8 | reliedon == 9 ;
replace gdjobsec = . gdjobsec == 0 | gdjobsec == 8 | gdjobsec == 9 ;
replace treatres = . treatres == 0 | treatres == 8 | treatres == 9 ;
replace lookaway = . lookaway == 0 | lookaway == 8 | lookaway == 9 ;
replace skipwork = . skipwork == 0 | skipwork == 8 | skipwork == 9 ;
replace numemps = . numemps == -1 | numemps == 98 | numemps == 99 ;
replace IGNORWK = . IGNORWK == 0 | IGNORWK == 8 | IGNORWK == 9 ;
replace RUMORWK = . RUMORWK == 0 | RUMORWK == 8 | RUMORWK == 9 ;
replace JOKESWK = . JOKESWK == 0 | JOKESWK == 8 | JOKESWK == 9 ;
replace EHARASWK = . EHARASWK == 0 | EHARASWK == 8 | EHARASWK == 9 ;
replace RUDEWK = . RUDEWK == 0 | RUDEWK == 8 | RUDEWK == 9 ;
replace LIEDCWKR = . LIEDCWKR == 0 | LIEDCWKR == 8 | LIEDCWKR == 9 ;
replace DENYRAIS = . DENYRAIS == 0 | DENYRAIS == 8 | DENYRAIS == 9 ;
replace WKBHVRS = . WKBHVRS == 0 | WKBHVRS == 8 | WKBHVRS == 9 ;
replace WKRSPNS = . WKRSPNS == 0 | WKRSPNS == 98 | WKRSPNS == 99 ;
replace natborn = . natborn == 0 | natborn == 98 | natborn == 99 ;
replace bornhome = . bornhome == 0 | bornhome == 8 | bornhome == 9 ;
replace travelus = . travelus == 0 | travelus == 8 | travelus == 9 ;
replace immstats = . immstats == 0 | immstats == 8 | immstats == 9 ;
replace rundrstd = . rundrstd == 0 | rundrstd == 8 | rundrstd == 9 ;
replace robject = . robject == 0 | robject == 8 | robject == 9 ;
replace genevig1 = . genevig1 == 0 ;
replace genevig2 = . genevig2 == 0 ;
replace genenvo1 = . genenvo1 == 0 | genenvo1 == 98 | genenvo1 == 99 ;
replace genenvo2 = . genenvo2 == 0 | genenvo2 == 98 | genenvo2 == 99 ;
replace genenvo3 = . genenvo3 == 0 | genenvo3 == 98 | genenvo3 == 99 ;
replace genenvo4 = . genenvo4 == 0 | genenvo4 == 98 | genenvo4 == 99 ;
replace satself = . satself == 0 | satself == 8 | satself == 9 ;
replace afailure = . afailure == 0 | afailure == 8 | afailure == 9 ;
replace slfrspct = . slfrspct == 0 | slfrspct == 8 | slfrspct == 9 ;
replace ofworth = . ofworth == 0 | ofworth == 8 | ofworth == 9 ;
replace nogood = . nogood == 0 | nogood == 8 | nogood == 9 ;
replace optimist = . optimist == 0 | optimist == 8 | optimist == 9 ;
replace pessimst = . pessimst == 0 | pessimst == 8 | pessimst == 9 ;
replace notcount = . notcount == 0 | notcount == 8 | notcount == 9 ;
replace moregood = . moregood == 0 | moregood == 8 | moregood == 9 ;
replace owndoing = . owndoing == 0 | owndoing == 8 | owndoing == 9 ;
replace geneexps = . geneexps == 0 | geneexps == 8 | geneexps == 9 ;
replace depndabl = . depndabl == 0 | depndabl == 8 | depndabl == 9 ;
replace sadblue = . sadblue == 0 | sadblue == 8 | sadblue == 9 ;
replace athletic = . athletic == 0 | athletic == 8 | athletic == 9 ;
replace kindpers = . kindpers == 0 | kindpers == 8 | kindpers == 9 ;
replace selfish = . selfish == 0 | selfish == 8 | selfish == 9 ;
replace intrwght = . intrwght == 0 | intrwght == 8 | intrwght == 9 ;
replace agape1 = . agape1 == 0 | agape1 == 8 | agape1 == 9 ;
replace agape2 = . agape2 == 0 | agape2 == 8 | agape2 == 9 ;
replace agape3 = . agape3 == 0 | agape3 == 8 | agape3 == 9 ;
replace agape4 = . agape4 == 0 | agape4 == 8 | agape4 == 9 ;
replace hgunlaw = . hgunlaw == 0 | hgunlaw == 8 | hgunlaw == 9 ;
replace hguncrim = . hguncrim == 0 | hguncrim == 8 | hguncrim == 9 ;
replace crimup = . crimup == 0 | crimup == 8 | crimup == 9 ;
replace crimdown = . crimdown == 0 | crimdown == 8 | crimdown == 9 ;
replace numrelex = . numrelex == -1 | numrelex == 9 ;
replace agerelex = . agerelex == -1 | agerelex == 98 | agerelex == 99 ;
replace chngrel = . chngrel == 0 | chngrel == 98 | chngrel == 99 ;
replace numrborn = . numrborn == 0 | numrborn == 98 | numrborn == 99 ;
replace agerborn = . agerborn == -1 | agerborn == 8 | agerborn == 9 ;
replace chngrbrn = . chngrbrn == 0 | chngrbrn == 8 | chngrbrn == 9 ;
replace entity = . entity == 0 | entity == 98 | entity == 99 ;
replace expchng1 = . expchng1 == 0 | expchng1 == 98 | expchng1 == 99 ;
replace expchng2 = . expchng2 == 0 | expchng2 == 98 | expchng2 == 99 ;
replace expchng3 = . expchng3 == 0 | expchng3 == 98 | expchng3 == 99 ;
replace whychng1 = . whychng1 == 0 | whychng1 == 98 | whychng1 == 99 ;
replace whychng2 = . whychng2 == 0 | whychng2 == 98 | whychng2 == 99 ;
replace whychng3 = . whychng3 == 0 | whychng3 == 98 | whychng3 == 99 ;
replace changed1 = . changed1 == 0 | changed1 == 98 | changed1 == 99 ;
replace changed2 = . changed2 == 0 | changed2 == 98 | changed2 == 99 ;
replace changed3 = . changed3 == 0 | changed3 == 98 | changed3 == 99 ;
replace relalt1 = . relalt1 == 0 | relalt1 == 98 | relalt1 == 99 ;
replace relalt2 = . relalt2 == 0 | relalt2 == 98 | relalt2 == 99 ;
replace relalt3 = . relalt3 == 0 | relalt3 == 98 | relalt3 == 99 ;
replace relalt4 = . relalt4 == 0 | relalt4 == 98 | relalt4 == 99 ;
replace relalt5 = . relalt5 == 0 | relalt5 == 98 | relalt5 == 99 ;
replace relalt6 = . relalt6 == 0 | relalt6 == 98 | relalt6 == 99 ;
replace alloflfe = . alloflfe == 0 | alloflfe == 8 | alloflfe == 9 ;
replace joylifts = . joylifts == 0 | joylifts == 8 | joylifts == 9 ;
replace relsprt1 = . relsprt1 == 0 | relsprt1 == 8 | relsprt1 == 9 ;
replace relsprt2 = . relsprt2 == 0 | relsprt2 == 8 | relsprt2 == 9 ;
replace godhelp = . godhelp == 0 | godhelp == 8 | godhelp == 9 ;
replace godguide = . godguide == 0 | godguide == 8 | godguide == 9 ;
replace godlvdir = . godlvdir == 0 | godlvdir == 8 | godlvdir == 9 ;
replace godlvoth = . godlvoth == 0 | godlvoth == 8 | godlvoth == 9 ;
replace blessngs = . blessngs == 0 | blessngs == 8 | blessngs == 9 ;
replace closrgod = . closrgod == 0 | closrgod == 8 | closrgod == 9 ;
replace godclose = . godclose == 0 | godclose == 8 | godclose == 9 ;
replace idols = . idols == 0 | idols == 8 | idols == 9 ;
replace rosaries = . rosaries == 0 | rosaries == 8 | rosaries == 9 ;
replace notthink = . notthink == 0 | notthink == 8 | notthink == 9 ;
replace evdrink = . evdrink == 0 | evdrink == 8 | evdrink == 9 ;
replace drinkyr = . drinkyr == 0 | drinkyr == 98 | drinkyr == 99 ;
replace drinkday = . drinkday == 0 | drinkday == 98 | drinkday == 99 ;
replace drink6up = . drink6up == 0 | drink6up == 98 | drink6up == 99 ;
replace drinkmax = . drinkmax == -1 | drinkmax == 98 | drinkmax == 99 ;
replace drink12 = . drink12 == 0 | drink12 == 98 | drink12 == 99 ;
replace drink8 = . drink8 == 0 | drink8 == 98 | drink8 == 99 ;
replace drink5 = . drink5 == 0 | drink5 == 98 | drink5 == 99 ;
replace drink3 = . drink3 == 0 | drink3 == 98 | drink3 == 99 ;
replace drink1 = . drink1 == 0 | drink1 == 98 | drink1 == 99 ;
replace drinkmin = . drinkmin == 0 | drinkmin == 98 | drinkmin == 99 ;
replace churchtx = . churchtx == 0 | churchtx == 8 | churchtx == 9 ;
replace infrmgrp = . infrmgrp == 0 | infrmgrp == 8 | infrmgrp == 9 ;
replace typfrat = . typfrat == 0 | typfrat == 8 | typfrat == 9 ;
replace typserv = . typserv == 0 | typserv == 8 | typserv == 9 ;
replace typvet = . typvet == 0 | typvet == 8 | typvet == 9 ;
replace typpolit = . typpolit == 0 | typpolit == 8 | typpolit == 9 ;
replace typunion = . typunion == 0 | typunion == 8 | typunion == 9 ;
replace typsport = . typsport == 0 | typsport == 8 | typsport == 9 ;
replace typyouth = . typyouth == 0 | typyouth == 8 | typyouth == 9 ;
replace typschl = . typschl == 0 | typschl == 8 | typschl == 9 ;
replace typhobby = . typhobby == 0 | typhobby == 8 | typhobby == 9 ;
replace typgreek = . typgreek == 0 | typgreek == 8 | typgreek == 9 ;
replace typnat = . typnat == 0 | typnat == 8 | typnat == 9 ;
replace typfarm = . typfarm == 0 | typfarm == 8 | typfarm == 9 ;
replace typlit = . typlit == 0 | typlit == 8 | typlit == 9 ;
replace typprof = . typprof == 0 | typprof == 8 | typprof == 9 ;
replace typchurh = . typchurh == 0 | typchurh == 8 | typchurh == 9 ;
replace typother = . typother == 0 | typother == 8 | typother == 9 ;
replace typinfrm = . typinfrm == 0 | typinfrm == 8 | typinfrm == 9 ;
replace numfrat = . numfrat == -1 | numfrat == 8 | numfrat == 9 ;
replace numserv = . numserv == -1 | numserv == 8 | numserv == 9 ;
replace numvet = . numvet == -1 | numvet == 8 | numvet == 9 ;
replace numpolit = . numpolit == -1 | numpolit == 8 | numpolit == 9 ;
replace numunion = . numunion == -1 | numunion == 8 | numunion == 9 ;
replace numsport = . numsport == -1 | numsport == 8 | numsport == 9 ;
replace numyouth = . numyouth == -1 | numyouth == 8 | numyouth == 9 ;
replace numschl = . numschl == -1 | numschl == 8 | numschl == 9 ;
replace numhobby = . numhobby == -1 | numhobby == 8 | numhobby == 9 ;
replace numgreek = . numgreek == -1 | numgreek == 8 | numgreek == 9 ;
replace numnat = . numnat == -1 | numnat == 8 | numnat == 9 ;
replace numfarm = . numfarm == -1 | numfarm == 8 | numfarm == 9 ;
replace numlit = . numlit == -1 | numlit == 8 | numlit == 9 ;
replace numprof = . numprof == -1 | numprof == 8 | numprof == 9 ;
replace numchurh = . numchurh == -1 | numchurh == 8 | numchurh == 9 ;
replace numother = . numother == -1 | numother == 8 | numother == 9 ;
replace numinfrm = . numinfrm == -1 | numinfrm == 8 | numinfrm == 9 ;
replace yrfrat1 = . yrfrat1 == -1 | yrfrat1 == 98 | yrfrat1 == 99 ;
replace yrfrat2 = . yrfrat2 == -1 | yrfrat2 == 98 | yrfrat2 == 99 ;
replace yrfrat3 = . yrfrat3 == -1 | yrfrat3 == 98 | yrfrat3 == 99 ;
replace yrfrat4 = . yrfrat4 == -1 | yrfrat4 == 98 | yrfrat4 == 99 ;
replace yrserv1 = . yrserv1 == -1 | yrserv1 == 98 | yrserv1 == 99 ;
replace yrserv2 = . yrserv2 == -1 | yrserv2 == 98 | yrserv2 == 99 ;
replace yrserv3 = . yrserv3 == -1 | yrserv3 == 98 | yrserv3 == 99 ;
replace yrserv4 = . yrserv4 == -1 | yrserv4 == 98 | yrserv4 == 99 ;
replace yrserv5 = . yrserv5 == -1 | yrserv5 == 98 | yrserv5 == 99 ;
replace yrserv6 = . yrserv6 == -1 | yrserv6 == 98 | yrserv6 == 99 ;
replace yrserv7 = . yrserv7 == -1 | yrserv7 == 98 | yrserv7 == 99 ;
replace yrserv8 = . yrserv8 == -1 | yrserv8 == 98 | yrserv8 == 99 ;
replace yrvet1 = . yrvet1 == -1 | yrvet1 == 98 | yrvet1 == 99 ;
replace yrvet2 = . yrvet2 == -1 | yrvet2 == 98 | yrvet2 == 99 ;
replace yrvet3 = . yrvet3 == -1 | yrvet3 == 98 | yrvet3 == 99 ;
replace yrvet4 = . yrvet4 == -1 | yrvet4 == 98 | yrvet4 == 99 ;
replace yrvet5 = . yrvet5 == -1 | yrvet5 == 98 | yrvet5 == 99 ;
replace yrpolit1 = . yrpolit1 == -1 | yrpolit1 == 98 | yrpolit1 == 99 ;
replace yrpolit2 = . yrpolit2 == -1 | yrpolit2 == 98 | yrpolit2 == 99 ;
replace yrpolit3 = . yrpolit3 == -1 | yrpolit3 == 98 | yrpolit3 == 99 ;
replace yrunion1 = . yrunion1 == -1 | yrunion1 == 98 | yrunion1 == 99 ;
replace yrunion2 = . yrunion2 == -1 | yrunion2 == 98 | yrunion2 == 99 ;
replace yrunion3 = . yrunion3 == -1 | yrunion3 == 98 | yrunion3 == 99 ;
replace yrunion4 = . yrunion4 == -1 | yrunion4 == 98 | yrunion4 == 99 ;
replace yrsport1 = . yrsport1 == -1 | yrsport1 == 98 | yrsport1 == 99 ;
replace yrsport2 = . yrsport2 == -1 | yrsport2 == 98 | yrsport2 == 99 ;
replace yrsport3 = . yrsport3 == -1 | yrsport3 == 98 | yrsport3 == 99 ;
replace yrsport4 = . yrsport4 == -1 | yrsport4 == 98 | yrsport4 == 99 ;
replace yrsport5 = . yrsport5 == -1 | yrsport5 == 98 | yrsport5 == 99 ;
replace yrsport6 = . yrsport6 == -1 | yrsport6 == 98 | yrsport6 == 99 ;
replace yryouth1 = . yryouth1 == -1 | yryouth1 == 98 | yryouth1 == 99 ;
replace yryouth2 = . yryouth2 == -1 | yryouth2 == 98 | yryouth2 == 99 ;
replace yryouth3 = . yryouth3 == -1 | yryouth3 == 98 | yryouth3 == 99 ;
replace yryouth4 = . yryouth4 == -1 | yryouth4 == 98 | yryouth4 == 99 ;
replace yryouth5 = . yryouth5 == -1 | yryouth5 == 98 | yryouth5 == 99 ;
replace yrschl1 = . yrschl1 == -1 | yrschl1 == 98 | yrschl1 == 99 ;
replace yrschl2 = . yrschl2 == -1 | yrschl2 == 98 | yrschl2 == 99 ;
replace yrschl3 = . yrschl3 == -1 | yrschl3 == 98 | yrschl3 == 99 ;
replace yrschl4 = . yrschl4 == -1 | yrschl4 == 98 | yrschl4 == 99 ;
replace yrhobby1 = . yrhobby1 == -1 | yrhobby1 == 98 | yrhobby1 == 99 ;
replace yrhobby2 = . yrhobby2 == -1 | yrhobby2 == 98 | yrhobby2 == 99 ;
replace yrhobby3 = . yrhobby3 == -1 | yrhobby3 == 98 | yrhobby3 == 99 ;
replace yrgreek1 = . yrgreek1 == -1 | yrgreek1 == 98 | yrgreek1 == 99 ;
replace yrgreek2 = . yrgreek2 == -1 | yrgreek2 == 98 | yrgreek2 == 99 ;
replace yrgreek3 = . yrgreek3 == -1 | yrgreek3 == 98 | yrgreek3 == 99 ;
replace yrnat1 = . yrnat1 == -1 | yrnat1 == 98 | yrnat1 == 99 ;
replace yrnat2 = . yrnat2 == -1 | yrnat2 == 98 | yrnat2 == 99 ;
replace yrnat3 = . yrnat3 == -1 | yrnat3 == 98 | yrnat3 == 99 ;
replace yrfarm1 = . yrfarm1 == -1 | yrfarm1 == 98 | yrfarm1 == 99 ;
replace yrfarm2 = . yrfarm2 == -1 | yrfarm2 == 98 | yrfarm2 == 99 ;
replace yrfarm3 = . yrfarm3 == -1 | yrfarm3 == 98 | yrfarm3 == 99 ;
replace yrlit1 = . yrlit1 == -1 | yrlit1 == 98 | yrlit1 == 99 ;
replace yrlit2 = . yrlit2 == -1 | yrlit2 == 98 | yrlit2 == 99 ;
replace yrlit3 = . yrlit3 == -1 | yrlit3 == 98 | yrlit3 == 99 ;
replace yrlit4 = . yrlit4 == -1 | yrlit4 == 98 | yrlit4 == 99 ;
replace yrprof1 = . yrprof1 == -1 | yrprof1 == 98 | yrprof1 == 99 ;
replace yrprof2 = . yrprof2 == -1 | yrprof2 == 98 | yrprof2 == 99 ;
replace yrprof3 = . yrprof3 == -1 | yrprof3 == 98 | yrprof3 == 99 ;
replace yrprof4 = . yrprof4 == -1 | yrprof4 == 98 | yrprof4 == 99 ;
replace yrprof5 = . yrprof5 == -1 | yrprof5 == 98 | yrprof5 == 99 ;
replace yrprof6 = . yrprof6 == -1 | yrprof6 == 98 | yrprof6 == 99 ;
replace yrchurh1 = . yrchurh1 == -1 | yrchurh1 == 98 | yrchurh1 == 99 ;
replace yrchurh2 = . yrchurh2 == -1 | yrchurh2 == 98 | yrchurh2 == 99 ;
replace yrchurh3 = . yrchurh3 == -1 | yrchurh3 == 98 | yrchurh3 == 99 ;
replace yrchurh4 = . yrchurh4 == -1 | yrchurh4 == 98 | yrchurh4 == 99 ;
replace yrchurh5 = . yrchurh5 == -1 | yrchurh5 == 98 | yrchurh5 == 99 ;
replace yrchurh6 = . yrchurh6 == -1 | yrchurh6 == 98 | yrchurh6 == 99 ;
replace yrother1 = . yrother1 == -1 | yrother1 == 98 | yrother1 == 99 ;
replace yrother2 = . yrother2 == -1 | yrother2 == 98 | yrother2 == 99 ;
replace yrother3 = . yrother3 == -1 | yrother3 == 98 | yrother3 == 99 ;
replace yrother4 = . yrother4 == -1 | yrother4 == 98 | yrother4 == 99 ;
replace yrother5 = . yrother5 == -1 | yrother5 == 98 | yrother5 == 99 ;
replace yrinfrm1 = . yrinfrm1 == -1 | yrinfrm1 == 98 | yrinfrm1 == 99 ;
replace yrinfrm2 = . yrinfrm2 == -1 | yrinfrm2 == 98 | yrinfrm2 == 99 ;
replace yrinfrm3 = . yrinfrm3 == -1 | yrinfrm3 == 98 | yrinfrm3 == 99 ;
replace yrinfrm4 = . yrinfrm4 == -1 | yrinfrm4 == 98 | yrinfrm4 == 99 ;
replace yrinfrm5 = . yrinfrm5 == -1 | yrinfrm5 == 98 | yrinfrm5 == 99 ;
replace mtfrat1 = . mtfrat1 == 0 | mtfrat1 == 8 | mtfrat1 == 9 ;
replace mtfrat2 = . mtfrat2 == 0 | mtfrat2 == 8 | mtfrat2 == 9 ;
replace mtfrat3 = . mtfrat3 == 0 | mtfrat3 == 8 | mtfrat3 == 9 ;
replace mtfrat4 = . mtfrat4 == 0 | mtfrat4 == 8 | mtfrat4 == 9 ;
replace mtserv1 = . mtserv1 == 0 | mtserv1 == 8 | mtserv1 == 9 ;
replace mtserv2 = . mtserv2 == 0 | mtserv2 == 8 | mtserv2 == 9 ;
replace mtserv3 = . mtserv3 == 0 | mtserv3 == 8 | mtserv3 == 9 ;
replace mtserv4 = . mtserv4 == 0 | mtserv4 == 8 | mtserv4 == 9 ;
replace mtserv5 = . mtserv5 == 0 | mtserv5 == 8 | mtserv5 == 9 ;
replace mtserv6 = . mtserv6 == 0 | mtserv6 == 8 | mtserv6 == 9 ;
replace mtserv7 = . mtserv7 == 0 | mtserv7 == 8 | mtserv7 == 9 ;
replace mtserv8 = . mtserv8 == 0 | mtserv8 == 8 | mtserv8 == 9 ;
replace mtvet1 = . mtvet1 == 0 | mtvet1 == 8 | mtvet1 == 9 ;
replace mtvet2 = . mtvet2 == 0 | mtvet2 == 8 | mtvet2 == 9 ;
replace mtvet3 = . mtvet3 == 0 | mtvet3 == 8 | mtvet3 == 9 ;
replace mtvet4 = . mtvet4 == 0 | mtvet4 == 8 | mtvet4 == 9 ;
replace mtvet5 = . mtvet5 == 0 | mtvet5 == 8 | mtvet5 == 9 ;
replace mtpolit1 = . mtpolit1 == 0 | mtpolit1 == 8 | mtpolit1 == 9 ;
replace mtpolit2 = . mtpolit2 == 0 | mtpolit2 == 8 | mtpolit2 == 9 ;
replace mtpolit3 = . mtpolit3 == 0 | mtpolit3 == 8 | mtpolit3 == 9 ;
replace mtunion1 = . mtunion1 == 0 | mtunion1 == 8 | mtunion1 == 9 ;
replace mtunion2 = . mtunion2 == 0 | mtunion2 == 8 | mtunion2 == 9 ;
replace mtunion3 = . mtunion3 == 0 | mtunion3 == 8 | mtunion3 == 9 ;
replace mtunion4 = . mtunion4 == 0 | mtunion4 == 8 | mtunion4 == 9 ;
replace mtsport1 = . mtsport1 == 0 | mtsport1 == 8 | mtsport1 == 9 ;
replace mtsport2 = . mtsport2 == 0 | mtsport2 == 8 | mtsport2 == 9 ;
replace mtsport3 = . mtsport3 == 0 | mtsport3 == 8 | mtsport3 == 9 ;
replace mtsport4 = . mtsport4 == 0 | mtsport4 == 8 | mtsport4 == 9 ;
replace mtsport5 = . mtsport5 == 0 | mtsport5 == 8 | mtsport5 == 9 ;
replace mtsport6 = . mtsport6 == 0 | mtsport6 == 8 | mtsport6 == 9 ;
replace mtyouth1 = . mtyouth1 == 0 | mtyouth1 == 8 | mtyouth1 == 9 ;
replace mtyouth2 = . mtyouth2 == 0 | mtyouth2 == 8 | mtyouth2 == 9 ;
replace mtyouth3 = . mtyouth3 == 0 | mtyouth3 == 8 | mtyouth3 == 9 ;
replace mtyouth4 = . mtyouth4 == 0 | mtyouth4 == 8 | mtyouth4 == 9 ;
replace mtyouth5 = . mtyouth5 == 0 | mtyouth5 == 8 | mtyouth5 == 9 ;
replace mtschl1 = . mtschl1 == 0 | mtschl1 == 8 | mtschl1 == 9 ;
replace mtschl2 = . mtschl2 == 0 | mtschl2 == 8 | mtschl2 == 9 ;
replace mtschl3 = . mtschl3 == 0 | mtschl3 == 8 | mtschl3 == 9 ;
replace mtschl4 = . mtschl4 == 0 | mtschl4 == 8 | mtschl4 == 9 ;
replace mthobby1 = . mthobby1 == 0 | mthobby1 == 8 | mthobby1 == 9 ;
replace mthobby2 = . mthobby2 == 0 | mthobby2 == 8 | mthobby2 == 9 ;
replace mthobby3 = . mthobby3 == 0 | mthobby3 == 8 | mthobby3 == 9 ;
replace mtgreek1 = . mtgreek1 == 0 | mtgreek1 == 8 | mtgreek1 == 9 ;
replace mtgreek2 = . mtgreek2 == 0 | mtgreek2 == 8 | mtgreek2 == 9 ;
replace mtgreek3 = . mtgreek3 == 0 | mtgreek3 == 8 | mtgreek3 == 9 ;
replace mtnat1 = . mtnat1 == 0 | mtnat1 == 8 | mtnat1 == 9 ;
replace mtnat2 = . mtnat2 == 0 | mtnat2 == 8 | mtnat2 == 9 ;
replace mtnat3 = . mtnat3 == 0 | mtnat3 == 8 | mtnat3 == 9 ;
replace mtfarm1 = . mtfarm1 == 0 | mtfarm1 == 8 | mtfarm1 == 9 ;
replace mtfarm2 = . mtfarm2 == 0 | mtfarm2 == 8 | mtfarm2 == 9 ;
replace mtfarm3 = . mtfarm3 == 0 | mtfarm3 == 8 | mtfarm3 == 9 ;
replace mtlit1 = . mtlit1 == 0 | mtlit1 == 8 | mtlit1 == 9 ;
replace mtlit2 = . mtlit2 == 0 | mtlit2 == 8 | mtlit2 == 9 ;
replace mtlit3 = . mtlit3 == 0 | mtlit3 == 8 | mtlit3 == 9 ;
replace mtlit4 = . mtlit4 == 0 | mtlit4 == 8 | mtlit4 == 9 ;
replace mtprof1 = . mtprof1 == 0 | mtprof1 == 8 | mtprof1 == 9 ;
replace mtprof2 = . mtprof2 == 0 | mtprof2 == 8 | mtprof2 == 9 ;
replace mtprof3 = . mtprof3 == 0 | mtprof3 == 8 | mtprof3 == 9 ;
replace mtprof4 = . mtprof4 == 0 | mtprof4 == 8 | mtprof4 == 9 ;
replace mtprof5 = . mtprof5 == 0 | mtprof5 == 8 | mtprof5 == 9 ;
replace mtprof6 = . mtprof6 == 0 | mtprof6 == 8 | mtprof6 == 9 ;
replace mtchurh1 = . mtchurh1 == 0 | mtchurh1 == 8 | mtchurh1 == 9 ;
replace mtchurh2 = . mtchurh2 == 0 | mtchurh2 == 8 | mtchurh2 == 9 ;
replace mtchurh3 = . mtchurh3 == 0 | mtchurh3 == 8 | mtchurh3 == 9 ;
replace mtchurh4 = . mtchurh4 == 0 | mtchurh4 == 8 | mtchurh4 == 9 ;
replace mtchurh5 = . mtchurh5 == 0 | mtchurh5 == 8 | mtchurh5 == 9 ;
replace mtchurh6 = . mtchurh6 == 0 | mtchurh6 == 8 | mtchurh6 == 9 ;
replace mtother1 = . mtother1 == 0 | mtother1 == 8 | mtother1 == 9 ;
replace mtother2 = . mtother2 == 0 | mtother2 == 8 | mtother2 == 9 ;
replace mtother3 = . mtother3 == 0 | mtother3 == 8 | mtother3 == 9 ;
replace mtother4 = . mtother4 == 0 | mtother4 == 8 | mtother4 == 9 ;
replace mtother5 = . mtother5 == 0 | mtother5 == 8 | mtother5 == 9 ;
replace mtinfrm1 = . mtinfrm1 == 0 | mtinfrm1 == 8 | mtinfrm1 == 9 ;
replace mtinfrm2 = . mtinfrm2 == 0 | mtinfrm2 == 8 | mtinfrm2 == 9 ;
replace mtinfrm3 = . mtinfrm3 == 0 | mtinfrm3 == 8 | mtinfrm3 == 9 ;
replace mtinfrm4 = . mtinfrm4 == 0 | mtinfrm4 == 8 | mtinfrm4 == 9 ;
replace mtinfrm5 = . mtinfrm5 == 0 | mtinfrm5 == 8 | mtinfrm5 == 9 ;
replace grpboth1 = . grpboth1 == 0 | grpboth1 == 8 | grpboth1 == 9 ;
replace grpboth2 = . grpboth2 == 0 | grpboth2 == 8 | grpboth2 == 9 ;
replace grpboth3 = . grpboth3 == 0 | grpboth3 == 8 | grpboth3 == 9 ;
replace grpboth4 = . grpboth4 == 0 | grpboth4 == 8 | grpboth4 == 9 ;
replace grpboth5 = . grpboth5 == 0 | grpboth5 == 8 | grpboth5 == 9 ;
replace frstmet1 = . frstmet1 == 0 | frstmet1 == 8 | frstmet1 == 9 ;
replace frstmet2 = . frstmet2 == 0 | frstmet2 == 8 | frstmet2 == 9 ;
replace frstmet3 = . frstmet3 == 0 | frstmet3 == 8 | frstmet3 == 9 ;
replace frstmet4 = . frstmet4 == 0 | frstmet4 == 8 | frstmet4 == 9 ;
replace frstmet5 = . frstmet5 == 0 | frstmet5 == 8 | frstmet5 == 9 ;
replace yrskwn1 = . yrskwn1 == -1 | yrskwn1 == 98 | yrskwn1 == 99 ;
replace yrskwn2 = . yrskwn2 == -1 | yrskwn2 == 98 | yrskwn2 == 99 ;
replace yrskwn3 = . yrskwn3 == -1 | yrskwn3 == 98 | yrskwn3 == 99 ;
replace yrskwn4 = . yrskwn4 == -1 | yrskwn4 == 98 | yrskwn4 == 99 ;
replace yrskwn5 = . yrskwn5 == -1 | yrskwn5 == 98 | yrskwn5 == 99 ;
replace relneg = . relneg == 0 | relneg == 8 | relneg == 9 ;
replace newsfrom = . newsfrom == 0 | newsfrom == 98 | newsfrom == 99 ;
replace scifrom = . scifrom == 0 | scifrom == 98 | scifrom == 99 ;
replace seeksci = . seeksci == 0 | seeksci == 98 | seeksci == 99 ;
replace nextgen = . nextgen == 0 | nextgen == 8 | nextgen == 9 ;
replace toofast = . toofast == 0 | toofast == 8 | toofast == 9 ;
replace advfront = . advfront == 0 | advfront == 8 | advfront == 9 ;
replace scispec = . scispec == 0 | scispec == 8 | scispec == 9 ;
replace leadsci = . leadsci == 0 | leadsci == 8 | leadsci == 9 ;
replace whichsci = . whichsci == 0 | whichsci == 8 | whichsci == 9 ;
replace astrolgy = . astrolgy == 0 | astrolgy == 8 | astrolgy == 9 ;
replace astrosci = . astrosci == 0 | astrosci == 8 | astrosci == 9 ;
replace scibnfts = . scibnfts == 0 | scibnfts == 8 | scibnfts == 9 ;
replace balpos = . balpos == 0 | balpos == 8 | balpos == 9 ;
replace balneg = . balneg == 0 | balneg == 8 | balneg == 9 ;
replace scistudy = . scistudy == 0 | scistudy == 8 | scistudy == 9 ;
replace scitext = . scitext == 0 | scitext == 8 | scitext == 9 ;
replace expdesgn = . expdesgn == 0 | expdesgn == 8 | expdesgn == 9 ;
replace exptext = . exptext == 0 | exptext == 98 | exptext == 99 ;
replace odds1 = . odds1 == 0 | odds1 == 8 | odds1 == 9 ;
replace odds2 = . odds2 == 0 | odds2 == 8 | odds2 == 9 ;
replace hotcore = . hotcore == 0 | hotcore == 8 | hotcore == 9 ;
replace radioact = . radioact == 0 | radioact == 8 | radioact == 9 ;
replace boyorgrl = . boyorgrl == 0 | boyorgrl == 8 | boyorgrl == 9 ;
replace lasers = . lasers == 0 | lasers == 8 | lasers == 9 ;
replace electron = . electron == 0 | electron == 8 | electron == 9 ;
replace viruses = . viruses == 0 | viruses == 8 | viruses == 9 ;
replace bigbang = . bigbang == 0 | bigbang == 8 | bigbang == 9 ;
replace condrift = . condrift == 0 | condrift == 8 | condrift == 9 ;
replace evolved = . evolved == 0 | evolved == 8 | evolved == 9 ;
replace earthsun = . earthsun == 0 | earthsun == 8 | earthsun == 9 ;
replace solarrev = . solarrev == 0 | solarrev == 8 | solarrev == 9 ;
replace TOMATOES = . TOMATOES == 0 | TOMATOES == 8 | TOMATOES == 9 ;
replace intrhome = . intrhome == 0 | intrhome == 8 | intrhome == 9 ;
replace coldeg1 = . coldeg1 == 0 | coldeg1 == 98 | coldeg1 == 99 ;
replace majorcol = . majorcol == 0 | majorcol == 98 | majorcol == 99 ;
replace colsci = . colsci == 0 | colsci == 8 | colsci == 9 ;
replace colscinm = . colscinm == 0 | colscinm == 98 | colscinm == 99 ;
replace hsmath = . hsmath == -1 | hsmath == 98 | hsmath == 99 ;
replace hsbio = . hsbio == 0 | hsbio == 8 | hsbio == 9 ;
replace hschem = . hschem == 0 | hschem == 8 | hschem == 9 ;
replace hsphys = . hsphys == 0 | hsphys == 8 | hsphys == 9 ;
replace gwsci = . gwsci == 0 | gwsci == 8 | gwsci == 9 ;
replace gwpol = . gwpol == 0 | gwpol == 8 | gwpol == 9 ;
replace gwbiz = . gwbiz == 0 | gwbiz == 8 | gwbiz == 9 ;
replace sciagrgw = . sciagrgw == 0 | sciagrgw == 8 | sciagrgw == 9 ;
replace sciinfgw = . sciinfgw == 0 | sciinfgw == 8 | sciinfgw == 9 ;
replace polinfgw = . polinfgw == 0 | polinfgw == 8 | polinfgw == 9 ;
replace bizinfgw = . bizinfgw == 0 | bizinfgw == 8 | bizinfgw == 9 ;
replace scibstgw = . scibstgw == 0 | scibstgw == 8 | scibstgw == 9 ;
replace polbstgw = . polbstgw == 0 | polbstgw == 8 | polbstgw == 9 ;
replace bizbstgw = . bizbstgw == 0 | bizbstgw == 8 | bizbstgw == 9 ;
replace gasregs = . gasregs == 0 | gasregs == 8 | gasregs == 9 ;
replace scmed = . scmed == 0 | scmed == 8 | scmed == 9 ;
replace screlig = . screlig == 0 | screlig == 8 | screlig == 9 ;
replace scpol = . scpol == 0 | scpol == 8 | scpol == 9 ;
replace medagrsc = . medagrsc == 0 | medagrsc == 8 | medagrsc == 9 ;
replace medinfsc = . medinfsc == 0 | medinfsc == 8 | medinfsc == 9 ;
replace relinfsc = . relinfsc == 0 | relinfsc == 8 | relinfsc == 9 ;
replace polinfsc = . polinfsc == 0 | polinfsc == 8 | polinfsc == 9 ;
replace medbstsc = . medbstsc == 0 | medbstsc == 8 | medbstsc == 9 ;
replace relbstsc = . relbstsc == 0 | relbstsc == 8 | relbstsc == 9 ;
replace polbstsc = . polbstsc == 0 | polbstsc == 8 | polbstsc == 9 ;
replace scresrch = . scresrch == 0 | scresrch == 8 | scresrch == 9 ;
replace txeco = . txeco == 0 | txeco == 8 | txeco == 9 ;
replace txbiz = . txbiz == 0 | txbiz == 8 | txbiz == 9 ;
replace txpol = . txpol == 0 | txpol == 8 | txpol == 9 ;
replace ecoagree = . ecoagree == 0 | ecoagree == 8 | ecoagree == 9 ;
replace ecoinftx = . ecoinftx == 0 | ecoinftx == 8 | ecoinftx == 9 ;
replace bizinftx = . bizinftx == 0 | bizinftx == 8 | bizinftx == 9 ;
replace polinftx = . polinftx == 0 | polinftx == 8 | polinftx == 9 ;
replace ecobsttx = . ecobsttx == 0 | ecobsttx == 8 | ecobsttx == 9 ;
replace bizbsttx = . bizbsttx == 0 | bizbsttx == 8 | bizbsttx == 9 ;
replace polbsttx = . polbsttx == 0 | polbsttx == 8 | polbsttx == 9 ;
replace gmmed = . gmmed == 0 | gmmed == 8 | gmmed == 9 ;
replace gmpol = . gmpol == 0 | gmpol == 8 | gmpol == 9 ;
replace gmbiz = . gmbiz == 0 | gmbiz == 8 | gmbiz == 9 ;
replace medagrgm = . medagrgm == 0 | medagrgm == 8 | medagrgm == 9 ;
replace medinfgm = . medinfgm == 0 | medinfgm == 8 | medinfgm == 9 ;
replace polinfgm = . polinfgm == 0 | polinfgm == 8 | polinfgm == 9 ;
replace bizinfgm = . bizinfgm == 0 | bizinfgm == 8 | bizinfgm == 9 ;
replace medbstgm = . medbstgm == 0 | medbstgm == 8 | medbstgm == 9 ;
replace polbstgm = . polbstgm == 0 | polbstgm == 8 | polbstgm == 9 ;
replace bizbstgm = . bizbstgm == 0 | bizbstgm == 8 | bizbstgm == 9 ;
replace eatgm = . eatgm == 0 | eatgm == 8 | eatgm == 9 ;
replace sciimp1 = . sciimp1 == 0 | sciimp1 == 8 | sciimp1 == 9 ;
replace sciimp2 = . sciimp2 == 0 | sciimp2 == 8 | sciimp2 == 9 ;
replace sciimp3 = . sciimp3 == 0 | sciimp3 == 8 | sciimp3 == 9 ;
replace sciimp4 = . sciimp4 == 0 | sciimp4 == 8 | sciimp4 == 9 ;
replace sciimp5 = . sciimp5 == 0 | sciimp5 == 8 | sciimp5 == 9 ;
replace sciimp6 = . sciimp6 == 0 | sciimp6 == 8 | sciimp6 == 9 ;
replace sciimp7 = . sciimp7 == 0 | sciimp7 == 8 | sciimp7 == 9 ;
replace sciimp8 = . sciimp8 == 0 | sciimp8 == 8 | sciimp8 == 9 ;
replace socsci = . socsci == 0 | socsci == 8 | socsci == 9 ;
replace physcsci = . physcsci == 0 | physcsci == 8 | physcsci == 9 ;
replace histsci = . histsci == 0 | histsci == 8 | histsci == 9 ;
replace accntsci = . accntsci == 0 | accntsci == 8 | accntsci == 9 ;
replace biosci = . biosci == 0 | biosci == 8 | biosci == 9 ;
replace econsci = . econsci == 0 | econsci == 8 | econsci == 9 ;
replace medsci = . medsci == 0 | medsci == 8 | medsci == 9 ;
replace engnrsci = . engnrsci == 0 | engnrsci == 8 | engnrsci == 9 ;
replace knwforgn = . knwforgn == 0 | knwforgn == 8 | knwforgn == 9 ;
replace knwecon = . knwecon == 0 | knwecon == 8 | knwecon == 9 ;
replace knwsci = . knwsci == 0 | knwsci == 8 | knwsci == 9 ;
replace knwgw = . knwgw == 0 | knwgw == 8 | knwgw == 9 ;
replace knwpolar = . knwpolar == 0 | knwpolar == 8 | knwpolar == 9 ;
replace tvbears = . tvbears == 0 | tvbears == 8 | tvbears == 9 ;
replace tvinuit = . tvinuit == 0 | tvinuit == 8 | tvinuit == 9 ;
replace tvozone = . tvozone == 0 | tvozone == 8 | tvozone == 9 ;
replace tvmeltng = . tvmeltng == 0 | tvmeltng == 8 | tvmeltng == 9 ;
replace tvoil = . tvoil == 0 | tvoil == 8 | tvoil == 9 ;
replace polaryr1 = . polaryr1 == 0 | polaryr1 == 8 | polaryr1 == 9 ;
replace polaryr2 = . polaryr2 == 0 | polaryr2 == 8 | polaryr2 == 9 ;
replace polaryr3 = . polaryr3 == 0 | polaryr3 == 8 | polaryr3 == 9 ;
replace polaryr4 = . polaryr4 == 0 | polaryr4 == 8 | polaryr4 == 9 ;
replace polaryr5 = . polaryr5 == 0 | polaryr5 == 8 | polaryr5 == 9 ;
replace polaryr6 = . polaryr6 == 0 | polaryr6 == 8 | polaryr6 == 9 ;
replace polaryr7 = . polaryr7 == 0 | polaryr7 == 8 | polaryr7 == 9 ;
replace polaryr8 = . polaryr8 == 0 | polaryr8 == 8 | polaryr8 == 9 ;
replace icesheet = . icesheet == 0 | icesheet == 8 | icesheet == 9 ;
replace nosun = . nosun == 0 | nosun == 8 | nosun == 9 ;
replace inuit = . inuit == 0 | inuit == 8 | inuit == 9 ;
replace huntbear = . huntbear == 0 | huntbear == 8 | huntbear == 9 ;
replace icecaps = . icecaps == 0 | icecaps == 8 | icecaps == 9 ;
replace comorsci = . comorsci == 0 | comorsci == 8 | comorsci == 9 ;
replace extinct = . extinct == 0 | extinct == 8 | extinct == 9 ;
replace sealevel = . sealevel == 0 | sealevel == 8 | sealevel == 9 ;
replace artseals = . artseals == 0 | artseals == 8 | artseals == 9 ;
replace penguins = . penguins == 0 | penguins == 8 | penguins == 9 ;
replace inuitway = . inuitway == 0 | inuitway == 8 | inuitway == 9 ;
replace noicecap = . noicecap == 0 | noicecap == 8 | noicecap == 9 ;
replace caremost = . caremost == 0 | caremost == 8 | caremost == 9 ;
replace nanotech = . nanotech == 0 | nanotech == 8 | nanotech == 9 ;
replace nanoknw1 = . nanoknw1 == 0 | nanoknw1 == 8 | nanoknw1 == 9 ;
replace nanoknw2 = . nanoknw2 == 0 | nanoknw2 == 8 | nanoknw2 == 9 ;
replace nanowill = . nanowill == 0 | nanowill == 8 | nanowill == 9 ;
replace NANOBEN = . NANOBEN == 0 | NANOBEN == 8 | NANOBEN == 9 ;
replace NANOHARM = . NANOHARM == 0 | NANOHARM == 8 | NANOHARM == 9 ;
replace scimode = . scimode == 0 ;
replace INTINTL = . INTINTL == 0 | INTINTL == 8 | INTINTL == 9 ;
replace INTFARM = . INTFARM == 0 | INTFARM == 8 | INTFARM == 9 ;
replace INTEDUC = . INTEDUC == 0 | INTEDUC == 8 | INTEDUC == 9 ;
replace INTSCI = . INTSCI == 0 | INTSCI == 8 | INTSCI == 9 ;
replace INTECON = . INTECON == 0 | INTECON == 8 | INTECON == 9 ;
replace INTTECH = . INTTECH == 0 | INTTECH == 8 | INTTECH == 9 ;
replace INTMED = . INTMED == 0 | INTMED == 8 | INTMED == 9 ;
replace INTSPACE = . INTSPACE == 0 | INTSPACE == 8 | INTSPACE == 9 ;
replace INTENVIR = . INTENVIR == 0 | INTENVIR == 8 | INTENVIR == 9 ;
replace INTMIL = . INTMIL == 0 | INTMIL == 8 | INTMIL == 9 ;
replace sciintro = . sciintro == 0 ;
replace VISART = . VISART == -1 | VISART == 998 | VISART == 999 ;
replace VISNHIST = . VISNHIST == -1 | VISNHIST == 998 | VISNHIST == 999 ;
replace VISZOO = . VISZOO == -1 | VISZOO == 998 | VISZOO == 999 ;
replace VISSCI = . VISSCI == -1 | VISSCI == 998 | VISSCI == 999 ;
replace VISLIB = . VISLIB == -1 | VISLIB == 998 | VISLIB == 999 ;
replace SCIMATH = . SCIMATH == 0 | SCIMATH == 8 | SCIMATH == 9 ;
replace ANSCITST = . ANSCITST == 0 | ANSCITST == 8 | ANSCITST == 9 ;
replace maboygrl = . maboygrl == 0 | maboygrl == 8 | maboygrl == 9 ;
replace H2OLIFE = . H2OLIFE == 0 | H2OLIFE == 8 | H2OLIFE == 9 ;
replace ANHEAT = . ANHEAT == 0 | ANHEAT == 8 | ANHEAT == 9 ;
replace LFTPLANE = . LFTPLANE == 0 | LFTPLANE == 8 | LFTPLANE == 9 ;
replace stormtxt = . stormtxt == 0 | stormtxt == 8 | stormtxt == 9 ;
replace litmstxt = . litmstxt == 0 | litmstxt == 8 | litmstxt == 9 ;
replace GOLDFISH = . GOLDFISH == 0 | GOLDFISH == 8 | GOLDFISH == 9 ;
replace SALTH2O = . SALTH2O == 0 | SALTH2O == 8 | SALTH2O == 9 ;
replace EROSION = . EROSION == 0 | EROSION == 8 | EROSION == 9 ;
replace GENES = . GENES == 0 | GENES == 8 | GENES == 9 ;
replace GILLS = . GILLS == 0 | GILLS == 8 | GILLS == 9 ;
replace UPBREATH = . UPBREATH == 0 | UPBREATH == 8 | UPBREATH == 9 ;
replace DAYNIGHT = . DAYNIGHT == 0 | DAYNIGHT == 8 | DAYNIGHT == 9 ;
replace WEIGHING = . WEIGHING == 0 | WEIGHING == 8 | WEIGHING == 9 ;
replace SEESAND = . SEESAND == 0 | SEESAND == 8 | SEESAND == 9 ;
replace FISHEXP1 = . FISHEXP1 == 0 | FISHEXP1 == 8 | FISHEXP1 == 9 ;
replace FISHEXP2 = . FISHEXP2 == 0 | FISHEXP2 == 8 | FISHEXP2 == 9 ;
replace MOREMPG = . MOREMPG == 0 | MOREMPG == 8 | MOREMPG == 9 ;
replace polnuke = . polnuke == 0 | polnuke == 8 | polnuke == 9 ;
replace biznuke = . biznuke == 0 | biznuke == 8 | biznuke == 9 ;
replace engnuke = . engnuke == 0 | engnuke == 8 | engnuke == 9 ;
replace ENGAGRNK = . ENGAGRNK == 0 | ENGAGRNK == 8 | ENGAGRNK == 9 ;
replace ENHINFNK = . ENHINFNK == 0 | ENHINFNK == 8 | ENHINFNK == 9 ;
replace POLINFNK = . POLINFNK == 0 | POLINFNK == 8 | POLINFNK == 9 ;
replace BIZINFNK = . BIZINFNK == 0 | BIZINFNK == 8 | BIZINFNK == 9 ;
replace ENGBSTNK = . ENGBSTNK == 0 | ENGBSTNK == 8 | ENGBSTNK == 9 ;
replace POLBSTNK = . POLBSTNK == 0 | POLBSTNK == 8 | POLBSTNK == 9 ;
replace BIZBSTNK = . BIZBSTNK == 0 | BIZBSTNK == 8 | BIZBSTNK == 9 ;
replace NUKEELEC = . NUKEELEC == 0 | NUKEELEC == 8 | NUKEELEC == 9 ;
replace CLONING = . CLONING == 0 | CLONING == 8 | CLONING == 9 ;
replace SCINEWS1 = . SCINEWS1 == 0 | SCINEWS1 == 8 | SCINEWS1 == 9 ;
replace SCINEWS2 = . SCINEWS2 == 0 | SCINEWS2 == 8 | SCINEWS2 == 9 ;
replace scinews3 = . scinews3 == 0 | scinews3 == 98 | scinews3 == 99 ;
replace NEWSFRMY = . NEWSFRMY == 0 | NEWSFRMY == 98 | NEWSFRMY == 99 ;
replace SCIFROMY = . SCIFROMY == 0 | SCIFROMY == 98 | SCIFROMY == 99 ;
replace SEEKSCIY = . SEEKSCIY == 0 | SEEKSCIY == 98 | SEEKSCIY == 99 ;
replace sciinfgo = . sciinfgo == 0 | sciinfgo == 8 | sciinfgo == 9 ;
replace SCIENTDA = . SCIENTDA == 0 | SCIENTDA == 8 | SCIENTDA == 9 ;
replace SCIENTSN = . SCIENTSN == 0 | SCIENTSN == 8 | SCIENTSN == 9 ;
replace SCIENTR = . SCIENTR == 0 | SCIENTR == 8 | SCIENTR == 9 ;
replace SCIENTDO = . SCIENTDO == 0 | SCIENTDO == 8 | SCIENTDO == 9 ;
replace SCIENTAL = . SCIENTAL == 0 | SCIENTAL == 8 | SCIENTAL == 9 ;
replace SCIENTDN = . SCIENTDN == 0 | SCIENTDN == 8 | SCIENTDN == 9 ;
replace SCIENTGO = . SCIENTGO == 0 | SCIENTGO == 8 | SCIENTGO == 9 ;
replace SCIENTFU = . SCIENTFU == 0 | SCIENTFU == 8 | SCIENTFU == 9 ;
replace SCIENTHE = . SCIENTHE == 0 | SCIENTHE == 8 | SCIENTHE == 9 ;
replace SCIENTOD = . SCIENTOD == 0 | SCIENTOD == 8 | SCIENTOD == 9 ;
replace SCIENTBE = . SCIENTBE == 0 | SCIENTBE == 8 | SCIENTBE == 9 ;
replace SCIENTRE = . SCIENTRE == 0 | SCIENTRE == 8 | SCIENTRE == 9 ;
replace SCIENTWK = . SCIENTWK == 0 | SCIENTWK == 8 | SCIENTWK == 9 ;
replace SCIENTMO = . SCIENTMO == 0 | SCIENTMO == 8 | SCIENTMO == 9 ;
replace SCIENTBR = . SCIENTBR == 0 | SCIENTBR == 8 | SCIENTBR == 9 ;
replace ENGDA = . ENGDA == 0 | ENGDA == 8 | ENGDA == 9 ;
replace ENGSON = . ENGSON == 0 | ENGSON == 8 | ENGSON == 9 ;
replace ENGRESP = . ENGRESP == 0 | ENGRESP == 8 | ENGRESP == 9 ;
replace ENGDO = . ENGDO == 0 | ENGDO == 8 | ENGDO == 9 ;
replace ENGLONE = . ENGLONE == 0 | ENGLONE == 8 | ENGLONE == 9 ;
replace ENGDGR = . ENGDGR == 0 | ENGDGR == 8 | ENGDGR == 9 ;
replace ENGGOOD = . ENGGOOD == 0 | ENGGOOD == 8 | ENGGOOD == 9 ;
replace ENGFUN = . ENGFUN == 0 | ENGFUN == 8 | ENGFUN == 9 ;
replace ENGPROB = . ENGPROB == 0 | ENGPROB == 8 | ENGPROB == 9 ;
replace ENGODD = . ENGODD == 0 | ENGODD == 8 | ENGODD == 9 ;
replace ENGBTR = . ENGBTR == 0 | ENGBTR == 8 | ENGBTR == 9 ;
replace ENGREL = . ENGREL == 0 | ENGREL == 8 | ENGREL == 9 ;
replace ENGINT = . ENGINT == 0 | ENGINT == 8 | ENGINT == 9 ;
replace ENGEARN = . ENGEARN == 0 | ENGEARN == 8 | ENGEARN == 9 ;
replace ENGBRNG = . ENGBRNG == 0 | ENGBRNG == 8 | ENGBRNG == 9 ;
replace FARMING = . FARMING == 0 | FARMING == 8 | FARMING == 9 ;
replace JOURNLSM = . JOURNLSM == 0 | JOURNLSM == 8 | JOURNLSM == 9 ;
replace FIREFTNG = . FIREFTNG == 0 | FIREFTNG == 8 | FIREFTNG == 9 ;
replace MARRCOUN = . MARRCOUN == 0 | MARRCOUN == 8 | MARRCOUN == 9 ;
replace MEDTREAT = . MEDTREAT == 0 | MEDTREAT == 8 | MEDTREAT == 9 ;
replace ARCHITCT = . ARCHITCT == 0 | ARCHITCT == 8 | ARCHITCT == 9 ;
replace LAWENFRC = . LAWENFRC == 0 | LAWENFRC == 8 | LAWENFRC == 9 ;
replace ENGNRING = . ENGNRING == 0 | ENGNRING == 8 | ENGNRING == 9 ;
replace SLSMNSHP = . SLSMNSHP == 0 | SLSMNSHP == 8 | SLSMNSHP == 9 ;
replace CMPRGMNG = . CMPRGMNG == 0 | CMPRGMNG == 8 | CMPRGMNG == 9 ;
replace FINLCOUN = . FINLCOUN == 0 | FINLCOUN == 8 | FINLCOUN == 9 ;
replace BIGBANG1 = . BIGBANG1 == 0 | BIGBANG1 == 8 | BIGBANG1 == 9 ;
replace EVOLVED1 = . EVOLVED1 == 0 | EVOLVED1 == 8 | EVOLVED1 == 9 ;
replace BETTRLFE = . BETTRLFE == 0 | BETTRLFE == 8 | BETTRLFE == 9 ;
replace buyvalue = . buyvalue == -1 | buyvalue == 998 | buyvalue == 999 ;
replace ops2005 = . ops2005 == 0 | ops2005 == 8 | ops2005 == 9 ;
replace extr2005 = . extr2005 == 0 | extr2005 == 8 | extr2005 == 9 ;
replace compwage = . compwage == 0 | compwage == 8 | compwage == 9 ;
replace talkteam = . talkteam == 0 | talkteam == 8 | talkteam == 9 ;
replace numorg = . numorg == 0 | numorg == 9998 | numorg == 9999 ;
replace empinput = . empinput == 0 | empinput == 8 | empinput == 9 ;
replace slfmangd = . slfmangd == 0 | slfmangd == 8 | slfmangd == 9 ;
replace emptrain = . emptrain == 0 | emptrain == 8 | emptrain == 9 ;
replace wealth = . wealth == 0 | wealth == 98 | wealth == 99 ;
replace ESOP = . ESOP == 0 | ESOP == 8 | ESOP == 9 ;
replace DEFPENSN = . DEFPENSN == 0 | DEFPENSN == 8 | DEFPENSN == 9 ;
replace TRDESTCK = . TRDESTCK == 0 | TRDESTCK == 8 | TRDESTCK == 9 ;
replace viglab06 = . viglab06 == 0 | viglab06 == 8 | viglab06 == 9 ;
replace mhtrtoth = . mhtrtoth == 0 | mhtrtoth == 8 | mhtrtoth == 9 ;
replace mhothyou = . mhothyou == 0 | mhothyou == 8 | mhothyou == 9 ;
replace mhothrel = . mhothrel == 0 | mhothrel == 8 | mhothrel == 9 ;
replace seemhpub = . seemhpub == 0 | seemhpub == 8 | seemhpub == 9 ;
replace gesttalk = . gesttalk == 0 | gesttalk == 8 | gesttalk == 9 ;
replace avoidmh = . avoidmh == 0 | avoidmh == 8 | avoidmh == 9 ;
replace numknown = . numknown == 0 | numknown == 8 | numknown == 9 ;
replace acqkevin = . acqkevin == 0 | acqkevin == 8 | acqkevin == 9 ;
replace acqkaren = . acqkaren == 0 | acqkaren == 8 | acqkaren == 9 ;
replace acqshawn = . acqshawn == 0 | acqshawn == 8 | acqshawn == 9 ;
replace acqbrnda = . acqbrnda == 0 | acqbrnda == 8 | acqbrnda == 9 ;
replace acqkeith = . acqkeith == 0 | acqkeith == 8 | acqkeith == 9 ;
replace acqrachl = . acqrachl == 0 | acqrachl == 8 | acqrachl == 9 ;
replace acqmark = . acqmark == 0 | acqmark == 8 | acqmark == 9 ;
replace acqlinda = . acqlinda == 0 | acqlinda == 8 | acqlinda == 9 ;
replace acqjose = . acqjose == 0 | acqjose == 8 | acqjose == 9 ;
replace acqmaria = . acqmaria == 0 | acqmaria == 8 | acqmaria == 9 ;
replace acqunemp = . acqunemp == 0 | acqunemp == 8 | acqunemp == 9 ;
replace acqhome = . acqhome == 0 | acqhome == 8 | acqhome == 9 ;
replace acqprisn = . acqprisn == 0 | acqprisn == 8 | acqprisn == 9 ;
replace acqasian = . acqasian == 0 | acqasian == 8 | acqasian == 9 ;
replace acqblack = . acqblack == 0 | acqblack == 8 | acqblack == 9 ;
replace acqhisp = . acqhisp == 0 | acqhisp == 8 | acqhisp == 9 ;
replace acqwhite = . acqwhite == 0 | acqwhite == 8 | acqwhite == 9 ;
replace acqgay = . acqgay == 0 | acqgay == 8 | acqgay == 9 ;
replace acqcohab = . acqcohab == 0 | acqcohab == 8 | acqcohab == 9 ;
replace acqgoatt = . acqgoatt == 0 | acqgoatt == 8 | acqgoatt == 9 ;
replace acqnoatt = . acqnoatt == 0 | acqnoatt == 8 | acqnoatt == 9 ;
replace acqlib = . acqlib == 0 | acqlib == 8 | acqlib == 9 ;
replace acqcon = . acqcon == 0 | acqcon == 8 | acqcon == 9 ;
replace acqcops = . acqcops == 0 | acqcops == 8 | acqcops == 9 ;
replace acqlaws = . acqlaws == 0 | acqlaws == 8 | acqlaws == 9 ;
replace acqsocs = . acqsocs == 0 | acqsocs == 8 | acqsocs == 9 ;
replace acqjans = . acqjans == 0 | acqjans == 8 | acqjans == 9 ;
replace acqchild = . acqchild == 0 | acqchild == 8 | acqchild == 9 ;
replace acqelecs = . acqelecs == 0 | acqelecs == 8 | acqelecs == 9 ;
replace acqmils = . acqmils == 0 | acqmils == 8 | acqmils == 9 ;
replace acqfmmrk = . acqfmmrk == 0 | acqfmmrk == 8 | acqfmmrk == 9 ;
replace acqfmlin = . acqfmlin == 0 | acqfmlin == 8 | acqfmlin == 9 ;
replace acqfmune = . acqfmune == 0 | acqfmune == 8 | acqfmune == 9 ;
replace acqfmhme = . acqfmhme == 0 | acqfmhme == 8 | acqfmhme == 9 ;
replace acqfmpri = . acqfmpri == 0 | acqfmpri == 8 | acqfmpri == 9 ;
replace acqfmasn = . acqfmasn == 0 | acqfmasn == 8 | acqfmasn == 9 ;
replace acqfmblk = . acqfmblk == 0 | acqfmblk == 8 | acqfmblk == 9 ;
replace acqfmhsp = . acqfmhsp == 0 | acqfmhsp == 8 | acqfmhsp == 9 ;
replace acqfmwht = . acqfmwht == 0 | acqfmwht == 8 | acqfmwht == 9 ;
replace acqfmgay = . acqfmgay == 0 | acqfmgay == 8 | acqfmgay == 9 ;
replace acqfmgo = . acqfmgo == 0 | acqfmgo == 8 | acqfmgo == 9 ;
replace acqfmno = . acqfmno == 0 | acqfmno == 8 | acqfmno == 9 ;
replace acqfmlib = . acqfmlib == 0 | acqfmlib == 8 | acqfmlib == 9 ;
replace acqfmcon = . acqfmcon == 0 | acqfmcon == 8 | acqfmcon == 9 ;
replace acqfmcoh = . acqfmcoh == 0 | acqfmcoh == 8 | acqfmcoh == 9 ;
replace acqnhmrk = . acqnhmrk == 0 | acqnhmrk == 8 | acqnhmrk == 9 ;
replace acqnhlin = . acqnhlin == 0 | acqnhlin == 8 | acqnhlin == 9 ;
replace acqnhune = . acqnhune == 0 | acqnhune == 8 | acqnhune == 9 ;
replace acqnhhme = . acqnhhme == 0 | acqnhhme == 8 | acqnhhme == 9 ;
replace acqnhpri = . acqnhpri == 0 | acqnhpri == 8 | acqnhpri == 9 ;
replace acqnhasn = . acqnhasn == 0 | acqnhasn == 8 | acqnhasn == 9 ;
replace acqnhblk = . acqnhblk == 0 | acqnhblk == 8 | acqnhblk == 9 ;
replace acqnhhsp = . acqnhhsp == 0 | acqnhhsp == 8 | acqnhhsp == 9 ;
replace acqnhwht = . acqnhwht == 0 | acqnhwht == 8 | acqnhwht == 9 ;
replace acqnhgay = . acqnhgay == 0 | acqnhgay == 8 | acqnhgay == 9 ;
replace acqnhgo = . acqnhgo == 0 | acqnhgo == 8 | acqnhgo == 9 ;
replace acqnhno = . acqnhno == 0 | acqnhno == 8 | acqnhno == 9 ;
replace acqnhlib = . acqnhlib == 0 | acqnhlib == 8 | acqnhlib == 9 ;
replace acqnhcon = . acqnhcon == 0 | acqnhcon == 8 | acqnhcon == 9 ;
replace acqnhcoh = . acqnhcoh == 0 | acqnhcoh == 8 | acqnhcoh == 9 ;
replace acqwkmrk = . acqwkmrk >= 6 && acqwkmrk <= 9 | acqwkmrk == 0 ;
replace acqwklin = . acqwklin >= 6 && acqwklin <= 9 | acqwklin == 0 ;
replace acqwkune = . acqwkune >= 6 && acqwkune <= 9 | acqwkune == 0 ;
replace acqwkhme = . acqwkhme >= 6 && acqwkhme <= 9 | acqwkhme == 0 ;
replace acqwkpri = . acqwkpri >= 6 && acqwkpri <= 9 | acqwkpri == 0 ;
replace acqwkasn = . acqwkasn >= 6 && acqwkasn <= 9 | acqwkasn == 0 ;
replace acqwkblk = . acqwkblk >= 6 && acqwkblk <= 9 | acqwkblk == 0 ;
replace acqwkhsp = . acqwkhsp >= 6 && acqwkhsp <= 9 | acqwkhsp == 0 ;
replace acqwkwht = . acqwkwht >= 6 && acqwkwht <= 9 | acqwkwht == 0 ;
replace acqwkgay = . acqwkgay >= 6 && acqwkgay <= 9 | acqwkgay == 0 ;
replace acqwkgo = . acqwkgo >= 6 && acqwkgo <= 9 | acqwkgo == 0 ;
replace acqwkno = . acqwkno >= 6 && acqwkno <= 9 | acqwkno == 0 ;
replace acqwklib = . acqwklib >= 6 && acqwklib <= 9 | acqwklib == 0 ;
replace acqwkcon = . acqwkcon >= 6 && acqwkcon <= 9 | acqwkcon == 0 ;
replace acqwkcoh = . acqwkcoh >= 6 && acqwkcoh <= 9 | acqwkcoh == 0 ;
replace acqvamrk = . acqvamrk == 0 | acqvamrk == 8 | acqvamrk == 9 ;
replace acqvalin = . acqvalin == 0 | acqvalin == 8 | acqvalin == 9 ;
replace acqvaune = . acqvaune == 0 | acqvaune == 8 | acqvaune == 9 ;
replace acqvahme = . acqvahme == 0 | acqvahme == 8 | acqvahme == 9 ;
replace acqvapri = . acqvapri == 0 | acqvapri == 8 | acqvapri == 9 ;
replace acqvaasn = . acqvaasn == 0 | acqvaasn == 8 | acqvaasn == 9 ;
replace acqvablk = . acqvablk == 0 | acqvablk == 8 | acqvablk == 9 ;
replace acqvahsp = . acqvahsp == 0 | acqvahsp == 8 | acqvahsp == 9 ;
replace acqvawht = . acqvawht == 0 | acqvawht == 8 | acqvawht == 9 ;
replace acqvagay = . acqvagay == 0 | acqvagay == 8 | acqvagay == 9 ;
replace acqvago = . acqvago == 0 | acqvago == 8 | acqvago == 9 ;
replace acqvano = . acqvano == 0 | acqvano == 8 | acqvano == 9 ;
replace acqvalib = . acqvalib == 0 | acqvalib == 8 | acqvalib == 9 ;
replace acqvacon = . acqvacon == 0 | acqvacon == 8 | acqvacon == 9 ;
replace acqvacoh = . acqvacoh == 0 | acqvacoh == 8 | acqvacoh == 9 ;
replace acqreps = . acqreps == 0 | acqreps == 8 | acqreps == 9 ;
replace acqdems = . acqdems == 0 | acqdems == 8 | acqdems == 9 ;
replace acqattnd = . acqattnd == 0 | acqattnd == 8 | acqattnd == 9 ;
replace acqmyrac = . acqmyrac == 0 | acqmyrac == 8 | acqmyrac == 9 ;
replace trtkevin = . trtkevin == 0 | trtkevin == 8 | trtkevin == 9 ;
replace trtkaren = . trtkaren == 0 | trtkaren == 8 | trtkaren == 9 ;
replace trtshawn = . trtshawn == 0 | trtshawn == 8 | trtshawn == 9 ;
replace trtbrnda = . trtbrnda == 0 | trtbrnda == 8 | trtbrnda == 9 ;
replace trtkeith = . trtkeith == 0 | trtkeith == 8 | trtkeith == 9 ;
replace trtrachl = . trtrachl == 0 | trtrachl == 8 | trtrachl == 9 ;
replace trtmark = . trtmark == 0 | trtmark == 8 | trtmark == 9 ;
replace trtlinda = . trtlinda == 0 | trtlinda == 8 | trtlinda == 9 ;
replace trtjose = . trtjose == 0 | trtjose == 8 | trtjose == 9 ;
replace trtmaria = . trtmaria == 0 | trtmaria == 8 | trtmaria == 9 ;
replace trtcops = . trtcops == 0 | trtcops == 8 | trtcops == 9 ;
replace trtlaws = . trtlaws == 0 | trtlaws == 8 | trtlaws == 9 ;
replace trtsocs = . trtsocs == 0 | trtsocs == 8 | trtsocs == 9 ;
replace trtjans = . trtjans == 0 | trtjans == 8 | trtjans == 9 ;
replace trtchild = . trtchild == 0 | trtchild == 8 | trtchild == 9 ;
replace trtelecs = . trtelecs == 0 | trtelecs == 8 | trtelecs == 9 ;
replace trtmils = . trtmils == 0 | trtmils == 8 | trtmils == 9 ;
replace trtunemp = . trtunemp == 0 | trtunemp == 8 | trtunemp == 9 ;
replace trthome = . trthome == 0 | trthome == 8 | trthome == 9 ;
replace trtprisn = . trtprisn == 0 | trtprisn == 8 | trtprisn == 9 ;
replace trtasian = . trtasian == 0 | trtasian == 8 | trtasian == 9 ;
replace trtblack = . trtblack == 0 | trtblack == 8 | trtblack == 9 ;
replace trthisp = . trthisp == 0 | trthisp == 8 | trthisp == 9 ;
replace trtwhite = . trtwhite == 0 | trtwhite == 8 | trtwhite == 9 ;
replace trtgay = . trtgay == 0 | trtgay == 8 | trtgay == 9 ;
replace trtcohab = . trtcohab == 0 | trtcohab == 8 | trtcohab == 9 ;
replace trtgoatt = . trtgoatt == 0 | trtgoatt == 8 | trtgoatt == 9 ;
replace trtnoatt = . trtnoatt == 0 | trtnoatt == 8 | trtnoatt == 9 ;
replace trtlib = . trtlib == 0 | trtlib == 8 | trtlib == 9 ;
replace trtcon = . trtcon == 0 | trtcon == 8 | trtcon == 9 ;
replace trtreps = . trtreps == 0 | trtreps == 8 | trtreps == 9 ;
replace trtdems = . trtdems == 0 | trtdems == 8 | trtdems == 9 ;
replace trtattnd = . trtattnd == 0 | trtattnd == 8 | trtattnd == 9 ;
replace trtmyrac = . trtmyrac == 0 | trtmyrac == 8 | trtmyrac == 9 ;
replace gunsales = . gunsales == 0 | gunsales == 8 | gunsales == 9 ;
replace gunsdrug = . gunsdrug == 0 | gunsdrug == 8 | gunsdrug == 9 ;
replace semiguns = . semiguns == 0 | semiguns == 8 | semiguns == 9 ;
replace guns911 = . guns911 == 0 | guns911 == 8 | guns911 == 9 ;
replace rifles50 = . rifles50 == 0 | rifles50 == 8 | rifles50 == 9 ;
replace othguns = . othguns == 0 | othguns == 8 | othguns == 9 ;
replace gunsdrnk = . gunsdrnk == 0 | gunsdrnk == 8 | gunsdrnk == 9 ;
replace spnatdis = . spnatdis == 0 | spnatdis == 8 | spnatdis == 9 ;
replace natdisin = . natdisin == 0 | natdisin == 8 | natdisin == 9 ;
replace natdiscm = . natdiscm == 0 | natdiscm == 8 | natdiscm == 9 ;
replace newsprnt = . newsprnt == 0 | newsprnt == 8 | newsprnt == 9 ;
replace getaheay = . getaheay == 0 | getaheay == 8 | getaheay == 9 ;
replace disabld1 = . disabld1 == 0 | disabld1 == 8 | disabld1 == 9 ;
replace disabld2 = . disabld2 == 0 | disabld2 == 8 | disabld2 == 9 ;
replace disabld3 = . disabld3 == 0 | disabld3 == 8 | disabld3 == 9 ;
replace disabld4 = . disabld4 == 0 | disabld4 == 8 | disabld4 == 9 ;
replace disabld5 = . disabld5 == 0 | disabld5 == 8 | disabld5 == 9 ;
replace disabld6 = . disabld6 == 0 | disabld6 == 8 | disabld6 == 9 ;
replace disabld7 = . disabld7 == 0 | disabld7 == 8 | disabld7 == 9 ;
replace vigvermy = . vigvermy == 0 | vigvermy == 98 | vigvermy == 99 ;
replace mhproblm = . mhproblm == 0 | mhproblm == 8 | mhproblm == 9 ;
replace mhdofam = . mhdofam == 0 | mhdofam == 8 | mhdofam == 9 ;
replace mhdofrnd = . mhdofrnd == 0 | mhdofrnd == 8 | mhdofrnd == 9 ;
replace mhdorel = . mhdorel == 0 | mhdorel == 8 | mhdorel == 9 ;
replace mhdodoc = . mhdodoc == 0 | mhdodoc == 8 | mhdodoc == 9 ;
replace mhdopsyc = . mhdopsyc == 0 | mhdopsyc == 8 | mhdopsyc == 9 ;
replace mhdomhp = . mhdomhp == 0 | mhdomhp == 8 | mhdomhp == 9 ;
replace mhdoheal = . mhdoheal == 0 | mhdoheal == 8 | mhdoheal == 9 ;
replace mhdootc = . mhdootc == 0 | mhdootc == 8 | mhdootc == 9 ;
replace mhdorx = . mhdorx == 0 | mhdorx == 8 | mhdorx == 9 ;
replace mhdohosp = . mhdohosp == 0 | mhdohosp == 8 | mhdohosp == 9 ;
replace mhdopray = . mhdopray == 0 | mhdopray == 8 | mhdopray == 9 ;
replace mhdolife = . mhdolife == 0 | mhdolife == 8 | mhdolife == 9 ;
replace mhdoherb = . mhdoherb == 0 | mhdoherb == 8 | mhdoherb == 9 ;
replace mhdofrgt = . mhdofrgt == 0 | mhdofrgt == 8 | mhdofrgt == 9 ;
replace mhdoactv = . mhdoactv == 0 | mhdoactv == 8 | mhdoactv == 9 ;
replace mhdogrp = . mhdogrp == 0 | mhdogrp == 8 | mhdogrp == 9 ;
replace mhdodiet = . mhdodiet == 0 | mhdodiet == 8 | mhdodiet == 9 ;
replace mhdoexrc = . mhdoexrc == 0 | mhdoexrc == 8 | mhdoexrc == 9 ;
replace mhdomove = . mhdomove == 0 | mhdomove == 8 | mhdomove == 9 ;
replace mhdooth = . mhdooth == 0 | mhdooth == 8 | mhdooth == 9 ;
replace mhdonone = . mhdonone == 0 | mhdonone == 8 | mhdonone == 9 ;
replace mhchrctr = . mhchrctr == 0 | mhchrctr == 8 | mhchrctr == 9 ;
replace mhbrain = . mhbrain == 0 | mhbrain == 8 | mhbrain == 9 ;
replace mhraised = . mhraised == 0 | mhraised == 8 | mhraised == 9 ;
replace mhstress = . mhstress == 0 | mhstress == 8 | mhstress == 9 ;
replace mhgenes = . mhgenes == 0 | mhgenes == 8 | mhgenes == 9 ;
replace mhgod = . mhgod == 0 | mhgod == 8 | mhgod == 9 ;
replace mhluck = . mhluck == 0 | mhluck == 8 | mhluck == 9 ;
replace mhupdown = . mhupdown == 0 | mhupdown == 8 | mhupdown == 9 ;
replace mhillnss = . mhillnss == 0 | mhillnss == 8 | mhillnss == 9 ;
replace mhphyscl = . mhphyscl == 0 | mhphyscl == 8 | mhphyscl == 9 ;
replace mhneihbr = . mhneihbr == 0 | mhneihbr == 8 | mhneihbr == 9 ;
replace mhsocial = . mhsocial == 0 | mhsocial == 8 | mhsocial == 9 ;
replace mhkdcare = . mhkdcare == 0 | mhkdcare == 8 | mhkdcare == 9 ;
replace mhfriend = . mhfriend == 0 | mhfriend == 8 | mhfriend == 9 ;
replace mhwkwith = . mhwkwith == 0 | mhwkwith == 8 | mhwkwith == 9 ;
replace mhwedrel = . mhwedrel == 0 | mhwedrel == 8 | mhwedrel == 9 ;
replace mhimpown = . mhimpown == 0 | mhimpown == 8 | mhimpown == 9 ;
replace mhimptrt = . mhimptrt == 0 | mhimptrt == 8 | mhimptrt == 9 ;
replace mhdecslf = . mhdecslf == 0 | mhdecslf == 8 | mhdecslf == 9 ;
replace mhmoney = . mhmoney == 0 | mhmoney == 8 | mhmoney == 9 ;
replace mhoutsdr = . mhoutsdr == 0 | mhoutsdr == 8 | mhoutsdr == 9 ;
replace mhlosefr = . mhlosefr == 0 | mhlosefr == 8 | mhlosefr == 9 ;
replace mhlessop = . mhlessop == 0 | mhlessop == 8 | mhlessop == 9 ;
replace mhuneasy = . mhuneasy == 0 | mhuneasy == 8 | mhuneasy == 9 ;
replace mhunsure = . mhunsure == 0 | mhunsure == 8 | mhunsure == 9 ;
replace mhintl = . mhintl == 0 | mhintl == 8 | mhintl == 9 ;
replace mhnotpol = . mhnotpol == 0 | mhnotpol == 8 | mhnotpol == 9 ;
replace mhhrdtlk = . mhhrdtlk == 0 | mhhrdtlk == 8 | mhhrdtlk == 9 ;
replace mhnokids = . mhnokids == 0 | mhnokids == 8 | mhnokids == 9 ;
replace mhcreatv = . mhcreatv == 0 | mhcreatv == 8 | mhcreatv == 9 ;
replace mhnervs = . mhnervs == 0 | mhnervs == 8 | mhnervs == 9 ;
replace mhprdctv = . mhprdctv == 0 | mhprdctv == 8 | mhprdctv == 9 ;
replace mhfeelem = . mhfeelem == 0 | mhfeelem == 8 | mhfeelem == 9 ;
replace mhtrusty = . mhtrusty == 0 | mhtrusty == 8 | mhtrusty == 9 ;
replace mhaccptd = . mhaccptd == 0 | mhaccptd == 8 | mhaccptd == 9 ;
replace mhhired = . mhhired == 0 | mhhired == 8 | mhhired == 9 ;
replace mhnotell = . mhnotell == 0 | mhnotell == 8 | mhnotell == 9 ;
replace mhsecret = . mhsecret == 0 | mhsecret == 8 | mhsecret == 9 ;
replace mhsupwrk = . mhsupwrk == 0 | mhsupwrk == 8 | mhsupwrk == 9 ;
replace mhnotch = . mhnotch == 0 | mhnotch == 8 | mhnotch == 9 ;
replace mhhlpfam = . mhhlpfam == 0 | mhhlpfam == 98 | mhhlpfam == 99 ;
replace mhhlpfrd = . mhhlpfrd == 0 | mhhlpfrd == 98 | mhhlpfrd == 99 ;
replace mhhlprel = . mhhlprel == 0 | mhhlprel == 98 | mhhlprel == 99 ;
replace mhhlpgp = . mhhlpgp == 0 | mhhlpgp == 98 | mhhlpgp == 99 ;
replace mhhlppsy = . mhhlppsy == 0 | mhhlppsy == 98 | mhhlppsy == 99 ;
replace mhhlpmhp = . mhhlpmhp == 0 | mhhlpmhp == 98 | mhhlpmhp == 99 ;
replace mhgvtjob = . mhgvtjob == 0 | mhgvtjob == 8 | mhgvtjob == 9 ;
replace mhgvthlt = . mhgvthlt == 0 | mhgvthlt == 8 | mhgvthlt == 9 ;
replace mhgvthme = . mhgvthme == 0 | mhgvthme == 8 | mhgvthme == 9 ;
replace mhgvtedc = . mhgvtedc == 0 | mhgvtedc == 8 | mhgvtedc == 9 ;
replace mhgvtdis = . mhgvtdis == 0 | mhgvtdis == 8 | mhgvtdis == 9 ;
replace mhslfshm = . mhslfshm == 0 | mhslfshm == 8 | mhslfshm == 9 ;
replace mhfamshm = . mhfamshm == 0 | mhfamshm == 8 | mhfamshm == 9 ;
replace mhseedoc = . mhseedoc == 0 | mhseedoc == 8 | mhseedoc == 9 ;
replace mhmeds = . mhmeds == 0 | mhmeds == 8 | mhmeds == 9 ;
replace mhhsptrt = . mhhsptrt == 0 | mhhsptrt == 8 | mhhsptrt == 9 ;
replace mhmnthsp = . mhmnthsp == 0 | mhmnthsp == 8 | mhmnthsp == 9 ;
replace mhviooth = . mhviooth == 0 | mhviooth == 8 | mhviooth == 9 ;
replace mhvioslf = . mhvioslf == 0 | mhvioslf == 8 | mhvioslf == 9 ;
replace mhcause = . mhcause == 0 | mhcause == 8 | mhcause == 9 ;
replace mhtrtot2 = . mhtrtot2 == 0 | mhtrtot2 == 8 | mhtrtot2 == 9 ;
replace mhclsoth = . mhclsoth == 0 | mhclsoth == 8 | mhclsoth == 9 ;
replace mhseroth = . mhseroth == 0 | mhseroth == 8 | mhseroth == 9 ;
replace mhhlpoth = . mhhlpoth == 0 | mhhlpoth == 8 | mhhlpoth == 9 ;
replace mhresoth = . mhresoth == 0 | mhresoth == 8 | mhresoth == 9 ;
replace mhdisoth = . mhdisoth == 0 | mhdisoth == 8 | mhdisoth == 9 ;
replace mhreloth = . mhreloth == 0 | mhreloth == 8 | mhreloth == 9 ;
replace mhexpoth = . mhexpoth == 0 | mhexpoth == 8 | mhexpoth == 9 ;
replace mhtrtslf = . mhtrtslf == 0 | mhtrtslf == 8 | mhtrtslf == 9 ;
replace mhseepub = . mhseepub == 0 | mhseepub == 8 | mhseepub == 9 ;
replace mhfright = . mhfright == 0 | mhfright == 8 | mhfright == 9 ;
replace mhsymp = . mhsymp == 0 | mhsymp == 8 | mhsymp == 9 ;
replace STARTBIZ = . STARTBIZ == 0 | STARTBIZ == 8 | STARTBIZ == 9 ;
replace OWNBIZ = . OWNBIZ == 0 | OWNBIZ == 8 | OWNBIZ == 9 ;
replace NUMOWN = . NUMOWN == 0 | NUMOWN == 8 | NUMOWN == 9 ;
replace YEARBIZ = . YEARBIZ == 0 | YEARBIZ == 9999 ;
replace PAIDEMPS = . PAIDEMPS == 0 | PAIDEMPS == 8 | PAIDEMPS == 9 ;
replace BIZGROSS = . BIZGROSS == 0 | BIZGROSS == 98 | BIZGROSS == 99 ;
replace bizshare = . bizshare == -1 | bizshare == 998 | bizshare == 999 ;
replace OWNINC = . OWNINC == 0 | OWNINC == 98 | OWNINC == 99 ;
replace WHYBIZ = . WHYBIZ == 0 | WHYBIZ == 8 | WHYBIZ == 9 ;
replace NUMEMPS5 = . NUMEMPS5 == 0 | NUMEMPS5 == 998 | NUMEMPS5 == 999 ;
replace spjrel16 = . spjrel16 == 0 | spjrel16 == 98 | spjrel16 == 99 ;
replace SPJOTH16 = . SPJOTH16 == 0 | SPJOTH16 == 98 | SPJOTH16 == 99 ;
replace MAJWOTH = . MAJWOTH == 0 | MAJWOTH == 8 | MAJWOTH == 9 ;
replace PAJWOTH = . PAJWOTH == 0 | PAJWOTH == 8 | PAJWOTH == 9 ;
replace BMITZVAH = . BMITZVAH == 0 | BMITZVAH == 8 | BMITZVAH == 9 ;
replace SYNMEM = . SYNMEM == 0 | SYNMEM == 8 | SYNMEM == 9 ;
replace kd1relig = . kd1relig == 0 | kd1relig == 98 | kd1relig == 99 ;
replace kd2relig = . kd2relig == 0 | kd2relig == 98 | kd2relig == 99 ;
replace kd3relig = . kd3relig == 0 | kd3relig == 98 | kd3relig == 99 ;
replace kd4relig = . kd4relig == 0 | kd4relig == 98 | kd4relig == 99 ;
replace kd5relig = . kd5relig == 0 | kd5relig == 98 | kd5relig == 99 ;
replace kd6relig = . kd6relig == 0 | kd6relig == 98 | kd6relig == 99 ;
replace kd7relig = . kd7relig == 0 | kd7relig == 98 | kd7relig == 99 ;
replace kd8relig = . kd8relig == 0 | kd8relig == 98 | kd8relig == 99 ;
replace KD1JWOTH = . KD1JWOTH == 0 | KD1JWOTH == 8 | KD1JWOTH == 9 ;
replace KD2JWOTH = . KD2JWOTH == 0 | KD2JWOTH == 8 | KD2JWOTH == 9 ;
replace KD3JWOTH = . KD3JWOTH == 0 | KD3JWOTH == 8 | KD3JWOTH == 9 ;
replace KD4JWOTH = . KD4JWOTH == 0 | KD4JWOTH == 8 | KD4JWOTH == 9 ;
replace KD5JWOTH = . KD5JWOTH == 0 | KD5JWOTH == 8 | KD5JWOTH == 9 ;
replace DONE911A = . DONE911A == -1 | DONE911A == 8 | DONE911A == 9 ;
replace EFF911A = . EFF911A == 0 | EFF911A == 8 | EFF911A == 9 ;
replace DONE911B = . DONE911B == -1 | DONE911B == 8 | DONE911B == 9 ;
replace EFF911B = . EFF911B == 0 | EFF911B == 8 | EFF911B == 9 ;
replace DONE911C = . DONE911C == -1 | DONE911C == 8 | DONE911C == 9 ;
replace EFF911C = . EFF911C == 0 | EFF911C == 8 | EFF911C == 9 ;
replace DONE911D = . DONE911D == -1 | DONE911D == 8 | DONE911D == 9 ;
replace EFF911D = . EFF911D == 0 | EFF911D == 8 | EFF911D == 9 ;
replace DONE911E = . DONE911E == -1 | DONE911E == 8 | DONE911E == 9 ;
replace EFF911E = . EFF911E == 0 | EFF911E == 8 | EFF911E == 9 ;
replace DONE911F = . DONE911F == -1 | DONE911F == 8 | DONE911F == 9 ;
replace EFF911F = . EFF911F == 0 | EFF911F == 8 | EFF911F == 9 ;
replace DONE911G = . DONE911G == -1 | DONE911G == 8 | DONE911G == 9 ;
replace EFF911G = . EFF911G == 0 | EFF911G == 8 | EFF911G == 9 ;
replace DONE911H = . DONE911H == -1 | DONE911H == 8 | DONE911H == 9 ;
replace EFF911H = . EFF911H == 0 | EFF911H == 8 | EFF911H == 9 ;
replace DONE911I = . DONE911I == -1 | DONE911I == 8 | DONE911I == 9 ;
replace EFF911I = . EFF911I == 0 | EFF911I == 8 | EFF911I == 9 ;
replace DONE911J = . DONE911J == -1 | DONE911J == 8 | DONE911J == 9 ;
replace EFF911J = . EFF911J == 0 | EFF911J == 8 | EFF911J == 9 ;
replace DONE911K = . DONE911K == -1 | DONE911K == 8 | DONE911K == 9 ;
replace EFF911K = . EFF911K == 0 | EFF911K == 8 | EFF911K == 9 ;
replace DONE911L = . DONE911L == -1 | DONE911L == 8 | DONE911L == 9 ;
replace EFF911L = . EFF911L == 0 | EFF911L == 8 | EFF911L == 9 ;
replace DONE911M = . DONE911M == -1 | DONE911M == 8 | DONE911M == 9 ;
replace EFF911M = . EFF911M == 0 | EFF911M == 8 | EFF911M == 9 ;
replace DONE911N = . DONE911N == -1 | DONE911N == 8 | DONE911N == 9 ;
replace EFF911N = . EFF911N == 0 | EFF911N == 8 | EFF911N == 9 ;
replace doneelse = . doneelse == 0 | doneelse == 98 | doneelse == 99 ;
replace WORK3YRS = . WORK3YRS == 0 | WORK3YRS == 8 | WORK3YRS == 9 ;
replace CUREMPYR = . CUREMPYR == -1 | CUREMPYR == 98 | CUREMPYR == 99 ;
replace PAYCHNGE = . PAYCHNGE == 0 | PAYCHNGE == 8 | PAYCHNGE == 9 ;
replace PASTPAY = . PASTPAY == 0 | PASTPAY == 8 | PASTPAY == 9 ;
replace WHYLEAVE = . WHYLEAVE == 0 | WHYLEAVE == 8 | WHYLEAVE == 9 ;
replace whyjbct1 = . whyjbct1 == 0 | whyjbct1 == 98 | whyjbct1 == 99 ;
replace whyjbct2 = . whyjbct2 == 0 | whyjbct2 == 98 | whyjbct2 == 99 ;
replace LOSEJB12 = . LOSEJB12 == 0 | LOSEJB12 == 8 | LOSEJB12 == 9 ;
replace whylose1 = . whylose1 == 0 | whylose1 == 98 | whylose1 == 99 ;
replace whylose2 = . whylose2 == 0 | whylose2 == 98 | whylose2 == 99 ;
replace whylose3 = . whylose3 == 0 | whylose3 == 98 | whylose3 == 99 ;
replace FINDNWJB = . FINDNWJB == 0 | FINDNWJB == 8 | FINDNWJB == 9 ;
replace MORETRDE = . MORETRDE == 0 | MORETRDE == 8 | MORETRDE == 9 ;
replace NEWJOBS = . NEWJOBS == 0 | NEWJOBS == 8 | NEWJOBS == 9 ;
replace LOSTJOBS = . LOSTJOBS == 0 | LOSTJOBS == 8 | LOSTJOBS == 9 ;
replace WKCOMPTR = . WKCOMPTR == 0 | WKCOMPTR == 8 | WKCOMPTR == 9 ;
replace WOCOMPTR = . WOCOMPTR == 0 | WOCOMPTR == 8 | WOCOMPTR == 9 ;
replace autonojb = . autonojb == 0 | autonojb == 8 | autonojb == 9 ;
replace MEETF2F1 = . MEETF2F1 == 0 | MEETF2F1 == 8 | MEETF2F1 == 9 ;
replace MEETF2F2 = . MEETF2F2 == 0 | MEETF2F2 == 8 | MEETF2F2 == 9 ;
replace INTLCOWK = . INTLCOWK == 0 | INTLCOWK == 8 | INTLCOWK == 9 ;
replace LASTYRWK = . LASTYRWK == 0 | LASTYRWK == 9998 | LASTYRWK == 9999 ;
replace LEAVEJB = . LEAVEJB == 0 | LEAVEJB == 8 | LEAVEJB == 9 ;
replace whynojb1 = . whynojb1 == 0 | whynojb1 == 98 | whynojb1 == 99 ;
replace whynojb2 = . whynojb2 == 0 | whynojb2 == 98 | whynojb2 == 99 ;
replace INCLSTJB = . INCLSTJB == 0 | INCLSTJB == 98 | INCLSTJB == 99 ;
replace BORNSP = . BORNSP == 0 | BORNSP == 98 | BORNSP == 99 ;
replace AGECMEUS = . AGECMEUS == 0 | AGECMEUS == 98 | AGECMEUS == 99 ;
replace VISA = . VISA == 0 | VISA == 8 | VISA == 9 ;
replace TYPEVISA = . TYPEVISA == 0 | TYPEVISA == 8 | TYPEVISA == 9 ;
replace NATDEG = . NATDEG == 0 | NATDEG == 98 | NATDEG == 99 ;
replace EMPHLTH = . EMPHLTH == 0 | EMPHLTH == 8 | EMPHLTH == 9 ;
replace EMPHPLAN = . EMPHPLAN == 0 | EMPHPLAN == 98 | EMPHPLAN == 99 ;
replace OTHPLAN = . OTHPLAN == 0 | OTHPLAN == 8 | OTHPLAN == 9 ;
replace SEXSEX18 = . SEXSEX18 == 0 | SEXSEX18 == 8 | SEXSEX18 == 9 ;
replace TOLDSMSX = . TOLDSMSX == 0 | TOLDSMSX == 98 | TOLDSMSX == 99 ;
replace ATTRACTD = . ATTRACTD == 0 | ATTRACTD == 98 | ATTRACTD == 99 ;
replace TOLDSXOR = . TOLDSXOR == 0 | TOLDSXOR == 98 | TOLDSXOR == 99 ;
replace RELGENDR = . RELGENDR == 0 | RELGENDR == 8 | RELGENDR == 9 ;
replace MARUNION = . MARUNION == 0 | MARUNION == 8 | MARUNION == 9 ;
replace SEXUNION = . SEXUNION == 0 | SEXUNION == 8 | SEXUNION == 9 ;
replace EVKID = . EVKID == 0 | EVKID == 8 | EVKID == 9 ;
replace ADOPTKID = . ADOPTKID == 0 | ADOPTKID == 8 | ADOPTKID == 9 ;
replace KIDLIVED = . KIDLIVED == 0 | KIDLIVED == 8 | KIDLIVED == 9 ;
replace KIDRESP = . KIDRESP == 0 | KIDRESP == 8 | KIDRESP == 9 ;
replace KIDNOW1 = . KIDNOW1 == 0 | KIDNOW1 == 8 | KIDNOW1 == 9 ;
replace KIDNOW2 = . KIDNOW2 == 0 | KIDNOW2 == 8 | KIDNOW2 == 9 ;
replace TOLDWORK = . TOLDWORK == 0 | TOLDWORK == 8 | TOLDWORK == 9 ;
replace EVLOSEJB = . EVLOSEJB == 0 | EVLOSEJB == 8 | EVLOSEJB == 9 ;
replace LOSEJOB5 = . LOSEJOB5 == 0 | LOSEJOB5 == 8 | LOSEJOB5 == 9 ;
replace EVNEGJOB = . EVNEGJOB == 0 | EVNEGJOB == 8 | EVNEGJOB == 9 ;
replace NEGJOB5 = . NEGJOB5 == 0 | NEGJOB5 == 8 | NEGJOB5 == 9 ;
replace EVHARJB = . EVHARJB == 0 | EVHARJB == 8 | EVHARJB == 9 ;
replace HARJOB5 = . HARJOB5 == 0 | HARJOB5 == 8 | HARJOB5 == 9 ;
replace EVDWELL = . EVDWELL == 0 | EVDWELL == 8 | EVDWELL == 9 ;
replace DWELL5 = . DWELL5 == 0 | DWELL5 == 8 | DWELL5 == 9 ;
replace EMPHLTH1 = . EMPHLTH1 == 0 | EMPHLTH1 == 8 | EMPHLTH1 == 9 ;
replace EMPHLTH2 = . EMPHLTH2 == 0 | EMPHLTH2 == 8 | EMPHLTH2 == 9 ;
replace HLTHCOVR = . HLTHCOVR == 0 | HLTHCOVR == 8 | HLTHCOVR == 9 ;
replace HLTHTYPE = . HLTHTYPE == 0 | HLTHTYPE == 8 | HLTHTYPE == 9 ;
replace SPPART = . SPPART == 0 | SPPART == 8 | SPPART == 9 ;
replace MYKIDS = . MYKIDS == 0 | MYKIDS == 8 | MYKIDS == 9 ;
replace OTHKIDS = . OTHKIDS == 0 | OTHKIDS == 8 | OTHKIDS == 9 ;
replace HARSEXJB = . HARSEXJB == 0 | HARSEXJB == 8 | HARSEXJB == 9 ;
replace HARSEXCL = . HARSEXCL == 0 | HARSEXCL == 8 | HARSEXCL == 9 ;
replace OWNCLERG = . OWNCLERG == 0 | OWNCLERG == 8 | OWNCLERG == 9 ;
replace NUMCLERG = . NUMCLERG == 0 | NUMCLERG == 8 | NUMCLERG == 9 ;
replace OPENREL1 = . OPENREL1 == 0 | OPENREL1 == 8 | OPENREL1 == 9 ;
replace OPENREL2 = . OPENREL2 == 0 | OPENREL2 == 8 | OPENREL2 == 9 ;
replace OPENREL3 = . OPENREL3 == 0 | OPENREL3 == 8 | OPENREL3 == 9 ;
replace counsel1 = . counsel1 == 0 | counsel1 == 8 | counsel1 == 9 ;
replace counsel2 = . counsel2 == 0 | counsel2 == 8 | counsel2 == 9 ;
replace counsel3 = . counsel3 == 0 | counsel3 == 8 | counsel3 == 9 ;
replace clrgmar1 = . clrgmar1 == 0 | clrgmar1 == 8 | clrgmar1 == 9 ;
replace clrgmar2 = . clrgmar2 == 0 | clrgmar2 == 8 | clrgmar2 == 9 ;
replace clrgmar3 = . clrgmar3 == 0 | clrgmar3 == 8 | clrgmar3 == 9 ;
replace clrgsex1 = . clrgsex1 == 0 | clrgsex1 == 8 | clrgsex1 == 9 ;
replace clrgsex2 = . clrgsex2 == 0 | clrgsex2 == 8 | clrgsex2 == 9 ;
replace clrgsex3 = . clrgsex3 == 0 | clrgsex3 == 8 | clrgsex3 == 9 ;
replace clrggen1 = . clrggen1 == 0 | clrggen1 == 8 | clrggen1 == 9 ;
replace clrggen2 = . clrggen2 == 0 | clrggen2 == 8 | clrggen2 == 9 ;
replace clrggen3 = . clrggen3 == 0 | clrggen3 == 8 | clrggen3 == 9 ;
replace ONGOREL1 = . ONGOREL1 == 0 | ONGOREL1 == 8 | ONGOREL1 == 9 ;
replace ONGOREL2 = . ONGOREL2 == 0 | ONGOREL2 == 8 | ONGOREL2 == 9 ;
replace ONGOREL3 = . ONGOREL3 == 0 | ONGOREL3 == 8 | ONGOREL3 == 9 ;
replace HUSHREL1 = . HUSHREL1 == 0 | HUSHREL1 == 8 | HUSHREL1 == 9 ;
replace HUSHREL2 = . HUSHREL2 == 0 | HUSHREL2 == 8 | HUSHREL2 == 9 ;
replace HUSHREL3 = . HUSHREL3 == 0 | HUSHREL3 == 8 | HUSHREL3 == 9 ;
replace TOLDEXP1 = . TOLDEXP1 == 0 | TOLDEXP1 == 8 | TOLDEXP1 == 9 ;
replace TOLDEXP2 = . TOLDEXP2 == 0 | TOLDEXP2 == 8 | TOLDEXP2 == 9 ;
replace TOLDEXP3 = . TOLDEXP3 == 0 | TOLDEXP3 == 8 | TOLDEXP3 == 9 ;
replace toldrel1 = . toldrel1 == 0 | toldrel1 == 8 | toldrel1 == 9 ;
replace toldrel2 = . toldrel2 == 0 | toldrel2 == 8 | toldrel2 == 9 ;
replace toldrel3 = . toldrel3 == 0 | toldrel3 == 8 | toldrel3 == 9 ;
replace KNWCLSEX = . KNWCLSEX == 0 | KNWCLSEX == 8 | KNWCLSEX == 9 ;
replace CLSCLSEX = . CLSCLSEX == 0 | CLSCLSEX == 8 | CLSCLSEX == 9 ;
replace clrgmode = . clrgmode == 0 | clrgmode == 8 | clrgmode == 9 ;
replace PRESPOP = . PRESPOP == 0 | PRESPOP == 8 | PRESPOP == 9 ;
replace VOLACTYR = . VOLACTYR == 0 | VOLACTYR == 8 | VOLACTYR == 9 ;
replace VOLACTY2 = . VOLACTY2 == 0 | VOLACTY2 == 8 | VOLACTY2 == 9 ;
replace POLEFY3 = . POLEFY3 == 0 | POLEFY3 == 8 | POLEFY3 == 9 ;
replace POLEFY11 = . POLEFY11 == 0 | POLEFY11 == 8 | POLEFY11 == 9 ;
replace POLEFY13 = . POLEFY13 == 0 | POLEFY13 == 8 | POLEFY13 == 9 ;
replace POLEFY15 = . POLEFY15 == 0 | POLEFY15 == 8 | POLEFY15 == 9 ;
replace POLEFY16 = . POLEFY16 == 0 | POLEFY16 == 8 | POLEFY16 == 9 ;
replace POLEFY17 = . POLEFY17 == 0 | POLEFY17 == 8 | POLEFY17 == 9 ;
replace RATETONE = . RATETONE == 0 | RATETONE == 98 | RATETONE == 99 ;
replace pubdef = . pubdef == 0 | pubdef == 8 | pubdef == 9 ;
replace pubecon = . pubecon == 0 | pubecon == 8 | pubecon == 9 ;
replace obeylaw = . obeylaw == 0 | obeylaw == 8 | obeylaw == 9 ;
replace protest1 = . protest1 == 0 | protest1 == 8 | protest1 == 9 ;
replace protest2 = . protest2 == 0 | protest2 == 8 | protest2 == 9 ;
replace protest3 = . protest3 == 0 | protest3 == 8 | protest3 == 9 ;
replace protest4 = . protest4 == 0 | protest4 == 8 | protest4 == 9 ;
replace protest5 = . protest5 == 0 | protest5 == 8 | protest5 == 9 ;
replace protest6 = . protest6 == 0 | protest6 == 8 | protest6 == 9 ;
replace revspeak = . revspeak == 0 | revspeak == 8 | revspeak == 9 ;
replace revtch15 = . revtch15 == 0 | revtch15 == 8 | revtch15 == 9 ;
replace revpub = . revpub == 0 | revpub == 8 | revpub == 9 ;
replace racspeak = . racspeak == 0 | racspeak == 8 | racspeak == 9 ;
replace ractch15 = . ractch15 == 0 | ractch15 == 8 | ractch15 == 9 ;
replace racpub = . racpub == 0 | racpub == 8 | racpub == 9 ;
replace crimtail = . crimtail == 0 | crimtail == 8 | crimtail == 9 ;
replace crimtap = . crimtap == 0 | crimtap == 8 | crimtap == 9 ;
replace crimread = . crimread == 0 | crimread == 8 | crimread == 9 ;
replace crimhold = . crimhold == 0 | crimhold == 8 | crimhold == 9 ;
replace mantail = . mantail == 0 | mantail == 8 | mantail == 9 ;
replace mantap = . mantap == 0 | mantap == 8 | mantap == 9 ;
replace manread = . manread == 0 | manread == 8 | manread == 9 ;
replace manhold = . manhold == 0 | manhold == 8 | manhold == 9 ;
replace verdict = . verdict == 0 | verdict == 8 | verdict == 9 ;
replace databank = . databank == 0 | databank == 8 | databank == 9 ;
replace progtax = . progtax == 0 | progtax == 8 | progtax == 9 ;
replace eqincome = . eqincome == 0 | eqincome == 8 | eqincome == 9 ;
replace oprich = . oprich == 0 | oprich == 8 | oprich == 9 ;
replace opprof = . opprof == 0 | opprof == 8 | opprof == 9 ;
replace opfamily = . opfamily == 0 | opfamily == 8 | opfamily == 9 ;
replace fecolop = . fecolop == 0 | fecolop == 8 | fecolop == 9 ;
replace fejobop = . fejobop == 0 | fejobop == 8 | fejobop == 9 ;
replace feinc = . feinc == 0 | feinc == 8 | feinc == 9 ;
replace fehlpbus = . fehlpbus == 0 | fehlpbus == 8 | fehlpbus == 9 ;
replace fehlpcol = . fehlpcol == 0 | fehlpcol == 8 | fehlpcol == 9 ;
replace fehlpjob = . fehlpjob == 0 | fehlpjob == 8 | fehlpjob == 9 ;
replace hsbasics = . hsbasics == 0 | hsbasics == 8 | hsbasics == 9 ;
replace hssexed = . hssexed == 0 | hssexed == 8 | hssexed == 9 ;
replace hsrespct = . hsrespct == 0 | hsrespct == 8 | hsrespct == 9 ;
replace hslibart = . hslibart == 0 | hslibart == 8 | hslibart == 9 ;
replace hsjudge = . hsjudge == 0 | hsjudge == 8 | hsjudge == 9 ;
replace hsjobtr = . hsjobtr == 0 | hsjobtr == 8 | hsjobtr == 9 ;
replace hssci = . hssci == 0 | hssci == 8 | hssci == 9 ;
replace hscaring = . hscaring == 0 | hscaring == 8 | hscaring == 9 ;
replace hsorder = . hsorder == 0 | hsorder == 8 | hsorder == 9 ;
replace colop = . colop == 0 | colop == 8 | colop == 9 ;
replace aidneedy = . aidneedy == 0 | aidneedy == 8 | aidneedy == 9 ;
replace aidsmart = . aidsmart == 0 | aidsmart == 8 | aidsmart == 9 ;
replace aidavg = . aidavg == 0 | aidavg == 8 | aidavg == 9 ;
replace kiddrugs = . kiddrugs == 0 | kiddrugs == 8 | kiddrugs == 9 ;
replace kidskips = . kidskips == 0 | kidskips == 8 | kidskips == 9 ;
replace kidout = . kidout == 0 | kidout == 8 | kidout == 9 ;
replace kidneedy = . kidneedy == 0 | kidneedy == 8 | kidneedy == 9 ;
replace kidbeat = . kidbeat == 0 | kidbeat == 8 | kidbeat == 9 ;
replace kidhlth = . kidhlth == 0 | kidhlth == 8 | kidhlth == 9 ;
replace kidedpar = . kidedpar == 0 | kidedpar == 8 | kidedpar == 9 ;
replace kidxfilm = . kidxfilm == 0 | kidxfilm == 8 | kidxfilm == 9 ;
replace beltup = . beltup == 0 | beltup == 8 | beltup == 9 ;
replace nosmoke = . nosmoke == 0 | nosmoke == 8 | nosmoke == 9 ;
replace mustret = . mustret == 0 | mustret == 8 | mustret == 9 ;
replace poleff1 = . poleff1 == 0 | poleff1 == 8 | poleff1 == 9 ;
replace poleff2 = . poleff2 == 0 | poleff2 == 8 | poleff2 == 9 ;
replace poleff3 = . poleff3 == 0 | poleff3 == 8 | poleff3 == 9 ;
replace poleff4 = . poleff4 == 0 | poleff4 == 8 | poleff4 == 9 ;
replace poleff5 = . poleff5 == 0 | poleff5 == 8 | poleff5 == 9 ;
replace poleff6 = . poleff6 == 0 | poleff6 == 8 | poleff6 == 9 ;
replace poleff7 = . poleff7 == 0 | poleff7 == 8 | poleff7 == 9 ;
replace poleff8 = . poleff8 == 0 | poleff8 == 8 | poleff8 == 9 ;
replace poleff9 = . poleff9 == 0 | poleff9 == 8 | poleff9 == 9 ;
replace poleff10 = . poleff10 == 0 | poleff10 == 8 | poleff10 == 9 ;
replace setwage = . setwage == 0 | setwage == 8 | setwage == 9 ;
replace setprice = . setprice == 0 | setprice == 8 | setprice == 9 ;
replace cutgovt = . cutgovt == 0 | cutgovt == 8 | cutgovt == 9 ;
replace makejobs = . makejobs == 0 | makejobs == 8 | makejobs == 9 ;
replace lessreg = . lessreg == 0 | lessreg == 8 | lessreg == 9 ;
replace hlphitec = . hlphitec == 0 | hlphitec == 8 | hlphitec == 9 ;
replace savejobs = . savejobs == 0 | savejobs == 8 | savejobs == 9 ;
replace cuthours = . cuthours == 0 | cuthours == 8 | cuthours == 9 ;
replace spenviro = . spenviro == 0 | spenviro == 8 | spenviro == 9 ;
replace sphlth = . sphlth == 0 | sphlth == 8 | sphlth == 9 ;
replace sppolice = . sppolice == 0 | sppolice == 8 | sppolice == 9 ;
replace spschool = . spschool == 0 | spschool == 8 | spschool == 9 ;
replace sparms = . sparms == 0 | sparms == 8 | sparms == 9 ;
replace spretire = . spretire == 0 | spretire == 8 | spretire == 9 ;
replace spunemp = . spunemp == 0 | spunemp == 8 | spunemp == 9 ;
replace sparts = . sparts == 0 | sparts == 8 | sparts == 9 ;
replace inctax = . inctax == 0 | inctax == 8 | inctax == 9 ;
replace bustax = . bustax == 0 | bustax == 8 | bustax == 9 ;
replace infljobs = . infljobs == 0 | infljobs == 8 | infljobs == 9 ;
replace laborpow = . laborpow == 0 | laborpow == 8 | laborpow == 9 ;
replace buspow = . buspow == 0 | buspow == 8 | buspow == 9 ;
replace govtpow = . govtpow == 0 | govtpow == 8 | govtpow == 9 ;
replace ownpower = . ownpower == 0 | ownpower == 8 | ownpower == 9 ;
replace ownmass = . ownmass == 0 | ownmass == 8 | ownmass == 9 ;
replace ownsteel = . ownsteel == 0 | ownsteel == 8 | ownsteel == 9 ;
replace ownbanks = . ownbanks == 0 | ownbanks == 8 | ownbanks == 9 ;
replace ownautos = . ownautos == 0 | ownautos == 8 | ownautos == 9 ;
replace jobsall = . jobsall == 0 | jobsall == 8 | jobsall == 9 ;
replace pricecon = . pricecon == 0 | pricecon == 8 | pricecon == 9 ;
replace hlthcare = . hlthcare == 0 | hlthcare == 8 | hlthcare == 9 ;
replace aidold = . aidold == 0 | aidold == 8 | aidold == 9 ;
replace aidindus = . aidindus == 0 | aidindus == 8 | aidindus == 9 ;
replace aidunemp = . aidunemp == 0 | aidunemp == 8 | aidunemp == 9 ;
replace equalize = . equalize == 0 | equalize == 8 | equalize == 9 ;
replace aidcol = . aidcol == 0 | aidcol == 8 | aidcol == 9 ;
replace aidhouse = . aidhouse == 0 | aidhouse == 8 | aidhouse == 9 ;
replace protstrs = . protstrs == 0 | protstrs == 8 | protstrs == 9 ;
replace revoltrs = . revoltrs == 0 | revoltrs == 8 | revoltrs == 9 ;
replace racists = . racists == 0 | racists == 8 | racists == 9 ;
replace unionsok = . unionsok == 0 | unionsok == 8 | unionsok == 9 ;
replace polint = . polint == 0 | polint == 8 | polint == 9 ;
replace rprtst1 = . rprtst1 == 0 | rprtst1 == 8 | rprtst1 == 9 ;
replace rprtst3 = . rprtst3 == 0 | rprtst3 == 8 | rprtst3 == 9 ;
replace rprtst15 = . rprtst15 == 0 | rprtst15 == 8 | rprtst15 == 9 ;
replace rprtst35 = . rprtst35 == 0 | rprtst35 == 8 | rprtst35 == 9 ;
replace grnlaws = . grnlaws == 0 | grnlaws == 8 | grnlaws == 9 ;
replace poleff11 = . poleff11 == 0 | poleff11 == 8 | poleff11 == 9 ;
replace poleff12 = . poleff12 == 0 | poleff12 == 8 | poleff12 == 9 ;
replace poleff13 = . poleff13 == 0 | poleff13 == 8 | poleff13 == 9 ;
replace poleff14 = . poleff14 == 0 | poleff14 == 8 | poleff14 == 9 ;
replace poleff15 = . poleff15 == 0 | poleff15 == 8 | poleff15 == 9 ;
replace poleff16 = . poleff16 == 0 | poleff16 == 8 | poleff16 == 9 ;
replace poleff17 = . poleff17 == 0 | poleff17 == 8 | poleff17 == 9 ;
replace demworks = . demworks == 0 | demworks == 8 | demworks == 9 ;
replace taxspend = . taxspend == 0 | taxspend == 8 | taxspend == 9 ;
replace runpower = . runpower == 0 | runpower == 8 | runpower == 9 ;
replace runhosp = . runhosp == 0 | runhosp == 8 | runhosp == 9 ;
replace runbanks = . runbanks == 0 | runbanks == 8 | runbanks == 9 ;
replace cutdebt = . cutdebt == 0 | cutdebt == 8 | cutdebt == 9 ;
replace helphlth = . helphlth == 0 | helphlth == 8 | helphlth == 9 ;
replace helpold = . helpold == 0 | helpold == 8 | helpold == 9 ;
replace helpsec = . helpsec == 0 | helpsec == 8 | helpsec == 9 ;
replace helpcrim = . helpcrim == 0 | helpcrim == 8 | helpcrim == 9 ;
replace helpemp = . helpemp == 0 | helpemp == 8 | helpemp == 9 ;
replace helpenv = . helpenv == 0 | helpenv == 8 | helpenv == 9 ;
replace wotrial = . wotrial == 0 | wotrial == 8 | wotrial == 9 ;
replace tapphone = . tapphone == 0 | tapphone == 8 | tapphone == 9 ;
replace stoprndm = . stoprndm == 0 | stoprndm == 8 | stoprndm == 9 ;
replace fewtrsty = . fewtrsty == 0 | fewtrsty == 8 | fewtrsty == 9 ;
replace exploit = . exploit == 0 | exploit == 8 | exploit == 9 ;
replace youinflu = . youinflu == 0 | youinflu == 8 | youinflu == 9 ;
replace hlpinflu = . hlpinflu == 0 | hlpinflu == 8 | hlpinflu == 9 ;
replace polsfair = . polsfair == 0 | polsfair == 8 | polsfair == 9 ;
replace knowpols = . knowpols == 0 | knowpols == 8 | knowpols == 9 ;
replace corrupt1 = . corrupt1 == 0 | corrupt1 == 8 | corrupt1 == 9 ;
replace corrupt2 = . corrupt2 == 0 | corrupt2 == 8 | corrupt2 == 9 ;
replace bribe = . bribe == 0 | bribe == 8 | bribe == 9 ;
replace peocntct = . peocntct == 0 | peocntct == 8 | peocntct == 9 ;
replace malive = . malive == 0 | malive == 8 | malive == 9 ;
replace mavisit = . mavisit == 0 | mavisit == 98 | mavisit == 99 ;
replace matime = . matime == 0 | matime == 98 | matime == 99 ;
replace macall = . macall == 0 | macall == 8 | macall == 9 ;
replace palive = . palive == 0 | palive == 8 | palive == 9 ;
replace pavisit = . pavisit == 0 | pavisit == 98 | pavisit == 99 ;
replace patime = . patime == 0 | patime == 98 | patime == 99 ;
replace pacall = . pacall == 0 | pacall == 8 | pacall == 9 ;
replace sisnum = . sisnum == -1 | sisnum == 8 | sisnum == 9 ;
replace sisvisit = . sisvisit == 0 | sisvisit == 98 | sisvisit == 99 ;
replace sistime = . sistime == 0 | sistime == 98 | sistime == 99 ;
replace siscall = . siscall == 0 | siscall == 8 | siscall == 9 ;
replace bronum = . bronum == -1 | bronum == 8 | bronum == 9 ;
replace brovisit = . brovisit == 0 | brovisit == 98 | brovisit == 99 ;
replace brotime = . brotime == 0 | brotime == 98 | brotime == 99 ;
replace brocall = . brocall == 0 | brocall == 8 | brocall == 9 ;
replace daunum = . daunum == -1 | daunum == 8 | daunum == 9 ;
replace dauvisit = . dauvisit == 0 | dauvisit == 98 | dauvisit == 99 ;
replace dautime = . dautime == 0 | dautime == 98 | dautime == 99 ;
replace daucall = . daucall == 0 | daucall == 8 | daucall == 9 ;
replace sonnum = . sonnum == -1 | sonnum == 8 | sonnum == 9 ;
replace sonvisit = . sonvisit == 0 | sonvisit == 98 | sonvisit == 99 ;
replace sontime = . sontime == 0 | sontime == 98 | sontime == 99 ;
replace soncall = . soncall == 0 | soncall == 8 | soncall == 9 ;
replace posslq = . posslq == 0 | posslq == 8 | posslq == 9 ;
replace POSSLQY = . POSSLQY == 0 | POSSLQY == 8 | POSSLQY == 9 ;
replace grparnum = . grparnum == -1 | grparnum == 98 | grparnum == 99 ;
replace grkidnum = . grkidnum == -1 | grkidnum == 98 | grkidnum == 99 ;
replace unaunum = . unaunum == -1 | unaunum == 98 | unaunum == 99 ;
replace inlawnum = . inlawnum == -1 | inlawnum == 98 | inlawnum == 99 ;
replace relnum = . relnum == -1 | relnum == 98 | relnum == 99 ;
replace relmost = . relmost == 0 | relmost == 98 | relmost == 99 ;
replace relvisit = . relvisit == 0 | relvisit == 98 | relvisit == 99 ;
replace reltime = . reltime == 0 | reltime == 98 | reltime == 99 ;
replace relcall = . relcall == 0 | relcall == 8 | relcall == 9 ;
replace frinum = . frinum == -1 | frinum == 98 | frinum == 99 ;
replace friwork = . friwork == -1 | friwork == 98 | friwork == 99 ;
replace frineigh = . frineigh == -1 | frineigh == 98 | frineigh == 99 ;
replace frisex = . frisex == 0 | frisex == 8 | frisex == 9 ;
replace frivisit = . frivisit == 0 | frivisit == 98 | frivisit == 99 ;
replace fritime = . fritime == 0 | fritime == 98 | fritime == 99 ;
replace fricall = . fricall == 0 | fricall == 8 | fricall == 9 ;
replace chores1 = . chores1 == 0 | chores1 == 98 | chores1 == 99 ;
replace chores2 = . chores2 == 0 | chores2 == 98 | chores2 == 99 ;
replace sick1 = . sick1 == 0 | sick1 == 98 | sick1 == 99 ;
replace sick2 = . sick2 == 0 | sick2 == 98 | sick2 == 99 ;
replace borrow1 = . borrow1 == 0 | borrow1 == 98 | borrow1 == 99 ;
replace borrow2 = . borrow2 == 0 | borrow2 == 98 | borrow2 == 99 ;
replace upset1 = . upset1 == 0 | upset1 == 98 | upset1 == 99 ;
replace upset2 = . upset2 == 0 | upset2 == 98 | upset2 == 99 ;
replace down1 = . down1 == 0 | down1 == 98 | down1 == 99 ;
replace down2 = . down2 == 0 | down2 == 98 | down2 == 99 ;
replace change1 = . change1 == 0 | change1 == 98 | change1 == 99 ;
replace change2 = . change2 == 0 | change2 == 98 | change2 == 99 ;
replace livecom = . livecom == -1 | livecom == 98 | livecom == 99 ;
replace livehome = . livehome == -1 | livehome == 98 | livehome == 99 ;
replace matime1 = . matime1 == 0 | matime1 == 98 | matime1 == 99 ;
replace sibnum = . sibnum == -1 | sibnum == 98 | sibnum == 99 ;
replace sibmost = . sibmost == 0 | sibmost == 8 | sibmost == 9 ;
replace sibvisit = . sibvisit == 0 | sibvisit == 8 | sibvisit == 9 ;
replace sibcall = . sibcall == 0 | sibcall == 8 | sibcall == 9 ;
replace kidnum = . kidnum == -1 | kidnum == 98 | kidnum == 99 ;
replace kidmost = . kidmost == 0 | kidmost == 8 | kidmost == 9 ;
replace kidvisit = . kidvisit == 0 | kidvisit == 8 | kidvisit == 9 ;
replace kidcall = . kidcall == 0 | kidcall == 8 | kidcall == 9 ;
replace pavisit1 = . pavisit1 == 0 | pavisit1 == 98 | pavisit1 == 99 ;
replace pacall1 = . pacall1 == 0 | pacall1 == 8 | pacall1 == 9 ;
replace mavisit1 = . mavisit1 == 0 | mavisit1 == 98 | mavisit1 == 99 ;
replace macall1 = . macall1 == 0 | macall1 == 8 | macall1 == 9 ;
replace uncaunts = . uncaunts == 0 | uncaunts == 8 | uncaunts == 9 ;
replace cousins = . cousins == 0 | cousins == 8 | cousins == 9 ;
replace parslaw = . parslaw == 0 | parslaw == 8 | parslaw == 9 ;
replace sibinlaw = . sibinlaw == 0 | sibinlaw == 8 | sibinlaw == 9 ;
replace niecenep = . niecenep == 0 | niecenep == 8 | niecenep == 9 ;
replace godparts = . godparts == 0 | godparts == 8 | godparts == 9 ;
replace cowrkfrd = . cowrkfrd == -1 | cowrkfrd == 98 | cowrkfrd == 99 ;
replace neifrd = . neifrd == -1 | neifrd == 98 | neifrd == 99 ;
replace bestfrd = . bestfrd == 0 | bestfrd == 8 | bestfrd == 9 ;
replace bstvisit = . bstvisit == 0 | bstvisit == 98 | bstvisit == 99 ;
replace bstcall = . bstcall == 0 | bstcall == 8 | bstcall == 9 ;
replace grppol = . grppol == 0 | grppol == 8 | grppol == 9 ;
replace grpunion = . grpunion == 0 | grpunion == 8 | grpunion == 9 ;
replace grpchurh = . grpchurh == 0 | grpchurh == 8 | grpchurh == 9 ;
replace grpsport = . grpsport == 0 | grpsport == 8 | grpsport == 9 ;
replace grpchrty = . grpchrty == 0 | grpchrty == 8 | grpchrty == 9 ;
replace grpnei = . grpnei == 0 | grpnei == 8 | grpnei == 9 ;
replace grpoth = . grpoth == 0 | grpoth == 8 | grpoth == 9 ;
replace sick1a = . sick1a == 0 | sick1a == 98 | sick1a == 99 ;
replace sick2a = . sick2a == 0 | sick2a == 98 | sick2a == 99 ;
replace borrow1a = . borrow1a == 0 | borrow1a == 98 | borrow1a == 99 ;
replace borrow2a = . borrow2a == 0 | borrow2a == 98 | borrow2a == 99 ;
replace down1a = . down1a == 0 | down1a == 98 | down1a == 99 ;
replace down2a = . down2a == 0 | down2a == 98 | down2a == 99 ;
replace helphwrk = . helphwrk == 0 | helphwrk == 8 | helphwrk == 9 ;
replace lentto = . lentto == 0 | lentto == 8 | lentto == 9 ;
replace talkedto = . talkedto == 0 | talkedto == 8 | talkedto == 9 ;
replace helpjob = . helpjob == 0 | helpjob == 8 | helpjob == 9 ;
replace learnjob = . learnjob == 0 | learnjob == 98 | learnjob == 99 ;
replace frdthink = . frdthink == 0 | frdthink == 8 | frdthink == 9 ;
replace frdhelps = . frdhelps == 0 | frdhelps == 8 | frdhelps == 9 ;
replace frdknows = . frdknows == 0 | frdknows == 8 | frdknows == 9 ;
replace frdenjoy = . frdenjoy == 0 | frdenjoy == 8 | frdenjoy == 9 ;
replace kidpars = . kidpars == 0 | kidpars == 8 | kidpars == 9 ;
replace firstyou = . firstyou == 0 | firstyou == 8 | firstyou == 9 ;
replace helpfrds = . helpfrds == 0 | helpfrds == 8 | helpfrds == 9 ;
replace usefrds = . usefrds == 0 | usefrds == 8 | usefrds == 9 ;
replace aidkids = . aidkids == 0 | aidkids == 8 | aidkids == 9 ;
replace othfrd = . othfrd == -1 | othfrd == 98 | othfrd == 99 ;
replace demands = . demands == 0 | demands == 8 | demands == 9 ;
replace trustpeo = . trustpeo == 0 | trustpeo == 8 | trustpeo == 9 ;
replace wantbest = . wantbest == 0 | wantbest == 8 | wantbest == 9 ;
replace advantge = . advantge == 0 | advantge == 8 | advantge == 9 ;
replace comyear = . comyear == -1 | comyear == 9998 | comyear == 9999 ;
replace localgvt = . localgvt == 0 | localgvt == 8 | localgvt == 9 ;
replace opwlth = . opwlth == 0 | opwlth == 8 | opwlth == 9 ;
replace oppared = . oppared == 0 | oppared == 8 | oppared == 9 ;
replace opeduc = . opeduc == 0 | opeduc == 8 | opeduc == 9 ;
replace opambit = . opambit == 0 | opambit == 8 | opambit == 9 ;
replace opable = . opable == 0 | opable == 8 | opable == 9 ;
replace ophrdwrk = . ophrdwrk == 0 | ophrdwrk == 8 | ophrdwrk == 9 ;
replace opknow = . opknow == 0 | opknow == 8 | opknow == 9 ;
replace opclout = . opclout == 0 | opclout == 8 | opclout == 9 ;
replace oprace = . oprace == 0 | oprace == 8 | oprace == 9 ;
replace oprelig = . oprelig == 0 | oprelig == 8 | oprelig == 9 ;
replace opregion = . opregion == 0 | opregion == 8 | opregion == 9 ;
replace opsex = . opsex == 0 | opsex == 8 | opsex == 9 ;
replace oppol = . oppol == 0 | oppol == 8 | oppol == 9 ;
replace goodlife = . goodlife == 0 | goodlife == 8 | goodlife == 9 ;
replace incentiv = . incentiv == 0 | incentiv == 8 | incentiv == 9 ;
replace inequal1 = . inequal1 == 0 | inequal1 == 8 | inequal1 == 9 ;
replace inequal2 = . inequal2 == 0 | inequal2 == 8 | inequal2 == 9 ;
replace inequal3 = . inequal3 == 0 | inequal3 == 8 | inequal3 == 9 ;
replace inequal4 = . inequal4 == 0 | inequal4 == 8 | inequal4 == 9 ;
replace inequal5 = . inequal5 == 0 | inequal5 == 8 | inequal5 == 9 ;
replace inequal6 = . inequal6 == 0 | inequal6 == 8 | inequal6 == 9 ;
replace inequal7 = . inequal7 == 0 | inequal7 == 8 | inequal7 == 9 ;
replace paymason = . paymason == -1 | paymason == 999998 | paymason == 999999 ;
replace paydoc = . paydoc == -1 | paydoc == 999998 | paydoc == 999999 ;
replace payclerk = . payclerk == -1 | payclerk == 999998 | payclerk == 999999 ;
replace payowner = . payowner == -1 | payowner == 999998 | payowner == 999999 ;
replace payexec = . payexec == -1 | payexec == 999998 | payexec == 999999 ;
replace payskill = . payskill == -1 | payskill == 999998 | payskill == 999999 ;
replace payfarm = . payfarm == -1 | payfarm == 999998 | payfarm == 999999 ;
replace paysec = . paysec == -1 | paysec == 999998 | paysec == 999999 ;
replace paybus = . paybus == -1 | paybus == 999998 | paybus == 999999 ;
replace payunskl = . payunskl == -1 | payunskl == 999998 | payunskl == 999999 ;
replace paycabnt = . paycabnt == -1 | paycabnt == 999998 | paycabnt == 999999 ;
replace paylaw = . paylaw == -1 | paylaw == 999998 | paylaw == 999999 ;
replace paysales = . paysales == -1 | paysales == 999998 | paysales == 999999 ;
replace payfctry = . payfctry == -1 | payfctry == 999998 | payfctry == 999999 ;
replace payjudge = . payjudge == -1 | payjudge == 999998 | payjudge == 999999 ;
replace payrocc = . payrocc == -1 | payrocc == 999998 | payrocc == 999999 ;
replace givmason = . givmason == -1 | givmason == 999998 | givmason == 999999 ;
replace givdoc = . givdoc == -1 | givdoc == 999998 | givdoc == 999999 ;
replace givclerk = . givclerk == -1 | givclerk == 999998 | givclerk == 999999 ;
replace givowner = . givowner == -1 | givowner == 999998 | givowner == 999999 ;
replace givexec = . givexec == -1 | givexec == 999998 | givexec == 999999 ;
replace givskill = . givskill == -1 | givskill == 999998 | givskill == 999999 ;
replace givfarm = . givfarm == -1 | givfarm == 999998 | givfarm == 999999 ;
replace givsec = . givsec == -1 | givsec == 999998 | givsec == 999999 ;
replace givbus = . givbus == -1 | givbus == 999998 | givbus == 999999 ;
replace givunskl = . givunskl == -1 | givunskl == 999998 | givunskl == 999999 ;
replace givcabnt = . givcabnt == -1 | givcabnt == 999998 | givcabnt == 999999 ;
replace givlaw = . givlaw == -1 | givlaw == 999998 | givlaw == 999999 ;
replace givsales = . givsales == -1 | givsales == 999998 | givsales == 999999 ;
replace givfctry = . givfctry == -1 | givfctry == 999998 | givfctry == 999999 ;
replace givjudge = . givjudge == -1 | givjudge == 999998 | givjudge == 999999 ;
replace givrocc = . givrocc == -1 | givrocc == 999998 | givrocc == 999999 ;
replace incgap = . incgap == 0 | incgap == 8 | incgap == 9 ;
replace goveqinc = . goveqinc == 0 | goveqinc == 8 | goveqinc == 9 ;
replace govedop = . govedop == 0 | govedop == 8 | govedop == 9 ;
replace govjobs = . govjobs == 0 | govjobs == 8 | govjobs == 9 ;
replace govless = . govless == 0 | govless == 8 | govless == 9 ;
replace govunemp = . govunemp == 0 | govunemp == 8 | govunemp == 9 ;
replace govminc = . govminc == 0 | govminc == 8 | govminc == 9 ;
replace taxrich = . taxrich == 0 | taxrich == 8 | taxrich == 9 ;
replace taxmid = . taxmid == 0 | taxmid == 8 | taxmid == 9 ;
replace taxpoor = . taxpoor == 0 | taxpoor == 8 | taxpoor == 9 ;
replace taxshare = . taxshare == 0 | taxshare == 8 | taxshare == 9 ;
replace conwlth = . conwlth == 0 | conwlth == 8 | conwlth == 9 ;
replace conclass = . conclass == 0 | conclass == 8 | conclass == 9 ;
replace conjobs = . conjobs == 0 | conjobs == 8 | conjobs == 9 ;
replace conunion = . conunion == 0 | conunion == 8 | conunion == 9 ;
replace conurban = . conurban == 0 | conurban == 8 | conurban == 9 ;
replace consoc = . consoc == 0 | consoc == 8 | consoc == 9 ;
replace conage = . conage == 0 | conage == 8 | conage == 9 ;
replace occmobil = . occmobil == 0 | occmobil == 8 | occmobil == 9 ;
replace pajob = . pajob == 0 | pajob == 98 | pajob == 99 ;
replace paslf = . paslf == 0 | paslf == 8 | paslf == 9 ;
replace firstjob = . firstjob == 0 | firstjob == 98 | firstjob == 99 ;
replace firstslf = . firstslf == 0 | firstslf == 8 | firstslf == 9 ;
replace lastjob = . lastjob == 0 | lastjob == 98 | lastjob == 99 ;
replace lastslf = . lastslf == 0 | lastslf == 8 | lastslf == 9 ;
replace rewrdeff = . rewrdeff == 0 | rewrdeff == 8 | rewrdeff == 9 ;
replace rewrdint = . rewrdint == 0 | rewrdint == 8 | rewrdint == 9 ;
replace corrupt = . corrupt == 0 | corrupt == 8 | corrupt == 9 ;
replace earndes = . earndes == 0 | earndes == 8 | earndes == 9 ;
replace ldcgap = . ldcgap == 0 | ldcgap == 8 | ldcgap == 9 ;
replace ldctax = . ldctax == 0 | ldctax == 8 | ldctax == 9 ;
replace richhlth = . richhlth == 0 | richhlth == 8 | richhlth == 9 ;
replace richeduc = . richeduc == 0 | richeduc == 8 | richeduc == 9 ;
replace payresp = . payresp == 0 | payresp == 8 | payresp == 9 ;
replace payedtrn = . payedtrn == 0 | payedtrn == 8 | payedtrn == 9 ;
replace paysup = . paysup == 0 | paysup == 8 | paysup == 9 ;
replace payfam1 = . payfam1 == 0 | payfam1 == 8 | payfam1 == 9 ;
replace paychild = . paychild == 0 | paychild == 8 | paychild == 9 ;
replace paydowel = . paydowel == 0 | paydowel == 8 | paydowel == 9 ;
replace payhard = . payhard == 0 | payhard == 8 | payhard == 9 ;
replace justpay = . justpay == 0 | justpay == 8 | justpay == 9 ;
replace soctype1 = . soctype1 == 0 | soctype1 == 8 | soctype1 == 9 ;
replace soctype2 = . soctype2 == 0 | soctype2 == 8 | soctype2 == 9 ;
replace famrnk = . famrnk == 0 | famrnk == 8 | famrnk == 9 ;
replace unsklrnk = . unsklrnk == 0 | unsklrnk == 8 | unsklrnk == 9 ;
replace execrnk = . execrnk == 0 | execrnk == 8 | execrnk == 9 ;
replace pasup = . pasup == 0 | pasup == 8 | pasup == 9 ;
replace books16 = . books16 == 0 | books16 == 98 | books16 == 99 ;
replace mawrkwrm = . mawrkwrm == 0 | mawrkwrm == 8 | mawrkwrm == 9 ;
replace kidsuffr = . kidsuffr == 0 | kidsuffr == 8 | kidsuffr == 9 ;
replace famsuffr = . famsuffr == 0 | famsuffr == 8 | famsuffr == 9 ;
replace hapifwrk = . hapifwrk == 0 | hapifwrk == 8 | hapifwrk == 9 ;
replace homekid = . homekid == 0 | homekid == 8 | homekid == 9 ;
replace housewrk = . housewrk == 0 | housewrk == 8 | housewrk == 9 ;
replace fejobind = . fejobind == 0 | fejobind == 8 | fejobind == 9 ;
replace twoincs = . twoincs == 0 | twoincs == 8 | twoincs == 9 ;
replace hubbywrk = . hubbywrk == 0 | hubbywrk == 8 | hubbywrk == 9 ;
replace ilikejob = . ilikejob == 0 | ilikejob == 8 | ilikejob == 9 ;
replace wrknokid = . wrknokid == 0 | wrknokid == 8 | wrknokid == 9 ;
replace wrkbaby = . wrkbaby == 0 | wrkbaby == 8 | wrkbaby == 9 ;
replace wrksch = . wrksch == 0 | wrksch == 8 | wrksch == 9 ;
replace wrkgrown = . wrkgrown == 0 | wrkgrown == 8 | wrkgrown == 9 ;
replace daycare1 = . daycare1 == 0 | daycare1 == 8 | daycare1 == 9 ;
replace daycare2 = . daycare2 == 0 | daycare2 == 8 | daycare2 == 9 ;
replace daycare3 = . daycare3 == 0 | daycare3 == 8 | daycare3 == 9 ;
replace daycare4 = . daycare4 == 0 | daycare4 == 8 | daycare4 == 9 ;
replace daycare5 = . daycare5 == 0 | daycare5 == 8 | daycare5 == 9 ;
replace femarry = . femarry == 0 | femarry == 8 | femarry == 9 ;
replace memarry = . memarry == 0 | memarry == 8 | memarry == 9 ;
replace marhappy = . marhappy == 0 | marhappy == 8 | marhappy == 9 ;
replace marfree = . marfree == 0 | marfree == 8 | marfree == 9 ;
replace marfin = . marfin == 0 | marfin == 8 | marfin == 9 ;
replace markids = . markids == 0 | markids == 8 | markids == 9 ;
replace marnomar = . marnomar == 0 | marnomar == 8 | marnomar == 9 ;
replace marlegit = . marlegit == 0 | marlegit == 8 | marlegit == 9 ;
replace marmakid = . marmakid == 0 | marmakid == 8 | marmakid == 9 ;
replace marpakid = . marpakid == 0 | marpakid == 8 | marpakid == 9 ;
replace mardiv = . mardiv == 0 | mardiv == 8 | mardiv == 9 ;
replace marhomo = . marhomo == 0 | marhomo == 8 | marhomo == 9 ;
replace numkids = . numkids == -1 | numkids == 8 | numkids == 9 ;
replace nokids = . nokids == 0 | nokids == 8 | nokids == 9 ;
replace onekid = . onekid == 0 | onekid == 8 | onekid == 9 ;
replace twokids = . twokids == 0 | twokids == 8 | twokids == 9 ;
replace threkids = . threkids == 0 | threkids == 8 | threkids == 9 ;
replace fourkids = . fourkids == 0 | fourkids == 8 | fourkids == 9 ;
replace kidtrble = . kidtrble == 0 | kidtrble == 8 | kidtrble == 9 ;
replace kidjoy = . kidjoy == 0 | kidjoy == 8 | kidjoy == 9 ;
replace kidnofre = . kidnofre == 0 | kidnofre == 8 | kidnofre == 9 ;
replace kidless = . kidless == 0 | kidless == 8 | kidless == 9 ;
replace kidfin = . kidfin == 0 | kidfin == 8 | kidfin == 9 ;
replace kidempty = . kidempty == 0 | kidempty == 8 | kidempty == 9 ;
replace divnow = . divnow == 0 | divnow == 8 | divnow == 9 ;
replace divnokid = . divnokid == 0 | divnokid == 8 | divnokid == 9 ;
replace divifkid = . divifkid == 0 | divifkid == 8 | divifkid == 9 ;
replace divkids = . divkids == 0 | divkids == 8 | divkids == 9 ;
replace divwife = . divwife == 0 | divwife == 8 | divwife == 9 ;
replace divhubby = . divhubby == 0 | divhubby == 8 | divhubby == 9 ;
replace mawork14 = . mawork14 == 0 | mawork14 == 8 | mawork14 == 9 ;
replace evdiv = . evdiv == 0 | evdiv == 9 ;
replace spevdiv = . spevdiv == 0 | spevdiv == 8 | spevdiv == 9 ;
replace cohabit = . cohabit == 0 | cohabit == 9 ;
replace rwrknokd = . rwrknokd == 0 | rwrknokd == 8 | rwrknokd == 9 ;
replace rwrkbaby = . rwrkbaby == 0 | rwrkbaby == 8 | rwrkbaby == 9 ;
replace rwrksch = . rwrksch == 0 | rwrksch == 8 | rwrksch == 9 ;
replace rwrkgrwn = . rwrkgrwn == 0 | rwrkgrwn == 8 | rwrkgrwn == 9 ;
replace earnsmor = . earnsmor == 0 | earnsmor == 8 | earnsmor == 9 ;
replace fewrksup = . fewrksup == 0 | fewrksup == 8 | fewrksup == 9 ;
replace hubbywk1 = . hubbywk1 == 0 | hubbywk1 == 8 | hubbywk1 == 9 ;
replace mrmom = . mrmom == 0 | mrmom == 8 | mrmom == 9 ;
replace meovrwrk = . meovrwrk == 0 | meovrwrk == 8 | meovrwrk == 9 ;
replace singlpar = . singlpar == 0 | singlpar == 8 | singlpar == 9 ;
replace cohabok = . cohabok == 0 | cohabok == 8 | cohabok == 9 ;
replace cohabfst = . cohabfst == 0 | cohabfst == 8 | cohabfst == 9 ;
replace divbest = . divbest == 0 | divbest == 8 | divbest == 9 ;
replace divifkd1 = . divifkd1 == 0 | divifkd1 == 8 | divifkd1 == 9 ;
replace divnokd1 = . divnokd1 == 0 | divnokd1 == 8 | divnokd1 == 9 ;
replace livnowed = . livnowed == 0 | livnowed == 8 | livnowed == 9 ;
replace mapaid = . mapaid == 0 | mapaid == 8 | mapaid == 9 ;
replace chldcare = . chldcare == 0 | chldcare == 8 | chldcare == 9 ;
replace abchoose = . abchoose == 0 | abchoose == 8 | abchoose == 9 ;
replace teensex1 = . teensex1 == 0 | teensex1 == 8 | teensex1 == 9 ;
replace sexhar = . sexhar == 0 | sexhar == 8 | sexhar == 9 ;
replace fambudgt = . fambudgt == 0 | fambudgt == 8 | fambudgt == 9 ;
replace laundry = . laundry == 0 | laundry == 8 | laundry == 9 ;
replace repairs = . repairs == 0 | repairs == 8 | repairs == 9 ;
replace caresick = . caresick == 0 | caresick == 8 | caresick == 9 ;
replace shopfood = . shopfood == 0 | shopfood == 8 | shopfood == 9 ;
replace dinner = . dinner == 0 | dinner == 8 | dinner == 9 ;
replace spwknokd = . spwknokd == 0 | spwknokd == 8 | spwknokd == 9 ;
replace spwkbaby = . spwkbaby == 0 | spwkbaby == 8 | spwkbaby == 9 ;
replace spwrksch = . spwrksch == 0 | spwrksch == 8 | spwrksch == 9 ;
replace spwkgrwn = . spwkgrwn == 0 | spwkgrwn == 8 | spwkgrwn == 9 ;
replace mehhwork = . mehhwork == 0 | mehhwork == 8 | mehhwork == 9 ;
replace mekdcare = . mekdcare == 0 | mekdcare == 8 | mekdcare == 9 ;
replace laundry1 = . laundry1 == 0 | laundry1 == 8 | laundry1 == 9 ;
replace repairs1 = . repairs1 == 0 | repairs1 == 8 | repairs1 == 9 ;
replace caresik1 = . caresik1 == 0 | caresik1 == 8 | caresik1 == 9 ;
replace shop1 = . shop1 == 0 | shop1 == 8 | shop1 == 9 ;
replace clean1 = . clean1 == 0 | clean1 == 8 | clean1 == 9 ;
replace cooking1 = . cooking1 == 0 | cooking1 == 8 | cooking1 == 9 ;
replace rhhwork = . rhhwork == -1 | rhhwork == 98 | rhhwork == 99 ;
replace sphhwork = . sphhwork == -1 | sphhwork == 98 | sphhwork == 99 ;
replace hhwkfair = . hhwkfair == 0 | hhwkfair == 8 | hhwkfair == 9 ;
replace hhwkdis = . hhwkdis == 0 | hhwkdis == 8 | hhwkdis == 9 ;
replace deckids = . deckids == 0 | deckids == 8 | deckids == 9 ;
replace spborn = . spborn == 0 | spborn == 8 | spborn == 9 ;
replace weekend = . weekend == 0 | weekend == 8 | weekend == 9 ;
replace buythngs = . buythngs == 0 | buythngs == 8 | buythngs == 9 ;
replace timehome = . timehome == 0 | timehome == 8 | timehome == 9 ;
replace strsshme = . strsshme == 0 | strsshme == 8 | strsshme == 9 ;
replace timework = . timework == 0 | timework == 8 | timework == 9 ;
replace strsswrk = . strsswrk == 0 | strsswrk == 8 | strsswrk == 9 ;
replace tiredhme = . tiredhme == 0 | tiredhme == 8 | tiredhme == 9 ;
replace jobvsfam = . jobvsfam == 0 | jobvsfam == 8 | jobvsfam == 9 ;
replace tiredwrk = . tiredwrk == 0 | tiredwrk == 8 | tiredwrk == 9 ;
replace famvswrk = . famvswrk == 0 | famvswrk == 8 | famvswrk == 9 ;
replace happy7 = . happy7 == 0 | happy7 == 8 | happy7 == 9 ;
replace satjob7 = . satjob7 == 0 | satjob7 == 8 | satjob7 == 9 ;
replace satfam7 = . satfam7 == 0 | satfam7 == 8 | satfam7 == 9 ;
replace fewknokd = . fewknokd == 0 | fewknokd == 8 | fewknokd == 9 ;
replace twoincs1 = . twoincs1 == 0 | twoincs1 == 8 | twoincs1 == 9 ;
replace earnshh = . earnshh == 0 | earnshh == 8 | earnshh == 9 ;
replace SSFCHILD = . SSFCHILD == 0 | SSFCHILD == 8 | SSFCHILD == 9 ;
replace SSMCHILD = . SSMCHILD == 0 | SSMCHILD == 8 | SSMCHILD == 9 ;
replace KIDFINBU = . KIDFINBU == 0 | KIDFINBU == 8 | KIDFINBU == 9 ;
replace KIDJOB = . KIDJOB == 0 | KIDJOB == 8 | KIDJOB == 9 ;
replace KIDSOCST = . KIDSOCST == 0 | KIDSOCST == 8 | KIDSOCST == 9 ;
replace ELDERSUP = . ELDERSUP == 0 | ELDERSUP == 8 | ELDERSUP == 9 ;
replace PAIDLV = . PAIDLV == 0 | PAIDLV == 8 | PAIDLV == 9 ;
replace PAIDLV1 = . PAIDLV1 == 0 | PAIDLV1 == 98 | PAIDLV1 == 99 ;
replace PAIDLVPY = . PAIDLVPY == 0 | PAIDLVPY == 8 | PAIDLVPY == 9 ;
replace PAIDLVDV = . PAIDLVDV == 0 | PAIDLVDV == 8 | PAIDLVDV == 9 ;
replace FAMWKBST = . FAMWKBST == 0 | FAMWKBST == 8 | FAMWKBST == 9 ;
replace FAMWKLST = . FAMWKLST == 0 | FAMWKLST == 8 | FAMWKLST == 9 ;
replace CAREPROV = . CAREPROV == 0 | CAREPROV == 8 | CAREPROV == 9 ;
replace CARECOST = . CARECOST == 0 | CARECOST == 8 | CARECOST == 9 ;
replace ELDHELP = . ELDHELP == 0 | ELDHELP == 8 | ELDHELP == 9 ;
replace ELDCOST = . ELDCOST == 0 | ELDCOST == 8 | ELDCOST == 9 ;
replace HHCLEAN1 = . HHCLEAN1 == 0 | HHCLEAN1 == 8 | HHCLEAN1 == 9 ;
replace WKNDACT = . WKNDACT == 0 | WKNDACT == 8 | WKNDACT == 9 ;
replace TIREDHM1 = . TIREDHM1 == -1 | TIREDHM1 == 8 | TIREDHM1 == 9 ;
replace JOBVSFA1 = . JOBVSFA1 == -1 | JOBVSFA1 == 8 | JOBVSFA1 == 9 ;
replace TIREDWK1 = . TIREDWK1 == -1 | TIREDWK1 == 8 | TIREDWK1 == 9 ;
replace FAMVSWK1 = . FAMVSWK1 == -1 | FAMVSWK1 == 8 | FAMVSWK1 == 9 ;
replace WKKIDSCL = . WKKIDSCL == 0 | WKKIDSCL == 8 | WKKIDSCL == 9 ;
replace WKYNGSCL = . WKYNGSCL == 0 | WKYNGSCL == 8 | WKYNGSCL == 9 ;
replace WKKIDSCS = . WKKIDSCS == 0 | WKKIDSCS == 8 | WKKIDSCS == 9 ;
replace WKYNGSCS = . WKYNGSCS == 0 | WKYNGSCS == 8 | WKYNGSCS == 9 ;
replace RFAMLOOK = . RFAMLOOK == -1 | RFAMLOOK == 98 | RFAMLOOK == 99 ;
replace SPFALOOK = . SPFALOOK == -1 | SPFALOOK == 98 | SPFALOOK == 99 ;
replace SPLIVE = . SPLIVE == -1 | SPLIVE == 98 | SPLIVE == 99 ;
replace timepdwk = . timepdwk == 0 | timepdwk == 8 | timepdwk == 9 ;
replace timehhwk = . timehhwk == 0 | timehhwk == 8 | timehhwk == 9 ;
replace timefam = . timefam == 0 | timefam == 8 | timefam == 9 ;
replace timefrnd = . timefrnd == 0 | timefrnd == 8 | timefrnd == 9 ;
replace timeleis = . timeleis == 0 | timeleis == 8 | timeleis == 9 ;
replace timerelx = . timerelx == 0 | timerelx == 8 | timerelx == 9 ;
replace wrkearn = . wrkearn == 0 | wrkearn == 8 | wrkearn == 9 ;
replace wrkenjoy = . wrkenjoy == 0 | wrkenjoy == 8 | wrkenjoy == 9 ;
replace wrkimp = . wrkimp == 0 | wrkimp == 8 | wrkimp == 9 ;
replace hwduties = . hwduties == 0 | hwduties == 8 | hwduties == 9 ;
replace yrsfirm = . yrsfirm == 0 | yrsfirm == 8 | yrsfirm == 9 ;
replace dowell = . dowell == 0 | dowell == 8 | dowell == 9 ;
replace expernc = . expernc == 0 | expernc == 8 | expernc == 9 ;
replace paysame = . paysame == 0 | paysame == 8 | paysame == 9 ;
replace ageemp = . ageemp == 0 | ageemp == 8 | ageemp == 9 ;
replace sexemp = . sexemp == 0 | sexemp == 8 | sexemp == 9 ;
replace famresp = . famresp == 0 | famresp == 8 | famresp == 9 ;
replace educemp = . educemp == 0 | educemp == 8 | educemp == 9 ;
replace dk = . dk == 0 | dk == 8 | dk == 9 ;
replace bosswrks = . bosswrks == 0 | bosswrks == 8 | bosswrks == 9 ;
replace strngun = . strngun == 0 | strngun == 8 | strngun == 9 ;
replace secjob = . secjob == 0 | secjob == 8 | secjob == 9 ;
replace hiinc = . hiinc == 0 | hiinc == 8 | hiinc == 9 ;
replace promotn = . promotn == 0 | promotn == 8 | promotn == 9 ;
replace leisure = . leisure == 0 | leisure == 8 | leisure == 9 ;
replace intjob = . intjob == 0 | intjob == 8 | intjob == 9 ;
replace wrkindp = . wrkindp == 0 | wrkindp == 8 | wrkindp == 9 ;
replace hlpoths = . hlpoths == 0 | hlpoths == 8 | hlpoths == 9 ;
replace hlpsoc = . hlpsoc == 0 | hlpsoc == 8 | hlpsoc == 9 ;
replace flexhrs = . flexhrs == 0 | flexhrs == 8 | flexhrs == 9 ;
replace unpeople = . unpeople == 0 | unpeople == 8 | unpeople == 9 ;
replace unmoney = . unmoney == 0 | unmoney == 8 | unmoney == 9 ;
replace unslfcon = . unslfcon == 0 | unslfcon == 8 | unslfcon == 9 ;
replace unrespct = . unrespct == 0 | unrespct == 8 | unrespct == 9 ;
replace unfamten = . unfamten == 0 | unfamten == 8 | unfamten == 9 ;
replace unjobexp = . unjobexp == 0 | unjobexp == 8 | unjobexp == 9 ;
replace unbored = . unbored == 0 | unbored == 8 | unbored == 9 ;
replace undk = . undk == 0 | undk == 8 | undk == 9 ;
replace empself = . empself == 0 | empself == 8 | empself == 9 ;
replace smallbig = . smallbig == 0 | smallbig == 8 | smallbig == 9 ;
replace indusoth = . indusoth == 0 | indusoth == 8 | indusoth == 9 ;
replace privgovt = . privgovt == 0 | privgovt == 8 | privgovt == 9 ;
replace workweek = . workweek == 0 | workweek == 8 | workweek == 9 ;
replace wantjob = . wantjob == 0 | wantjob == 8 | wantjob == 9 ;
replace findjob = . findjob == 0 | findjob == 8 | findjob == 9 ;
replace iwrkhard = . iwrkhard == 0 | iwrkhard == 8 | iwrkhard == 9 ;
replace hrsmoney = . hrsmoney == 0 | hrsmoney == 8 | hrsmoney == 9 ;
replace ryrsfirm = . ryrsfirm == 0 | ryrsfirm == 8 | ryrsfirm == 9 ;
replace rdowell = . rdowell == 0 | rdowell == 8 | rdowell == 9 ;
replace rpaysame = . rpaysame == 0 | rpaysame == 8 | rpaysame == 9 ;
replace rexpernc = . rexpernc == 0 | rexpernc == 8 | rexpernc == 9 ;
replace rageemp = . rageemp == 0 | rageemp == 8 | rageemp == 9 ;
replace rfamresp = . rfamresp == 0 | rfamresp == 8 | rfamresp == 9 ;
replace reducemp = . reducemp == 0 | reducemp == 8 | reducemp == 9 ;
replace rdk = . rdk == 0 | rdk == 8 | rdk == 9 ;
replace rsecjob = . rsecjob == 0 | rsecjob == 8 | rsecjob == 9 ;
replace rhiinc = . rhiinc == 0 | rhiinc == 8 | rhiinc == 9 ;
replace rpromotn = . rpromotn == 0 | rpromotn == 8 | rpromotn == 9 ;
replace rleisure = . rleisure == 0 | rleisure == 8 | rleisure == 9 ;
replace rintjob = . rintjob == 0 | rintjob == 8 | rintjob == 9 ;
replace rwrkindp = . rwrkindp == 0 | rwrkindp == 8 | rwrkindp == 9 ;
replace rhlpoths = . rhlpoths == 0 | rhlpoths == 8 | rhlpoths == 9 ;
replace rhlpsoc = . rhlpsoc == 0 | rhlpsoc == 8 | rhlpsoc == 9 ;
replace rflexhrs = . rflexhrs == 0 | rflexhrs == 8 | rflexhrs == 9 ;
replace xhaustn = . xhaustn == 0 | xhaustn == 8 | xhaustn == 9 ;
replace physwrk = . physwrk == 0 | physwrk == 8 | physwrk == 9 ;
replace stress = . stress == 0 | stress == 8 | stress == 9 ;
replace boredom = . boredom == 0 | boredom == 8 | boredom == 9 ;
replace danger = . danger == 0 | danger == 8 | danger == 9 ;
replace unhlthy = . unhlthy == 0 | unhlthy == 8 | unhlthy == 9 ;
replace unpleznt = . unpleznt == 0 | unpleznt == 8 | unpleznt == 9 ;
replace planwrk = . planwrk == 0 | planwrk == 8 | planwrk == 9 ;
replace findwork = . findwork == 0 | findwork == 8 | findwork == 9 ;
replace bossemps = . bossemps == 0 | bossemps == 8 | bossemps == 9 ;
replace cowrkers = . cowrkers == 0 | cowrkers == 8 | cowrkers == 9 ;
replace jobsat = . jobsat == 0 | jobsat == 8 | jobsat == 9 ;
replace supnum = . supnum == 0 | supnum == 998 | supnum == 999 ;
replace moonlite = . moonlite == 0 | moonlite == 8 | moonlite == 9 ;
replace othhrs = . othhrs == 0 | othhrs == 98 | othhrs == 99 ;
replace numsites = . numsites == 0 | numsites == 8 | numsites == 9 ;
replace localnum = . localnum == 0 | localnum == 8 | localnum == 9 ;
replace totalnum = . totalnum == 0 | totalnum == 8 | totalnum == 9 ;
replace employer = . employer == 0 | employer == 8 | employer == 9 ;
replace numemply = . numemply == 0 | numemply == 8 | numemply == 9 ;
replace paydojob = . paydojob == 0 | paydojob == 8 | paydojob == 9 ;
replace payfam = . payfam == 0 | payfam == 8 | payfam == 9 ;
replace payeduc = . payeduc == 0 | payeduc == 8 | payeduc == 9 ;
replace paytime = . paytime == 0 | paytime == 8 | paytime == 9 ;
replace techjobs = . techjobs == 0 | techjobs == 8 | techjobs == 9 ;
replace techwork = . techwork == 0 | techwork == 8 | techwork == 9 ;
replace wantjob1 = . wantjob1 == 0 | wantjob1 == 8 | wantjob1 == 9 ;
replace worknow = . worknow == 0 | worknow == 8 | worknow == 9 ;
replace sethours = . sethours == 0 | sethours == 8 | sethours == 9 ;
replace placewrk = . placewrk == 0 | placewrk == 8 | placewrk == 9 ;
replace wktenure = . wktenure == 0 | wktenure == 8 | wktenure == 9 ;
replace useskill = . useskill == 0 | useskill == 8 | useskill == 9 ;
replace edcskill = . edcskill == 0 | edcskill == 8 | edcskill == 9 ;
replace jobskill = . jobskill == 0 | jobskill == 8 | jobskill == 9 ;
replace helporg1 = . helporg1 == 0 | helporg1 == 8 | helporg1 == 9 ;
replace prideorg = . prideorg == 0 | prideorg == 8 | prideorg == 9 ;
replace chngwork = . chngwork == 0 | chngwork == 8 | chngwork == 9 ;
replace stayorg3 = . stayorg3 == 0 | stayorg3 == 8 | stayorg3 == 9 ;
replace proudwrk = . proudwrk == 0 | proudwrk == 8 | proudwrk == 9 ;
replace absent = . absent == 0 | absent == 8 | absent == 9 ;
replace leavejob = . leavejob == 0 | leavejob == 8 | leavejob == 9 ;
replace worryjob = . worryjob == 0 | worryjob == 8 | worryjob == 9 ;
replace evjob = . evjob == 0 | evjob == 8 | evjob == 9 ;
replace yrjobend = . yrjobend == -1 | yrjobend == 9998 | yrjobend == 9999 ;
replace whyjbend = . whyjbend == -1 | whyjbend == 0 ;
replace wantjob2 = . wantjob2 == 0 | wantjob2 == 8 | wantjob2 == 9 ;
replace getjob = . getjob == 0 | getjob == 8 | getjob == 9 ;
replace lookjob = . lookjob == 0 | lookjob == 8 | lookjob == 9 ;
replace pubagncy = . pubagncy == 0 | pubagncy == 8 | pubagncy == 9 ;
replace priagncy = . priagncy == 0 | priagncy == 8 | priagncy == 9 ;
replace wantads = . wantads == 0 | wantads == 8 | wantads == 9 ;
replace adforjob = . adforjob == 0 | adforjob == 8 | adforjob == 9 ;
replace appemps = . appemps == 0 | appemps == 8 | appemps == 9 ;
replace askhelp = . askhelp == 0 | askhelp == 8 | askhelp == 9 ;
replace econsup = . econsup == 0 | econsup == 8 | econsup == 9 ;
replace selfemp1 = . selfemp1 == 0 | selfemp1 == 8 | selfemp1 == 9 ;
replace selfemp2 = . selfemp2 == 0 | selfemp2 == 8 | selfemp2 == 9 ;
replace unjobsec = . unjobsec == 0 | unjobsec == 8 | unjobsec == 9 ;
replace unbetter = . unbetter == 0 | unbetter == 8 | unbetter == 9 ;
replace curwkpay = . curwkpay == 0 | curwkpay == 9 ;
replace rimpskls = . rimpskls == 0 | rimpskls == 8 | rimpskls == 9 ;
replace dailywrk = . dailywrk == 0 | dailywrk == 8 | dailywrk == 9 ;
replace timeoff = . timeoff == 0 | timeoff == 8 | timeoff == 9 ;
replace jbintfam = . jbintfam == 0 | jbintfam == 8 | jbintfam == 9 ;
replace famintjb = . famintjb == 0 | famintjb == 8 | famintjb == 9 ;
replace newjob = . newjob == 0 | newjob == 8 | newjob == 9 ;
replace jbtrain = . jbtrain == 0 | jbtrain == 8 | jbtrain == 9 ;
replace jobeasy = . jobeasy == 0 | jobeasy == 8 | jobeasy == 9 ;
replace replaceu = . replaceu == 0 | replaceu == 8 | replaceu == 9 ;
replace nounemp1 = . nounemp1 == 0 | nounemp1 == 8 | nounemp1 == 9 ;
replace nounemp2 = . nounemp2 == 0 | nounemp2 == 8 | nounemp2 == 9 ;
replace nounemp3 = . nounemp3 == 0 | nounemp3 == 8 | nounemp3 == 9 ;
replace nounemp4 = . nounemp4 == 0 | nounemp4 == 8 | nounemp4 == 9 ;
replace otherwrk = . otherwrk == 0 | otherwrk == 8 | otherwrk == 9 ;
replace skltrain = . skltrain == 0 | skltrain == 8 | skltrain == 9 ;
replace spwrkgvt = . spwrkgvt == 0 | spwrkgvt == 8 | spwrkgvt == 9 ;
replace hapunhap = . hapunhap == 0 | hapunhap == 8 | hapunhap == 9 ;
replace stiffpun = . stiffpun == 0 | stiffpun == 8 | stiffpun == 9 ;
replace deathpen = . deathpen == 0 | deathpen == 8 | deathpen == 9 ;
replace premars1 = . premars1 == 0 | premars1 == 8 | premars1 == 9 ;
replace xmarsex1 = . xmarsex1 == 0 | xmarsex1 == 8 | xmarsex1 == 9 ;
replace homosex1 = . homosex1 == 0 | homosex1 == 8 | homosex1 == 9 ;
replace abdefct1 = . abdefct1 == 0 | abdefct1 == 8 | abdefct1 == 9 ;
replace abpoor1 = . abpoor1 == 0 | abpoor1 == 8 | abpoor1 == 9 ;
replace abdefctw = . abdefctw == 0 | abdefctw == 8 | abdefctw == 9 ;
replace abpoorw = . abpoorw == 0 | abpoorw == 8 | abpoorw == 9 ;
replace taxcheat = . taxcheat == 0 | taxcheat == 8 | taxcheat == 9 ;
replace govcheat = . govcheat == 0 | govcheat == 8 | govcheat == 9 ;
replace concong = . concong == 0 | concong == 8 | concong == 9 ;
replace conbiz = . conbiz == 0 | conbiz == 8 | conbiz == 9 ;
replace congovt = . congovt == 0 | congovt == 8 | congovt == 9 ;
replace conchurh = . conchurh == 0 | conchurh == 8 | conchurh == 9 ;
replace concourt = . concourt == 0 | concourt == 8 | concourt == 9 ;
replace conschls = . conschls == 0 | conschls == 8 | conschls == 9 ;
replace polsgod = . polsgod == 0 | polsgod == 8 | polsgod == 9 ;
replace clergvte = . clergvte == 0 | clergvte == 8 | clergvte == 9 ;
replace religpub = . religpub == 0 | religpub == 8 | religpub == 9 ;
replace clerggov = . clerggov == 0 | clerggov == 8 | clerggov == 9 ;
replace churhpow = . churhpow == 0 | churhpow == 8 | churhpow == 9 ;
replace godchnge = . godchnge == 0 | godchnge == 8 | godchnge == 9 ;
replace afterlif = . afterlif == 0 | afterlif == 8 | afterlif == 9 ;
replace devil = . devil == 0 | devil == 8 | devil == 9 ;
replace heaven = . heaven == 0 | heaven == 8 | heaven == 9 ;
replace hell = . hell == 0 | hell == 8 | hell == 9 ;
replace miracles = . miracles == 0 | miracles == 8 | miracles == 9 ;
replace bible1 = . bible1 == 0 | bible1 == 8 | bible1 == 9 ;
replace theism = . theism == 0 | theism == 8 | theism == 9 ;
replace fatalism = . fatalism == 0 | fatalism == 8 | fatalism == 9 ;
replace godmeans = . godmeans == 0 | godmeans == 8 | godmeans == 9 ;
replace nihilism = . nihilism == 0 | nihilism == 8 | nihilism == 9 ;
replace predeter = . predeter == 0 | predeter == 8 | predeter == 9 ;
replace egomeans = . egomeans == 0 | egomeans == 8 | egomeans == 9 ;
replace ownfate = . ownfate == 0 | ownfate == 8 | ownfate == 9 ;
replace relexper = . relexper == 0 | relexper == 8 | relexper == 9 ;
replace marelkid = . marelkid == 0 | marelkid == 8 | marelkid == 9 ;
replace madenkid = . madenkid == 0 | madenkid == 99998 | madenkid == 99999 ;
replace parelkid = . parelkid == 0 | parelkid == 8 | parelkid == 9 ;
replace padenkid = . padenkid == 0 | padenkid == 99998 | padenkid == 99999 ;
replace religkid = . religkid == 0 | religkid == 8 | religkid == 9 ;
replace denkid = . denkid == 0 | denkid == 99998 | denkid == 99999 ;
replace religsp = . religsp == 0 | religsp == 8 | religsp == 9 ;
replace densp = . densp == 0 | densp == 99998 | densp == 99999 ;
replace attendma = . attendma == 0 | attendma == 98 | attendma == 99 ;
replace attendpa = . attendpa == 0 | attendpa == 98 | attendpa == 99 ;
replace attend12 = . attend12 == 0 | attend12 == 98 | attend12 == 99 ;
replace prayfreq = . prayfreq == 0 | prayfreq == 98 | prayfreq == 99 ;
replace relactiv = . relactiv == 0 | relactiv == 98 | relactiv == 99 ;
replace RELACTIV1 = . RELACTIV1 == 0 | RELACTIV1 == 98 | RELACTIV1 == 99 ;
replace feelrel = . feelrel == 0 | feelrel == 8 | feelrel == 9 ;
replace schlpray = . schlpray == 0 | schlpray == 8 | schlpray == 9 ;
replace godright = . godright == 0 | godright == 8 | godright == 9 ;
replace socright = . socright == 0 | socright == 8 | socright == 9 ;
replace perright = . perright == 0 | perright == 8 | perright == 9 ;
replace antirel = . antirel == 0 | antirel == 8 | antirel == 9 ;
replace befair = . befair == 0 | befair == 8 | befair == 9 ;
replace cantrust = . cantrust == 0 | cantrust == 8 | cantrust == 9 ;
replace trustsci = . trustsci == 0 | trustsci == 8 | trustsci == 9 ;
replace religcon = . religcon == 0 | religcon == 8 | religcon == 9 ;
replace religint = . religint == 0 | religint == 8 | religint == 9 ;
replace religinf = . religinf == 0 | religinf == 8 | religinf == 9 ;
replace volwkpol = . volwkpol == 0 | volwkpol == 8 | volwkpol == 9 ;
replace volwkchr = . volwkchr == 0 | volwkchr == 8 | volwkchr == 9 ;
replace volwkrel = . volwkrel == 0 | volwkrel == 8 | volwkrel == 9 ;
replace volwkoth = . volwkoth == 0 | volwkoth == 8 | volwkoth == 9 ;
replace reltruth = . reltruth == 0 | reltruth == 8 | reltruth == 9 ;
replace carright = . carright == 0 | carright == 8 | carright == 9 ;
replace cardo = . cardo == 0 | cardo == 8 | cardo == 9 ;
replace GEOMOBIL = . GEOMOBIL == 0 | GEOMOBIL == 8 | GEOMOBIL == 9 ;
replace RELGRPEQ = . RELGRPEQ == 0 | RELGRPEQ == 8 | RELGRPEQ == 9 ;
replace RSPCTREL = . RSPCTREL == 0 | RSPCTREL == 8 | RSPCTREL == 9 ;
replace RELMARRY = . RELMARRY == 0 | RELMARRY == 8 | RELMARRY == 9 ;
replace RELCAND = . RELCAND == 0 | RELCAND == 8 | RELCAND == 9 ;
replace RELEXT1 = . RELEXT1 == 0 | RELEXT1 == 8 | RELEXT1 == 9 ;
replace RELEXT2 = . RELEXT2 == 0 | RELEXT2 == 8 | RELEXT2 == 9 ;
replace REINCAR = . REINCAR == 0 | REINCAR == 8 | REINCAR == 9 ;
replace NIRVANA = . NIRVANA == 0 | NIRVANA == 8 | NIRVANA == 9 ;
replace ANCESTRS = . ANCESTRS == 0 | ANCESTRS == 8 | ANCESTRS == 9 ;
replace MYWAYGOD = . MYWAYGOD == 0 | MYWAYGOD == 8 | MYWAYGOD == 9 ;
replace RELOBJCT = . RELOBJCT == 0 | RELOBJCT == 8 | RELOBJCT == 9 ;
replace VISTHOLY = . VISTHOLY == 0 | VISTHOLY == 8 | VISTHOLY == 9 ;
replace RELSPRT = . RELSPRT == 0 | RELSPRT == 8 | RELSPRT == 9 ;
replace PAXHAPPY = . PAXHAPPY == 0 | PAXHAPPY == 8 | PAXHAPPY == 9 ;
replace MAKEFRND = . MAKEFRND == 0 | MAKEFRND == 8 | MAKEFRND == 9 ;
replace COMFORT = . COMFORT == 0 | COMFORT == 8 | COMFORT == 9 ;
replace RIGHTPEO = . RIGHTPEO == 0 | RIGHTPEO == 8 | RIGHTPEO == 9 ;
replace PERSCRFC = . PERSCRFC == 0 | PERSCRFC == 8 | PERSCRFC == 9 ;
replace obeythnk = . obeythnk == 0 | obeythnk == 8 | obeythnk == 9 ;
replace privent = . privent == 0 | privent == 8 | privent == 9 ;
replace postmat1 = . postmat1 == 0 | postmat1 == 8 | postmat1 == 9 ;
replace postmat2 = . postmat2 == 0 | postmat2 == 8 | postmat2 == 9 ;
replace scifaith = . scifaith == 0 | scifaith == 8 | scifaith == 9 ;
replace harmgood = . harmgood == 0 | harmgood == 8 | harmgood == 9 ;
replace sciworse = . sciworse == 0 | sciworse == 8 | sciworse == 9 ;
replace scigrn = . scigrn == 0 | scigrn == 8 | scigrn == 9 ;
replace grnecon = . grnecon == 0 | grnecon == 8 | grnecon == 9 ;
replace harmsgrn = . harmsgrn == 0 | harmsgrn == 8 | harmsgrn == 9 ;
replace anrights = . anrights == 0 | anrights == 8 | anrights == 9 ;
replace resnatur = . resnatur == 0 | resnatur == 8 | resnatur == 9 ;
replace grnprog = . grnprog == 0 | grnprog == 8 | grnprog == 9 ;
replace naturpax = . naturpax == 0 | naturpax == 8 | naturpax == 9 ;
replace grwthelp = . grwthelp == 0 | grwthelp == 8 | grwthelp == 9 ;
replace antests = . antests == 0 | antests == 8 | antests == 9 ;
replace naturwar = . naturwar == 0 | naturwar == 8 | naturwar == 9 ;
replace grwtharm = . grwtharm == 0 | grwtharm == 8 | grwtharm == 9 ;
replace naturgod = . naturgod == 0 | naturgod == 8 | naturgod == 9 ;
replace grnprice = . grnprice == 0 | grnprice == 8 | grnprice == 9 ;
replace grntaxes = . grntaxes == 0 | grntaxes == 8 | grntaxes == 9 ;
replace grnsol = . grnsol == 0 | grnsol == 8 | grnsol == 9 ;
replace toodifme = . toodifme == 0 | toodifme == 8 | toodifme == 9 ;
replace ihlpgrn = . ihlpgrn == 0 | ihlpgrn == 8 | ihlpgrn == 9 ;
replace scitest1 = . scitest1 == 0 | scitest1 == 8 | scitest1 == 9 ;
replace scitest2 = . scitest2 == 0 | scitest2 == 8 | scitest2 == 9 ;
replace scitest3 = . scitest3 == 0 | scitest3 == 8 | scitest3 == 9 ;
replace scitest4 = . scitest4 == 0 | scitest4 == 8 | scitest4 == 9 ;
replace scitest5 = . scitest5 == 0 | scitest5 == 8 | scitest5 == 9 ;
replace grntest1 = . grntest1 == 0 | grntest1 == 8 | grntest1 == 9 ;
replace grntest2 = . grntest2 == 0 | grntest2 == 8 | grntest2 == 9 ;
replace grntest3 = . grntest3 == 0 | grntest3 == 8 | grntest3 == 9 ;
replace grntest4 = . grntest4 == 0 | grntest4 == 8 | grntest4 == 9 ;
replace grntest5 = . grntest5 == 0 | grntest5 == 8 | grntest5 == 9 ;
replace grntest6 = . grntest6 == 0 | grntest6 == 8 | grntest6 == 9 ;
replace grntest7 = . grntest7 == 0 | grntest7 == 8 | grntest7 == 9 ;
replace carsgen = . carsgen == 0 | carsgen == 8 | carsgen == 9 ;
replace carsfam = . carsfam == 0 | carsfam == 8 | carsfam == 9 ;
replace carsten = . carsten == 0 | carsten == 8 | carsten == 9 ;
replace nukegen = . nukegen == 0 | nukegen == 8 | nukegen == 9 ;
replace nukefam = . nukefam == 0 | nukefam == 8 | nukefam == 9 ;
replace indusgen = . indusgen == 0 | indusgen == 8 | indusgen == 9 ;
replace indusfam = . indusfam == 0 | indusfam == 8 | indusfam == 9 ;
replace chemgen = . chemgen == 0 | chemgen == 8 | chemgen == 9 ;
replace chemfam = . chemfam == 0 | chemfam == 8 | chemfam == 9 ;
replace watergen = . watergen == 0 | watergen == 8 | watergen == 9 ;
replace waterfam = . waterfam == 0 | waterfam == 8 | waterfam == 9 ;
replace tempgen = . tempgen == 0 | tempgen == 8 | tempgen == 9 ;
replace tempfam = . tempfam == 0 | tempfam == 8 | tempfam == 9 ;
replace pubdecid = . pubdecid == 0 | pubdecid == 8 | pubdecid == 9 ;
replace busdecid = . busdecid == 0 | busdecid == 8 | busdecid == 9 ;
replace USDOENUF = . USDOENUF == 0 | USDOENUF == 8 | USDOENUF == 9 ;
replace recycle = . recycle == 0 | recycle == 8 | recycle == 9 ;
replace chemfree = . chemfree == 0 | chemfree == 8 | chemfree == 9 ;
replace nomeat = . nomeat == 0 | nomeat == 8 | nomeat == 9 ;
replace drivless = . drivless == 0 | drivless == 8 | drivless == 9 ;
replace grngroup = . grngroup == 0 | grngroup == 8 | grngroup == 9 ;
replace grnsign = . grnsign == 0 | grnsign == 8 | grnsign == 9 ;
replace grnmoney = . grnmoney == 0 | grnmoney == 8 | grnmoney == 9 ;
replace grndemo = . grndemo == 0 | grndemo == 8 | grndemo == 9 ;
replace comtype = . comtype == 0 | comtype == 8 | comtype == 9 ;
replace popgrwth = . popgrwth == 0 | popgrwth == 8 | popgrwth == 9 ;
replace impgrn = . impgrn == 0 | impgrn == 8 | impgrn == 9 ;
replace othssame = . othssame == 0 | othssame == 8 | othssame == 9 ;
replace grnexagg = . grnexagg == 0 | grnexagg == 8 | grnexagg == 9 ;
replace genegen = . genegen == 0 | genegen == 8 | genegen == 9 ;
replace amprogrn = . amprogrn == 0 | amprogrn == 8 | amprogrn == 9 ;
replace bizpeop = . bizpeop == 0 | bizpeop == 8 | bizpeop == 9 ;
replace govtbiz = . govtbiz == 0 | govtbiz == 8 | govtbiz == 9 ;
replace peopgovt = . peopgovt == 0 | peopgovt == 8 | peopgovt == 9 ;
replace grnintl = . grnintl == 0 | grnintl == 8 | grnintl == 9 ;
replace ldcgrn = . ldcgrn == 0 | ldcgrn == 8 | ldcgrn == 9 ;
replace econgrn = . econgrn == 0 | econgrn == 8 | econgrn == 9 ;
replace nukeacc = . nukeacc == 0 | nukeacc == 8 | nukeacc == 9 ;
replace infobiz = . infobiz == 0 | infobiz == 8 | infobiz == 9 ;
replace infogrn = . infogrn == 0 | infogrn == 8 | infogrn == 9 ;
replace infogovt = . infogovt == 0 | infogovt == 8 | infogovt == 9 ;
replace infonews = . infonews == 0 | infonews == 8 | infonews == 9 ;
replace infotv = . infotv == 0 | infotv == 8 | infotv == 9 ;
replace infocol = . infocol == 0 | infocol == 8 | infocol == 9 ;
replace excldimm = . excldimm == 0 | excldimm == 8 | excldimm == 9 ;
replace TOPPROB1 = . TOPPROB1 == 0 | TOPPROB1 == 98 | TOPPROB1 == 99 ;
replace TOPPROB2 = . TOPPROB2 == 0 | TOPPROB2 == 98 | TOPPROB2 == 99 ;
replace TRUST5 = . TRUST5 == 0 | TRUST5 == 8 | TRUST5 == 9 ;
replace FAIR5 = . FAIR5 == 0 | FAIR5 == 8 | FAIR5 == 9 ;
replace GRNCON = . GRNCON == 0 | GRNCON == 8 | GRNCON == 9 ;
replace ENPRBUS = . ENPRBUS == 0 | ENPRBUS == 98 | ENPRBUS == 99 ;
replace ENPRBFAM = . ENPRBFAM == 0 | ENPRBFAM == 98 | ENPRBFAM == 99 ;
replace KNWCAUSE = . KNWCAUSE == 0 | KNWCAUSE == 8 | KNWCAUSE == 9 ;
replace KNOWSOL = . KNOWSOL == 0 | KNOWSOL == 8 | KNOWSOL == 9 ;
replace futenrgy = . futenrgy == 0 | futenrgy == 8 | futenrgy == 9 ;
replace HELPHARM = . HELPHARM == 0 | HELPHARM == 8 | HELPHARM == 9 ;
replace GRNEFFME = . GRNEFFME == 0 | GRNEFFME == 8 | GRNEFFME == 9 ;
replace TEMPGEN1 = . TEMPGEN1 == 0 | TEMPGEN1 == 8 | TEMPGEN1 == 9 ;
replace BUSGRN = . BUSGRN == 0 | BUSGRN == 8 | BUSGRN == 9 ;
replace PEOPGRN = . PEOPGRN == 0 | PEOPGRN == 8 | PEOPGRN == 9 ;
replace REDCEHME = . REDCEHME == 0 | REDCEHME == 8 | REDCEHME == 9 ;
replace H2OLESS = . H2OLESS == 0 | H2OLESS == 8 | H2OLESS == 9 ;
replace NOBUYGRN = . NOBUYGRN == 0 | NOBUYGRN == 8 | NOBUYGRN == 9 ;
replace clsenei = . clsenei == 0 | clsenei == 8 | clsenei == 9 ;
replace clsetown = . clsetown == 0 | clsetown == 8 | clsetown == 9 ;
replace clsestat = . clsestat == 0 | clsestat == 8 | clsestat == 9 ;
replace clseusa = . clseusa == 0 | clseusa == 8 | clseusa == 9 ;
replace clsenoam = . clsenoam == 0 | clsenoam == 8 | clsenoam == 9 ;
replace movenei = . movenei == 0 | movenei == 8 | movenei == 9 ;
replace movetown = . movetown == 0 | movetown == 8 | movetown == 9 ;
replace movestat = . movestat == 0 | movestat == 8 | movestat == 9 ;
replace moveusa = . moveusa == 0 | moveusa == 8 | moveusa == 9 ;
replace movenoam = . movenoam == 0 | movenoam == 8 | movenoam == 9 ;
replace onenatn = . onenatn == 0 | onenatn == 8 | onenatn == 9 ;
replace ambornin = . ambornin == 0 | ambornin == 8 | ambornin == 9 ;
replace amcit = . amcit == 0 | amcit == 8 | amcit == 9 ;
replace amlived = . amlived == 0 | amlived == 8 | amlived == 9 ;
replace amenglsh = . amenglsh == 0 | amenglsh == 8 | amenglsh == 9 ;
replace amchrstn = . amchrstn == 0 | amchrstn == 8 | amchrstn == 9 ;
replace amgovt = . amgovt == 0 | amgovt == 8 | amgovt == 9 ;
replace amfeel = . amfeel == 0 | amfeel == 8 | amfeel == 9 ;
replace amcitizn = . amcitizn == 0 | amcitizn == 8 | amcitizn == 9 ;
replace amshamed = . amshamed == 0 | amshamed == 8 | amshamed == 9 ;
replace belikeus = . belikeus == 0 | belikeus == 8 | belikeus == 9 ;
replace ambetter = . ambetter == 0 | ambetter == 8 | ambetter == 9 ;
replace ifwrong = . ifwrong == 0 | ifwrong == 8 | ifwrong == 9 ;
replace amsports = . amsports == 0 | amsports == 8 | amsports == 9 ;
replace prouddem = . prouddem == 0 | prouddem == 8 | prouddem == 9 ;
replace proudpol = . proudpol == 0 | proudpol == 8 | proudpol == 9 ;
replace proudeco = . proudeco == 0 | proudeco == 8 | proudeco == 9 ;
replace proudsss = . proudsss == 0 | proudsss == 8 | proudsss == 9 ;
replace proudsci = . proudsci == 0 | proudsci == 8 | proudsci == 9 ;
replace proudspt = . proudspt == 0 | proudspt == 8 | proudspt == 9 ;
replace proudart = . proudart == 0 | proudart == 8 | proudart == 9 ;
replace proudmil = . proudmil == 0 | proudmil == 8 | proudmil == 9 ;
replace proudhis = . proudhis == 0 | proudhis == 8 | proudhis == 9 ;
replace proudgrp = . proudgrp == 0 | proudgrp == 8 | proudgrp == 9 ;
replace imports = . imports == 0 | imports == 8 | imports == 9 ;
replace wrldgovt = . wrldgovt == 0 | wrldgovt == 8 | wrldgovt == 9 ;
replace forlang = . forlang == 0 | forlang == 8 | forlang == 9 ;
replace amownway = . amownway == 0 | amownway == 8 | amownway == 9 ;
replace forland = . forland == 0 | forland == 8 | forland == 9 ;
replace amtv = . amtv == 0 | amtv == 8 | amtv == 9 ;
replace amcult = . amcult == 0 | amcult == 8 | amcult == 9 ;
replace mincult = . mincult == 0 | mincult == 8 | mincult == 9 ;
replace meltpot1 = . meltpot1 == 0 | meltpot1 == 8 | meltpot1 == 9 ;
replace immcrime = . immcrime == 0 | immcrime == 8 | immcrime == 9 ;
replace immameco = . immameco == 0 | immameco == 8 | immameco == 9 ;
replace immjobs = . immjobs == 0 | immjobs == 8 | immjobs == 9 ;
replace immideas = . immideas == 0 | immideas == 8 | immideas == 9 ;
replace letin1 = . letin1 == 0 | letin1 == 8 | letin1 == 9 ;
replace refugees = . refugees == 0 | refugees == 8 | refugees == 9 ;
replace res161 = . res161 == 0 | res161 == 8 | res161 == 9 ;
replace livecom1 = . livecom1 == -1 | livecom1 == 98 | livecom1 == 99 ;
replace abroad = . abroad == 0 | abroad == 8 | abroad == 9 ;
replace spkhome1 = . spkhome1 == 0 | spkhome1 == 98 | spkhome1 == 99 ;
replace spkhome2 = . spkhome2 == 0 | spkhome2 == 98 | spkhome2 == 99 ;
replace spklang1 = . spklang1 == 0 | spklang1 == 98 | spklang1 == 99 ;
replace spklang2 = . spklang2 == 0 | spklang2 == 98 | spklang2 == 99 ;
replace spklang3 = . spklang3 == 0 | spklang3 == 98 | spklang3 == 99 ;
replace citizen = . citizen == 0 | citizen == 8 | citizen == 9 ;
replace parcit = . parcit == 0 | parcit == 8 | parcit == 9 ;
replace ethclose = . ethclose == 0 | ethclose == 8 | ethclose == 9 ;
replace nafta1 = . nafta1 == 0 | nafta1 == 8 | nafta1 == 9 ;
replace nafta2 = . nafta2 == 0 | nafta2 == 8 | nafta2 == 9 ;
replace socid1 = . socid1 == 0 | socid1 == 98 | socid1 == 99 ;
replace socid2 = . socid2 == 0 | socid2 == 98 | socid2 == 99 ;
replace socid3 = . socid3 == 0 | socid3 == 98 | socid3 == 99 ;
replace amancstr = . amancstr == 0 | amancstr == 8 | amancstr == 9 ;
replace lessprd = . lessprd == 0 | lessprd == 8 | lessprd == 9 ;
replace intlincs = . intlincs == 0 | intlincs == 8 | intlincs == 9 ;
replace freetrde = . freetrde == 0 | freetrde == 8 | freetrde == 9 ;
replace decsorgs = . decsorgs == 0 | decsorgs == 8 | decsorgs == 9 ;
replace powrorgs = . powrorgs == 0 | powrorgs == 8 | powrorgs == 9 ;
replace CITWORLD = . CITWORLD == 0 | CITWORLD == 8 | CITWORLD == 9 ;
replace forcult = . forcult == 0 | forcult == 8 | forcult == 9 ;
replace internet = . internet == 0 | internet == 8 | internet == 9 ;
replace immimp = . immimp == 0 | immimp == 8 | immimp == 9 ;
replace immcosts = . immcosts == 0 | immcosts == 8 | immcosts == 9 ;
replace kidshere = . kidshere == 0 | kidshere == 8 | kidshere == 9 ;
replace kidsaway = . kidsaway == 0 | kidsaway == 8 | kidsaway == 9 ;
replace immrghts = . immrghts == 0 | immrghts == 8 | immrghts == 9 ;
replace amproud1 = . amproud1 == 0 | amproud1 == 8 | amproud1 == 9 ;
replace nafta2a = . nafta2a == 0 | nafta2a == 8 | nafta2a == 9 ;
replace nafta3 = . nafta3 == 0 | nafta3 == 8 | nafta3 == 9 ;
replace SHORTCOM = . SHORTCOM == 0 | SHORTCOM == 8 | SHORTCOM == 9 ;
replace IMMCULT = . IMMCULT == 0 | IMMCULT == 8 | IMMCULT == 9 ;
replace IMMEDUC = . IMMEDUC == 0 | IMMEDUC == 8 | IMMEDUC == 9 ;
replace LETIN1A = . LETIN1A == 0 | LETIN1A == 8 | LETIN1A == 9 ;
replace IMMASSIM = . IMMASSIM == 0 | IMMASSIM == 8 | IMMASSIM == 9 ;
replace PATRIOT1 = . PATRIOT1 == 0 | PATRIOT1 == 8 | PATRIOT1 == 9 ;
replace PATRIOT2 = . PATRIOT2 == 0 | PATRIOT2 == 8 | PATRIOT2 == 9 ;
replace PATRIOT3 = . PATRIOT3 == 0 | PATRIOT3 == 8 | PATRIOT3 == 9 ;
replace PATRIOT4 = . PATRIOT4 == 0 | PATRIOT4 == 8 | PATRIOT4 == 9 ;
replace voteelec = . voteelec == 0 | voteelec == 8 | voteelec == 9 ;
replace paytaxes = . paytaxes == 0 | paytaxes == 8 | paytaxes == 9 ;
replace obeylaws = . obeylaws == 0 | obeylaws == 8 | obeylaws == 9 ;
replace watchgov = . watchgov == 0 | watchgov == 8 | watchgov == 9 ;
replace actassoc = . actassoc == 0 | actassoc == 8 | actassoc == 9 ;
replace othreasn = . othreasn == 0 | othreasn == 8 | othreasn == 9 ;
replace buypol = . buypol == 0 | buypol == 8 | buypol == 9 ;
replace helpusa = . helpusa == 0 | helpusa == 8 | helpusa == 9 ;
replace helpwrld = . helpwrld == 0 | helpwrld == 8 | helpwrld == 9 ;
replace milserve = . milserve == 0 | milserve == 8 | milserve == 9 ;
replace relmeet = . relmeet == 0 | relmeet == 8 | relmeet == 9 ;
replace revmeet = . revmeet == 0 | revmeet == 8 | revmeet == 9 ;
replace racmeet = . racmeet == 0 | racmeet == 8 | racmeet == 9 ;
replace signdpet = . signdpet == 0 | signdpet == 8 | signdpet == 9 ;
replace avoidbuy = . avoidbuy == 0 | avoidbuy == 8 | avoidbuy == 9 ;
replace joindem = . joindem == 0 | joindem == 8 | joindem == 9 ;
replace attrally = . attrally == 0 | attrally == 8 | attrally == 9 ;
replace cntctgov = . cntctgov == 0 | cntctgov == 8 | cntctgov == 9 ;
replace polfunds = . polfunds == 0 | polfunds == 8 | polfunds == 9 ;
replace usemedia = . usemedia == 0 | usemedia == 8 | usemedia == 9 ;
replace interpol = . interpol == 0 | interpol == 8 | interpol == 9 ;
replace grpparty = . grpparty == 0 | grpparty == 8 | grpparty == 9 ;
replace grpwork = . grpwork == 0 | grpwork == 8 | grpwork == 9 ;
replace grprelig = . grprelig == 0 | grprelig == 8 | grprelig == 9 ;
replace grpsprts = . grpsprts == 0 | grpsprts == 8 | grpsprts == 9 ;
replace grpother = . grpother == 0 | grpother == 8 | grpother == 9 ;
replace solok = . solok == 0 | solok == 8 | solok == 9 ;
replace rghtsmin = . rghtsmin == 0 | rghtsmin == 8 | rghtsmin == 9 ;
replace eqtreat = . eqtreat == 0 | eqtreat == 8 | eqtreat == 9 ;
replace citviews = . citviews == 0 | citviews == 8 | citviews == 9 ;
replace polopts = . polopts == 0 | polopts == 8 | polopts == 9 ;
replace oppsegov = . oppsegov == 0 | oppsegov == 8 | oppsegov == 9 ;
replace poleff18 = . poleff18 == 0 | poleff18 == 8 | poleff18 == 9 ;
replace poleff19 = . poleff19 == 0 | poleff19 == 8 | poleff19 == 9 ;
replace poleff20 = . poleff20 == 0 | poleff20 == 8 | poleff20 == 9 ;
replace actlaw = . actlaw == 0 | actlaw == 8 | actlaw == 9 ;
replace affctlaw = . affctlaw == 0 | affctlaw == 8 | affctlaw == 9 ;
replace polint1 = . polint1 == 0 | polint1 == 8 | polint1 == 9 ;
replace govdook = . govdook == 0 | govdook == 8 | govdook == 9 ;
replace polgreed = . polgreed == 0 | polgreed == 8 | polgreed == 9 ;
replace discpol = . discpol == 0 | discpol == 8 | discpol == 9 ;
replace chngeoth = . chngeoth == 0 | chngeoth == 8 | chngeoth == 9 ;
replace powerun = . powerun == 0 | powerun == 8 | powerun == 9 ;
replace govngos = . govngos == 0 | govngos == 8 | govngos == 9 ;
replace unrghts = . unrghts == 0 | unrghts == 8 | unrghts == 9 ;
replace polactve = . polactve == 0 | polactve == 8 | polactve == 9 ;
replace choices = . choices == 0 | choices == 8 | choices == 9 ;
replace refrndms = . refrndms == 0 | refrndms == 8 | refrndms == 9 ;
replace elecvote = . elecvote == 0 | elecvote == 8 | elecvote == 9 ;
replace elecfair = . elecfair == 0 | elecfair == 8 | elecfair == 9 ;
replace servepeo = . servepeo == 0 | servepeo == 8 | servepeo == 9 ;
replace fixmistk = . fixmistk == 0 | fixmistk == 8 | fixmistk == 9 ;
replace corruptn = . corruptn == 0 | corruptn == 8 | corruptn == 9 ;
replace demtoday = . demtoday == -1 | demtoday == 98 | demtoday == 99 ;
replace dem10pst = . dem10pst == -1 | dem10pst == 98 | dem10pst == 99 ;
replace dem10fut = . dem10fut == -1 | dem10fut == 98 | dem10fut == 99 ;
replace demrghts = . demrghts == 0 | demrghts == 8 | demrghts == 9 ;
replace gvtrghts = . gvtrghts == 0 | gvtrghts == 8 | gvtrghts == 9 ;
replace POLINTER = . POLINTER == 0 | POLINTER == 8 | POLINTER == 9 ;
replace POLNEWS = . POLNEWS == 0 | POLNEWS == 8 | POLNEWS == 9 ;
replace CRIMLOSE = . CRIMLOSE == 0 | CRIMLOSE == 8 | CRIMLOSE == 9 ;
replace NTCITVTE = . NTCITVTE == 0 | NTCITVTE == 8 | NTCITVTE == 9 ;
replace NOTVOTE = . NOTVOTE == 0 | NOTVOTE == 8 | NOTVOTE == 9 ;
replace HLTHALL = . HLTHALL == 0 | HLTHALL == 8 | HLTHALL == 9 ;
replace LEFTRGHT = . LEFTRGHT == -1 | LEFTRGHT == 98 | LEFTRGHT == 99 ;
replace creation = . creation == 0 | creation == 8 | creation == 9 ;
replace scitesty = . scitesty == 0 | scitesty == 8 | scitesty == 9 ;
replace big5a1 = . big5a1 == 0 | big5a1 == 8 | big5a1 == 9 ;
replace big5b1 = . big5b1 == 0 | big5b1 == 8 | big5b1 == 9 ;
replace big5c1 = . big5c1 == 0 | big5c1 == 8 | big5c1 == 9 ;
replace big5d1 = . big5d1 == 0 | big5d1 == 8 | big5d1 == 9 ;
replace big5e1 = . big5e1 == 0 | big5e1 == 8 | big5e1 == 9 ;
replace big5a2 = . big5a2 == 0 | big5a2 == 8 | big5a2 == 9 ;
replace big5b2 = . big5b2 == 0 | big5b2 == 8 | big5b2 == 9 ;
replace big5c2 = . big5c2 == 0 | big5c2 == 8 | big5c2 == 9 ;
replace big5d2 = . big5d2 == 0 | big5d2 == 8 | big5d2 == 9 ;
replace big5e2 = . big5e2 == 0 | big5e2 == 8 | big5e2 == 9 ;
replace forbdcom = . forbdcom == 0 | forbdcom == 8 | forbdcom == 9 ;
replace forbdrac = . forbdrac == 0 | forbdrac == 8 | forbdrac == 9 ;
replace forbdmar = . forbdmar == 0 | forbdmar == 8 | forbdmar == 9 ;
replace allowcom = . allowcom == 0 | allowcom == 8 | allowcom == 9 ;
replace allowrac = . allowrac == 0 | allowrac == 8 | allowrac == 9 ;
replace allowmar = . allowmar == 0 | allowmar == 8 | allowmar == 9 ;
replace cideknew = . cideknew == -1 | cideknew == 8 | cideknew == 9 ;
replace cidewho = . cidewho == 0 | cidewho == 98 | cidewho == 99 ;
replace cidesex = . cidesex == 0 | cidesex == 8 | cidesex == 9 ;
replace cideage = . cideage == 0 | cideage == 8 | cideage == 9 ;
replace ciderace = . ciderace == 0 | ciderace == 8 | ciderace == 9 ;
replace cidereg = . cidereg == -1 | cidereg == 98 | cidereg == 99 ;
replace cidewho2 = . cidewho2 == 0 | cidewho2 == 98 | cidewho2 == 99 ;
replace cidesex2 = . cidesex2 == 0 | cidesex2 == 8 | cidesex2 == 9 ;
replace cideage2 = . cideage2 == 0 | cideage2 == 8 | cideage2 == 9 ;
replace ciderac2 = . ciderac2 == 0 | ciderac2 == 8 | ciderac2 == 9 ;
replace cidereg2 = . cidereg2 == -1 | cidereg2 == 98 | cidereg2 == 99 ;
replace cidewho3 = . cidewho3 == 0 | cidewho3 == 98 | cidewho3 == 99 ;
replace cidesex3 = . cidesex3 == 0 | cidesex3 == 8 | cidesex3 == 9 ;
replace cideage3 = . cideage3 == 0 | cideage3 == 8 | cideage3 == 9 ;
replace ciderac3 = . ciderac3 == 0 | ciderac3 == 8 | ciderac3 == 9 ;
replace cidereg3 = . cidereg3 == -1 | cidereg3 == 98 | cidereg3 == 99 ;
replace aidsknow = . aidsknow == -1 | aidsknow == 8 | aidsknow == 9 ;
replace aidswho = . aidswho == 0 | aidswho == 8 | aidswho == 9 ;
replace aidsdead = . aidsdead == 0 | aidsdead == 8 | aidsdead == 9 ;
replace aidssex = . aidssex == 0 | aidssex == 8 | aidssex == 9 ;
replace aidsage = . aidsage == 0 | aidsage == 8 | aidsage == 9 ;
replace aidsrace = . aidsrace == 0 | aidsrace == 8 | aidsrace == 9 ;
replace aidsreg = . aidsreg == -1 | aidsreg == 98 | aidsreg == 99 ;
replace aidswho2 = . aidswho2 == 0 | aidswho2 == 98 | aidswho2 == 99 ;
replace aidsded2 = . aidsded2 == 0 | aidsded2 == 8 | aidsded2 == 9 ;
replace aidssex2 = . aidssex2 == 0 | aidssex2 == 8 | aidssex2 == 9 ;
replace aidsage2 = . aidsage2 == 0 | aidsage2 == 8 | aidsage2 == 9 ;
replace aidsrac2 = . aidsrac2 == 0 | aidsrac2 == 8 | aidsrac2 == 9 ;
replace aidsreg2 = . aidsreg2 == -1 | aidsreg2 == 98 | aidsreg2 == 99 ;
replace aidswho3 = . aidswho3 == 0 | aidswho3 == 98 | aidswho3 == 99 ;
replace aidsded3 = . aidsded3 == 0 | aidsded3 == 8 | aidsded3 == 9 ;
replace aidssex3 = . aidssex3 == 0 | aidssex3 == 8 | aidssex3 == 9 ;
replace aidsage3 = . aidsage3 == 0 | aidsage3 == 8 | aidsage3 == 9 ;
replace aidsrac3 = . aidsrac3 == 0 | aidsrac3 == 8 | aidsrac3 == 9 ;
replace aidsreg3 = . aidsreg3 == -1 | aidsreg3 == 98 | aidsreg3 == 99 ;
replace suiknew = . suiknew == -1 | suiknew == 8 | suiknew == 9 ;
replace suiwho = . suiwho == 0 | suiwho == 98 | suiwho == 99 ;
replace suisex = . suisex == 0 | suisex == 8 | suisex == 9 ;
replace suiage = . suiage == 0 | suiage == 8 | suiage == 9 ;
replace suirace = . suirace == 0 | suirace == 8 | suirace == 9 ;
replace suireg = . suireg == -1 | suireg == 98 | suireg == 99 ;
replace suiwho2 = . suiwho2 == 0 | suiwho2 == 98 | suiwho2 == 99 ;
replace suisex2 = . suisex2 == 0 | suisex2 == 8 | suisex2 == 9 ;
replace suiage2 = . suiage2 == 0 | suiage2 == 8 | suiage2 == 9 ;
replace suirac2 = . suirac2 == 0 | suirac2 == 8 | suirac2 == 9 ;
replace suireg2 = . suireg2 == -1 | suireg2 == 98 | suireg2 == 99 ;
replace suiwho3 = . suiwho3 == 0 | suiwho3 == 98 | suiwho3 == 99 ;
replace suisex3 = . suisex3 == 0 | suisex3 == 8 | suisex3 == 9 ;
replace suiage3 = . suiage3 == 0 | suiage3 == 8 | suiage3 == 9 ;
replace suirac3 = . suirac3 == 0 | suirac3 == 8 | suirac3 == 9 ;
replace suireg3 = . suireg3 == -1 | suireg3 == 98 | suireg3 == 99 ;
replace aidssch = . aidssch == 0 | aidssch == 8 | aidssch == 9 ;
replace aidsads = . aidsads == 0 | aidsads == 8 | aidsads == 9 ;
replace aidsinsr = . aidsinsr == 0 | aidsinsr == 8 | aidsinsr == 9 ;
replace aidshlth = . aidshlth == 0 | aidshlth == 8 | aidshlth == 9 ;
replace aidsmar = . aidsmar == 0 | aidsmar == 8 | aidsmar == 9 ;
replace aidssxed = . aidssxed == 0 | aidssxed == 8 | aidssxed == 9 ;
replace aidsids = . aidsids == 0 | aidsids == 8 | aidsids == 9 ;
replace aidsfare = . aidsfare == 0 | aidsfare == 8 | aidsfare == 9 ;
replace partners = . partners == -1 | partners == 98 | partners == 99 ;
replace matesex = . matesex == 0 | matesex == 8 | matesex == 9 ;
replace frndsex = . frndsex == 0 | frndsex == 8 | frndsex == 9 ;
replace acqntsex = . acqntsex == 0 | acqntsex == 8 | acqntsex == 9 ;
replace pikupsex = . pikupsex == 0 | pikupsex == 8 | pikupsex == 9 ;
replace paidsex = . paidsex == 0 | paidsex == 8 | paidsex == 9 ;
replace othersex = . othersex == 0 | othersex == 8 | othersex == 9 ;
replace sexsex = . sexsex == 0 | sexsex == 8 | sexsex == 9 ;
replace sexfreq = . sexfreq == -1 | sexfreq == 8 | sexfreq == 9 ;
replace sexfreq1 = . sexfreq1 == 0 | sexfreq1 == 8 | sexfreq1 == 9 ;
replace sexfreq2 = . sexfreq2 == -1 | sexfreq2 == 98 | sexfreq2 == 99 ;
replace numwomen = . numwomen == -1 | numwomen == 998 | numwomen == 999 ;
replace nummen = . nummen == -1 | nummen == 998 | nummen == 999 ;
replace partopen = . partopen == -1 | partopen == 998 | partopen == 999 ;
replace partopn5 = . partopn5 == -1 | partopn5 == 998 | partopn5 == 999 ;
replace partnrs5 = . partnrs5 == -1 | partnrs5 == 98 | partnrs5 == 99 ;
replace sexsex5 = . sexsex5 == 0 | sexsex5 == 8 | sexsex5 == 9 ;
replace evpaidsx = . evpaidsx == 0 | evpaidsx == 8 | evpaidsx == 9 ;
replace evstray = . evstray == 0 | evstray == 8 | evstray == 9 ;
replace condom = . condom == 0 | condom == 8 | condom == 9 ;
replace relatsex = . relatsex == 0 | relatsex == 8 | relatsex == 9 ;
replace evidu = . evidu == 0 | evidu == 8 | evidu == 9 ;
replace idu30 = . idu30 == 0 | idu30 == 8 | idu30 == 9 ;
replace evcrack = . evcrack == 0 | evcrack == 8 | evcrack == 9 ;
replace crack30 = . crack30 == 0 | crack30 == 8 | crack30 == 9 ;
replace hivtest = . hivtest == 0 | hivtest == 8 | hivtest == 9 ;
replace hivtest1 = . hivtest1 == 0 | hivtest1 == 999898 | hivtest1 == 999999 ;
replace hivtest2 = . hivtest2 == 0 | hivtest2 == 8 | hivtest2 == 9 ;
replace AIDSLOOK = . AIDSLOOK == 0 | AIDSLOOK == 8 | AIDSLOOK == 9 ;
replace AIDSCNDM = . AIDSCNDM == 0 | AIDSCNDM == 8 | AIDSCNDM == 9 ;
replace HIVVAC = . HIVVAC == 0 | HIVVAC == 8 | HIVVAC == 9 ;
replace HIVKISS = . HIVKISS == 0 | HIVKISS == 8 | HIVKISS == 9 ;
replace SEXORNT = . SEXORNT == 0 | SEXORNT == 8 | SEXORNT == 9 ;
replace siborder = . siborder == -1 | siborder == 98 | siborder == 99 ;
replace genetest = . genetest == 0 | genetest == 8 | genetest == 9 ;
replace genetst1 = . genetst1 == 0 | genetst1 == 8 | genetst1 == 9 ;
replace genegood = . genegood == 0 | genegood == 8 | genegood == 9 ;
replace genegoo1 = . genegoo1 == 0 | genegoo1 == 8 | genegoo1 == 9 ;
replace genegoo2 = . genegoo2 == 0 | genegoo2 == 8 | genegoo2 == 9 ;
replace geneself = . geneself == 0 | geneself == 8 | geneself == 9 ;
replace geneabrt = . geneabrt == 0 | geneabrt == 8 | geneabrt == 9 ;
replace genedef1 = . genedef1 == 0 | genedef1 == 98 | genedef1 == 99 ;
replace genedef2 = . genedef2 == 0 | genedef2 == 98 | genedef2 == 99 ;
replace genedef3 = . genedef3 == 0 | genedef3 == 98 | genedef3 == 99 ;
replace parhardr = . parhardr == 0 | parhardr == 8 | parhardr == 9 ;
replace parworse = . parworse == 0 | parworse == 8 | parworse == 9 ;
replace parrght = . parrght == 0 | parrght == 8 | parrght == 9 ;
replace parwhere = . parwhere == 0 | parwhere == 8 | parwhere == 9 ;
replace parfin = . parfin == 0 | parfin == 8 | parfin == 9 ;
replace pargovt = . pargovt == 0 | pargovt == 8 | pargovt == 9 ;
replace partime = . partime == 0 | partime == 8 | partime == 9 ;
replace parwork = . parwork == 0 | parwork == 8 | parwork == 9 ;
replace partaxes = . partaxes == 0 | partaxes == 8 | partaxes == 9 ;
replace rolema = . rolema == 0 | rolema == 8 | rolema == 9 ;
replace rolepa = . rolepa == 0 | rolepa == 8 | rolepa == 9 ;
replace rolegp = . rolegp == 0 | rolegp == 8 | rolegp == 9 ;
replace roleccp = . roleccp == 0 | roleccp == 8 | roleccp == 9 ;
replace roletchr = . roletchr == 0 | roletchr == 8 | roletchr == 9 ;
replace roleclrg = . roleclrg == 0 | roleclrg == 8 | roleclrg == 9 ;
replace chldeduc = . chldeduc == 0 | chldeduc == 8 | chldeduc == 9 ;
replace chldlove = . chldlove == 0 | chldlove == 8 | chldlove == 9 ;
replace chldsafe = . chldsafe == 0 | chldsafe == 8 | chldsafe == 9 ;
replace chldmorl = . chldmorl == 0 | chldmorl == 8 | chldmorl == 9 ;
replace chldsup = . chldsup == 0 | chldsup == 8 | chldsup == 9 ;
replace chldhome = . chldhome == 0 | chldhome == 8 | chldhome == 9 ;
replace chldhlth = . chldhlth == 0 | chldhlth == 8 | chldhlth == 9 ;
replace chldskls = . chldskls == 0 | chldskls == 8 | chldskls == 9 ;
replace chldtime = . chldtime == 0 | chldtime == 8 | chldtime == 9 ;
replace inffilms = . inffilms == 0 | inffilms == 8 | inffilms == 9 ;
replace infpubtv = . infpubtv == 0 | infpubtv == 8 | infpubtv == 9 ;
replace infnettv = . infnettv == 0 | infnettv == 8 | infnettv == 9 ;
replace infadstv = . infadstv == 0 | infadstv == 8 | infadstv == 9 ;
replace infmusic = . infmusic == 0 | infmusic == 8 | infmusic == 9 ;
replace sppregnt = . sppregnt == 0 | sppregnt == 8 | sppregnt == 9 ;
replace sphlthkd = . sphlthkd == 0 | sphlthkd == 8 | sphlthkd == 9 ;
replace spheadst = . spheadst == 0 | spheadst == 8 | spheadst == 9 ;
replace sppoorkd = . sppoorkd == 0 | sppoorkd == 8 | sppoorkd == 9 ;
replace spwrkpar = . spwrkpar == 0 | spwrkpar == 8 | spwrkpar == 9 ;
replace sphomekd = . sphomekd == 0 | sphomekd == 8 | sphomekd == 9 ;
replace spdsabkd = . spdsabkd == 0 | spdsabkd == 8 | spdsabkd == 9 ;
replace spdrugs = . spdrugs == 0 | spdrugs == 8 | spdrugs == 9 ;
replace spfoodkd = . spfoodkd == 0 | spfoodkd == 8 | spfoodkd == 9 ;
replace sppill = . sppill == 0 | sppill == 8 | sppill == 9 ;
replace prob1 = . prob1 == 0 | prob1 == 998 | prob1 == 999 ;
replace prob2 = . prob2 == 0 | prob2 == 998 | prob2 == 999 ;
replace prob3 = . prob3 == 0 | prob3 == 998 | prob3 == 999 ;
replace prob4 = . prob4 == 0 | prob4 == 998 | prob4 == 999 ;
replace hlth1 = . hlth1 == 0 | hlth1 == 8 | hlth1 == 9 ;
replace hlth2 = . hlth2 == 0 | hlth2 == 8 | hlth2 == 9 ;
replace hlth3 = . hlth3 == 0 | hlth3 == 8 | hlth3 == 9 ;
replace hlth4 = . hlth4 == 0 | hlth4 == 8 | hlth4 == 9 ;
replace hlth5 = . hlth5 == 0 | hlth5 == 8 | hlth5 == 9 ;
replace hlth6 = . hlth6 == 0 | hlth6 == 8 | hlth6 == 9 ;
replace hlth7 = . hlth7 == 0 | hlth7 == 8 | hlth7 == 9 ;
replace hlth8 = . hlth8 == 0 | hlth8 == 8 | hlth8 == 9 ;
replace hlth9 = . hlth9 == 0 | hlth9 == 8 | hlth9 == 9 ;
replace hlth10 = . hlth10 == 0 | hlth10 == 8 | hlth10 == 9 ;
replace hlth11 = . hlth11 == 0 | hlth11 == 8 | hlth11 == 9 ;
replace hlth12 = . hlth12 == 0 | hlth12 == 8 | hlth12 == 9 ;
replace hlth13 = . hlth13 == 0 | hlth13 == 8 | hlth13 == 9 ;
replace hlth14 = . hlth14 == 0 | hlth14 == 8 | hlth14 == 9 ;
replace work1 = . work1 == 0 | work1 == 8 | work1 == 9 ;
replace work2 = . work2 == 0 | work2 == 8 | work2 == 9 ;
replace work3 = . work3 == 0 | work3 == 8 | work3 == 9 ;
replace work4 = . work4 == 0 | work4 == 8 | work4 == 9 ;
replace work5 = . work5 == 0 | work5 == 8 | work5 == 9 ;
replace work6 = . work6 == 0 | work6 == 8 | work6 == 9 ;
replace work7 = . work7 == 0 | work7 == 8 | work7 == 9 ;
replace work8 = . work8 == 0 | work8 == 8 | work8 == 9 ;
replace work9 = . work9 == 0 | work9 == 8 | work9 == 9 ;
replace work10 = . work10 == 0 | work10 == 8 | work10 == 9 ;
replace finan1 = . finan1 == 0 | finan1 == 8 | finan1 == 9 ;
replace finan2 = . finan2 == 0 | finan2 == 8 | finan2 == 9 ;
replace finan3 = . finan3 == 0 | finan3 == 8 | finan3 == 9 ;
replace finan4 = . finan4 == 0 | finan4 == 8 | finan4 == 9 ;
replace finan5 = . finan5 == 0 | finan5 == 8 | finan5 == 9 ;
replace hrdshp1 = . hrdshp1 == 0 | hrdshp1 == 8 | hrdshp1 == 9 ;
replace hrdshp2 = . hrdshp2 == 0 | hrdshp2 == 8 | hrdshp2 == 9 ;
replace hrdshp3 = . hrdshp3 == 0 | hrdshp3 == 8 | hrdshp3 == 9 ;
replace hrdshp4 = . hrdshp4 == 0 | hrdshp4 == 8 | hrdshp4 == 9 ;
replace hrdshp5 = . hrdshp5 == 0 | hrdshp5 == 8 | hrdshp5 == 9 ;
replace hrdshp6 = . hrdshp6 == 0 | hrdshp6 == 8 | hrdshp6 == 9 ;
replace hrdshp7 = . hrdshp7 == 0 | hrdshp7 == 8 | hrdshp7 == 9 ;
replace famper1 = . famper1 == 0 | famper1 == 8 | famper1 == 9 ;
replace famper2 = . famper2 == 0 | famper2 == 8 | famper2 == 9 ;
replace famper3 = . famper3 == 0 | famper3 == 8 | famper3 == 9 ;
replace famper4 = . famper4 == 0 | famper4 == 8 | famper4 == 9 ;
replace famper5 = . famper5 == 0 | famper5 == 8 | famper5 == 9 ;
replace famper6 = . famper6 == 0 | famper6 == 8 | famper6 == 9 ;
replace law1 = . law1 == 0 | law1 == 8 | law1 == 9 ;
replace law2 = . law2 == 0 | law2 == 8 | law2 == 9 ;
replace law3 = . law3 == 0 | law3 == 8 | law3 == 9 ;
replace law4 = . law4 == 0 | law4 == 8 | law4 == 9 ;
replace law5 = . law5 == 0 | law5 == 8 | law5 == 9 ;
replace law6 = . law6 == 0 | law6 == 8 | law6 == 9 ;
replace law7 = . law7 == 0 | law7 == 8 | law7 == 9 ;
replace live1 = . live1 == 0 | live1 == 8 | live1 == 9 ;
replace live2 = . live2 == 0 | live2 == 8 | live2 == 9 ;
replace live3 = . live3 == 0 | live3 == 8 | live3 == 9 ;
replace live4 = . live4 == 0 | live4 == 8 | live4 == 9 ;
replace oth1 = . oth1 == 0 | oth1 == 8 | oth1 == 9 ;
replace oth2 = . oth2 == 0 | oth2 == 8 | oth2 == 9 ;
replace oth3 = . oth3 == 0 | oth3 == 8 | oth3 == 9 ;
replace oth4 = . oth4 == 0 | oth4 == 8 | oth4 == 9 ;
replace oth5 = . oth5 == 0 | oth5 == 8 | oth5 == 9 ;
replace extra1 = . extra1 == 0 | extra1 == 998 | extra1 == 999 ;
replace extra2 = . extra2 == 0 | extra2 == 998 | extra2 == 999 ;
replace povline = . povline == 0 | povline == 9 ;
replace incdef = . incdef == 0 | incdef == 9 ;
replace realinc = . realinc == 0 | realinc == 999999 | realinc == 999998 ;
replace realrinc = . realrinc == 0 | realrinc == 999999 | realrinc == 999998 ;
replace coninc = . coninc == 0 | coninc == 999999 | coninc == 999998 ;
replace conrinc = . conrinc == 0 | conrinc == 999999 | conrinc == 999998 ;
replace minfour = . minfour == 0 | minfour == 9998 | minfour == 9999 ;
replace minfood = . minfood == 0 | minfood == 9998 | minfood == 9999 ;
replace minthree = . minthree == 0 | minthree == 9998 | minthree == 9999 ;
replace sectech = . sectech == 0 | sectech == 8 | sectech == 9 ;
replace secdocs = . secdocs == 0 | secdocs == 8 | secdocs == 9 ;
replace rptcowrk = . rptcowrk == 0 | rptcowrk == 8 | rptcowrk == 9 ;
replace askfinan = . askfinan == 0 | askfinan == 8 | askfinan == 9 ;
replace askcrime = . askcrime == 0 | askcrime == 8 | askcrime == 9 ;
replace askdrugs = . askdrugs == 0 | askdrugs == 8 | askdrugs == 9 ;
replace askmentl = . askmentl == 0 | askmentl == 8 | askmentl == 9 ;
replace askforgn = . askforgn == 0 | askforgn == 8 | askforgn == 9 ;
replace askdrink = . askdrink == 0 | askdrink == 8 | askdrink == 9 ;
replace asksexor = . asksexor == 0 | asksexor == 8 | asksexor == 9 ;
replace askfrbiz = . askfrbiz == 0 | askfrbiz == 8 | askfrbiz == 9 ;
replace askfrtrv = . askfrtrv == 0 | askfrtrv == 8 | askfrtrv == 9 ;
replace askcomp = . askcomp == 0 | askcomp == 8 | askcomp == 9 ;
replace secprvcy = . secprvcy == 0 | secprvcy == 8 | secprvcy == 9 ;
replace secdiplo = . secdiplo == 0 | secdiplo == 8 | secdiplo == 9 ;
replace secmilop = . secmilop == 0 | secmilop == 8 | secmilop == 9 ;
replace secterr = . secterr == 0 | secterr == 8 | secterr == 9 ;
replace secbudgt = . secbudgt == 0 | secbudgt == 8 | secbudgt == 9 ;
replace chkfinan = . chkfinan == 0 | chkfinan == 8 | chkfinan == 9 ;
replace chkspfin = . chkspfin == 0 | chkspfin == 8 | chkspfin == 9 ;
replace chktaxes = . chktaxes == 0 | chktaxes == 8 | chktaxes == 9 ;
replace knomentl = . knomentl == 0 | knomentl == 8 | knomentl == 9 ;
replace takearms = . takearms == 0 | takearms == 8 | takearms == 9 ;
replace leakinfo = . leakinfo == 0 | leakinfo == 8 | leakinfo == 9 ;
replace spyenemy = . spyenemy == 0 | spyenemy == 8 | spyenemy == 9 ;
replace spyfrend = . spyfrend == 0 | spyfrend == 8 | spyfrend == 9 ;
replace taketrck = . taketrck == 0 | taketrck == 8 | taketrck == 9 ;
replace punarms = . punarms == 0 | punarms == 8 | punarms == 9 ;
replace punleak = . punleak == 0 | punleak == 8 | punleak == 9 ;
replace punenmy = . punenmy == 0 | punenmy == 8 | punenmy == 9 ;
replace punfrnd = . punfrnd == 0 | punfrnd == 8 | punfrnd == 9 ;
replace puntrck = . puntrck == 0 | puntrck == 8 | puntrck == 9 ;
replace comsteal = . comsteal == 0 | comsteal == 8 | comsteal == 9 ;
replace comdata = . comdata == 0 | comdata == 8 | comdata == 9 ;
replace comsys = . comsys == 0 | comsys == 8 | comsys == 9 ;
replace comsnoop = . comsnoop == 0 | comsnoop == 8 | comsnoop == 9 ;
replace comemail = . comemail == 0 | comemail == 8 | comemail == 9 ;
replace comporn = . comporn == 0 | comporn == 8 | comporn == 9 ;
replace lietest = . lietest == 0 | lietest == 8 | lietest == 9 ;
replace testdrug = . testdrug == 0 | testdrug == 8 | testdrug == 9 ;
replace bugging = . bugging == 0 | bugging == 8 | bugging == 9 ;
replace finanqs = . finanqs == 0 | finanqs == 8 | finanqs == 9 ;
replace chkonjob = . chkonjob == 0 | chkonjob == 8 | chkonjob == 9 ;
replace chkother = . chkother == 0 | chkother == 8 | chkother == 9 ;
replace compfin = . compfin == 0 | compfin == 8 | compfin == 9 ;
replace chktravl = . chktravl == 0 | chktravl == 8 | chktravl == 9 ;
replace emailwrk = . emailwrk == 0 | emailwrk == 8 | emailwrk == 9 ;
replace emailhme = . emailhme == 0 | emailhme == 8 | emailhme == 9 ;
replace tapwrk = . tapwrk == 0 | tapwrk == 8 | tapwrk == 9 ;
replace taphme = . taphme == 0 | taphme == 8 | taphme == 9 ;
replace srchwrk = . srchwrk == 0 | srchwrk == 8 | srchwrk == 9 ;
replace camwrk = . camwrk == 0 | camwrk == 8 | camwrk == 9 ;
replace usspy = . usspy == 0 | usspy == 8 | usspy == 9 ;
replace forspy = . forspy == 0 | forspy == 8 | forspy == 9 ;
replace usterror = . usterror == 0 | usterror == 8 | usterror == 9 ;
replace frterror = . frterror == 0 | frterror == 8 | frterror == 9 ;
replace forsteal = . forsteal == 0 | forsteal == 8 | forsteal == 9 ;
replace nuclrwar = . nuclrwar == 0 | nuclrwar == 8 | nuclrwar == 9 ;
replace ethnic = . ethnic == 0 | ethnic == 98 | ethnic == 99 ;
replace eth1 = . eth1 == 0 | eth1 == 98 | eth1 == 99 ;
replace eth2 = . eth2 == 0 | eth2 == 98 | eth2 == 99 ;
replace eth3 = . eth3 == 0 | eth3 == 98 | eth3 == 99 ;
replace ethnum = . ethnum == 5 ;
replace spethnic = . spethnic == 0 | spethnic == 98 | spethnic == 99 ;
replace speth1 = . speth1 == 0 | speth1 == 98 | speth1 == 99 ;
replace speth2 = . speth2 == 0 | speth2 == 98 | speth2 == 99 ;
replace speth3 = . speth3 == 0 | speth3 == 98 | speth3 == 99 ;
replace spethnum = . spethnum == 0 | spethnum == 5 ;
replace racesee = . racesee == 0 | racesee == 98 | racesee == 99 ;
replace racedbtf = . racedbtf == 0 | racedbtf == 8 | racedbtf == 9 ;
replace raceself = . raceself == 0 | raceself == 8 | raceself == 9 ;
replace hispanic = . hispanic == 0 | hispanic == 98 | hispanic == 99 ;
replace racecen1 = . racecen1 == 0 | racecen1 == 98 | racecen1 == 99 ;
replace racecen2 = . racecen2 == 0 | racecen2 == 98 | racecen2 == 99 ;
replace racecen3 = . racecen3 == 0 | racecen3 == 98 | racecen3 == 99 ;
replace difrace1 = . difrace1 == 0 | difrace1 == 98 | difrace1 == 99 ;
replace difrace2 = . difrace2 == 0 | difrace2 == 98 | difrace2 == 99 ;
replace difrace3 = . difrace3 == 0 | difrace3 == 98 | difrace3 == 99 ;
replace USCITZN = . USCITZN == 0 | USCITZN == 8 | USCITZN == 9 ;
replace FUCITZN = . FUCITZN == 0 | FUCITZN == 8 | FUCITZN == 9 ;
replace vetyears = . vetyears == -1 | vetyears == 9 ;
replace vetkind = . vetkind == -1 | vetkind == 9 ;
replace workdy = . workdy == 0 | workdy == 9 ;
replace workhr = . workhr == 0 | workhr == 9 ;
replace spdays = . spdays == 0 | spdays == 9 ;
replace sphour = . sphour == 0 | sphour == 9 ;
replace dwelling = . dwelling == 0 | dwelling == 98 | dwelling == 99 ;
replace dwelngh = . dwelngh == 0 | dwelngh == 9 ;
replace dwelcity = . dwelcity == 0 | dwelcity == 9 ;
replace dwelown = . dwelown == 0 | dwelown == 8 | dwelown == 9 ;
replace worda = . worda == -1 | worda == 9 ;
replace wordb = . wordb == -1 | wordb == 9 ;
replace wordc = . wordc == -1 | wordc == 9 ;
replace wordd = . wordd == -1 | wordd == 9 ;
replace worde = . worde == -1 | worde == 9 ;
replace wordf = . wordf == -1 | wordf == 9 ;
replace wordg = . wordg == -1 | wordg == 9 ;
replace wordh = . wordh == -1 | wordh == 9 ;
replace wordi = . wordi == -1 | wordi == 9 ;
replace wordj = . wordj == -1 | wordj == 9 ;
replace wordsum = . wordsum == -1 | wordsum == 98 | wordsum == 99 ;
replace godoc = . godoc == 0 | godoc == 8 | godoc == 9 ;
replace eatout = . eatout == 0 | eatout == 8 | eatout == 9 ;
replace seefilm = . seefilm == 0 | seefilm == 8 | seefilm == 9 ;
replace attrelig = . attrelig == 0 | attrelig == 8 | attrelig == 9 ;
replace numdays = . numdays == -1 | numdays == 8 | numdays == 9 ;
replace sunday = . sunday == 0 | sunday == 8 | sunday == 9 ;
replace monday = . monday == 0 | monday == 8 | monday == 9 ;
replace tuesday = . tuesday == 0 | tuesday == 8 | tuesday == 9 ;
replace wednesdy = . wednesdy == 0 | wednesdy == 8 | wednesdy == 9 ;
replace thursday = . thursday == 0 | thursday == 8 | thursday == 9 ;
replace friday = . friday == 0 | friday == 8 | friday == 9 ;
replace saturday = . saturday == 0 | saturday == 8 | saturday == 9 ;
replace attreg = . attreg == 0 | attreg == 8 | attreg == 9 ;
replace mediarel = . mediarel == 0 | mediarel == 8 | mediarel == 9 ;
replace othrel = . othrel == 0 | othrel == 8 | othrel == 9 ;
replace othrel1 = . othrel1 == 0 | othrel1 == 98 | othrel1 == 99 ;
replace othrel2 = . othrel2 == 0 | othrel2 == 98 | othrel2 == 99 ;
replace othrel3 = . othrel3 == 0 | othrel3 == 98 | othrel3 == 99 ;
replace attweek = . attweek == 0 | attweek == 8 | attweek == 9 ;
replace religid = . religid == 0 | religid == 8 | religid == 9 ;
replace relid1 = . relid1 == 0 | relid1 == 8 | relid1 == 9 ;
replace relid2 = . relid2 == 0 | relid2 == 8 | relid2 == 9 ;
replace relid3 = . relid3 == 0 | relid3 == 8 | relid3 == 9 ;
replace relidbst = . relidbst == 0 | relidbst == 8 | relidbst == 9 ;
replace cathid = . cathid == 0 | cathid == 8 | cathid == 9 ;
replace charisma = . charisma == 0 | charisma == 8 | charisma == 9 ;
replace relate1 = . relate1 == 0 | relate1 == 9 ;
replace gender1 = . gender1 == 0 | gender1 == 8 | gender1 == 9 ;
replace old1 = . old1 == -1 | old1 == 98 | old1 == 99 ;
replace mar1 = . mar1 == 0 | mar1 == 8 | mar1 == 9 ;
replace away1 = . away1 == 0 | away1 == 8 | away1 == 9 ;
replace where1 = . where1 == 0 | where1 == 9 ;
replace relate2 = . relate2 == 0 | relate2 == 9 ;
replace gender2 = . gender2 == 0 | gender2 == 8 | gender2 == 9 ;
replace old2 = . old2 == -1 | old2 == 98 | old2 == 99 ;
replace mar2 = . mar2 == 0 | mar2 == 8 | mar2 == 9 ;
replace away2 = . away2 == 0 | away2 == 8 | away2 == 9 ;
replace where2 = . where2 == 0 | where2 == 9 ;
replace relate3 = . relate3 == 0 | relate3 == 9 ;
replace gender3 = . gender3 == 0 | gender3 == 8 | gender3 == 9 ;
replace old3 = . old3 == -1 | old3 == 98 | old3 == 99 ;
replace mar3 = . mar3 == 0 | mar3 == 8 | mar3 == 9 ;
replace away3 = . away3 == 0 | away3 == 8 | away3 == 9 ;
replace where3 = . where3 == 0 | where3 == 9 ;
replace relate4 = . relate4 == 0 | relate4 == 9 ;
replace gender4 = . gender4 == 0 | gender4 == 8 | gender4 == 9 ;
replace old4 = . old4 == -1 | old4 == 98 | old4 == 99 ;
replace mar4 = . mar4 == 0 | mar4 == 8 | mar4 == 9 ;
replace away4 = . away4 == 0 | away4 == 8 | away4 == 9 ;
replace where4 = . where4 == 0 | where4 == 9 ;
replace relate5 = . relate5 == 0 | relate5 == 9 ;
replace gender5 = . gender5 == 0 | gender5 == 8 | gender5 == 9 ;
replace old5 = . old5 == -1 | old5 == 98 | old5 == 99 ;
replace mar5 = . mar5 == 0 | mar5 == 8 | mar5 == 9 ;
replace away5 = . away5 == 0 | away5 == 8 | away5 == 9 ;
replace where5 = . where5 == 0 | where5 == 9 ;
replace relate6 = . relate6 == 0 | relate6 == 9 ;
replace gender6 = . gender6 == 0 | gender6 == 8 | gender6 == 9 ;
replace old6 = . old6 == -1 | old6 == 98 | old6 == 99 ;
replace mar6 = . mar6 == 0 | mar6 == 8 | mar6 == 9 ;
replace away6 = . away6 == 0 | away6 == 8 | away6 == 9 ;
replace where6 = . where6 == 0 | where6 == 9 ;
replace relate7 = . relate7 == 0 | relate7 == 9 ;
replace gender7 = . gender7 == 0 | gender7 == 8 | gender7 == 9 ;
replace old7 = . old7 == -1 | old7 == 98 | old7 == 99 ;
replace mar7 = . mar7 == 0 | mar7 == 8 | mar7 == 9 ;
replace away7 = . away7 == 0 | away7 == 8 | away7 == 9 ;
replace where7 = . where7 == 0 | where7 == 9 ;
replace relate8 = . relate8 == 0 | relate8 == 9 ;
replace gender8 = . gender8 == 0 | gender8 == 8 | gender8 == 9 ;
replace old8 = . old8 == -1 | old8 == 98 | old8 == 99 ;
replace mar8 = . mar8 == 0 | mar8 == 8 | mar8 == 9 ;
replace away8 = . away8 == 0 | away8 == 8 | away8 == 9 ;
replace where8 = . where8 == 0 | where8 == 9 ;
replace relate9 = . relate9 == 0 | relate9 == 9 ;
replace gender9 = . gender9 == 0 | gender9 == 8 | gender9 == 9 ;
replace old9 = . old9 == -1 | old9 == 98 | old9 == 99 ;
replace mar9 = . mar9 == 0 | mar9 == 8 | mar9 == 9 ;
replace away9 = . away9 == 0 | away9 == 8 | away9 == 9 ;
replace where9 = . where9 == 0 | where9 == 9 ;
replace relate10 = . relate10 == 0 | relate10 == 9 ;
replace gender10 = . gender10 == 0 | gender10 == 8 | gender10 == 9 ;
replace old10 = . old10 == -1 | old10 == 98 | old10 == 99 ;
replace mar10 = . mar10 == 0 | mar10 == 8 | mar10 == 9 ;
replace away10 = . away10 == 0 | away10 == 8 | away10 == 9 ;
replace where10 = . where10 == 0 | where10 == 9 ;
replace relate11 = . relate11 == 0 | relate11 == 9 ;
replace gender11 = . gender11 == 0 | gender11 == 8 | gender11 == 9 ;
replace old11 = . old11 == -1 | old11 == 98 | old11 == 99 ;
replace mar11 = . mar11 == 0 | mar11 == 8 | mar11 == 9 ;
replace away11 = . away11 == 0 | away11 == 8 | away11 == 9 ;
replace where11 = . where11 == 0 | where11 == 9 ;
replace relate12 = . relate12 == 0 | relate12 == 9 ;
replace gender12 = . gender12 == 0 | gender12 == 8 | gender12 == 9 ;
replace old12 = . old12 == -1 | old12 == 98 | old12 == 99 ;
replace mar12 = . mar12 == 0 | mar12 == 8 | mar12 == 9 ;
replace away12 = . away12 == 0 | away12 == 8 | away12 == 9 ;
replace where12 = . where12 == 0 | where12 == 9 ;
replace relate13 = . relate13 == 0 | relate13 == 9 ;
replace gender13 = . gender13 == 0 | gender13 == 8 | gender13 == 9 ;
replace old13 = . old13 == -1 | old13 == 98 | old13 == 99 ;
replace mar13 = . mar13 == 0 | mar13 == 8 | mar13 == 9 ;
replace away13 = . away13 == 0 | away13 == 8 | away13 == 9 ;
replace where13 = . where13 == 0 | where13 == 9 ;
replace relate14 = . relate14 == 0 | relate14 == 9 ;
replace gender14 = . gender14 == 0 | gender14 == 8 | gender14 == 9 ;
replace old14 = . old14 == -1 | old14 == 98 | old14 == 99 ;
replace mar14 = . mar14 == 0 | mar14 == 8 | mar14 == 9 ;
replace away14 = . away14 == 0 | away14 == 8 | away14 == 9 ;
replace where14 = . where14 == 0 | where14 == 9 ;
replace relhhd1 = . relhhd1 == 0 | relhhd1 == 98 | relhhd1 == 99 ;
replace relhhd2 = . relhhd2 == 0 | relhhd2 == 98 | relhhd2 == 99 ;
replace relhhd3 = . relhhd3 == 0 | relhhd3 == 98 | relhhd3 == 99 ;
replace relhhd4 = . relhhd4 == 0 | relhhd4 == 98 | relhhd4 == 99 ;
replace relhhd5 = . relhhd5 == 0 | relhhd5 == 98 | relhhd5 == 99 ;
replace relhhd6 = . relhhd6 == 0 | relhhd6 == 98 | relhhd6 == 99 ;
replace relhhd7 = . relhhd7 == 0 | relhhd7 == 98 | relhhd7 == 99 ;
replace relhhd8 = . relhhd8 == 0 | relhhd8 == 98 | relhhd8 == 99 ;
replace relhhd9 = . relhhd9 == 0 | relhhd9 == 98 | relhhd9 == 99 ;
replace relhhd10 = . relhhd10 == 0 | relhhd10 == 98 | relhhd10 == 99 ;
replace relhhd11 = . relhhd11 == 0 | relhhd11 == 98 | relhhd11 == 99 ;
replace relhhd12 = . relhhd12 == 0 | relhhd12 == 98 | relhhd12 == 99 ;
replace relhhd13 = . relhhd13 == 0 | relhhd13 == 98 | relhhd13 == 99 ;
replace relhhd14 = . relhhd14 == 0 | relhhd14 == 98 | relhhd14 == 99 ;
replace hefinfo = . hefinfo == 0 | hefinfo == 98 | hefinfo == 99 ;
replace hhrace = . hhrace == 0 | hhrace == 8 | hhrace == 9 ;
replace respnum = . respnum == 0 | respnum == 99 ;
replace hhtype = . hhtype == 0 | hhtype == 998 | hhtype == 999 ;
replace hhtype1 = . hhtype1 == 0 | hhtype1 == 98 | hhtype1 == 99 ;
replace famgen = . famgen == 0 | famgen == 8 | famgen == 9 ;
replace rplace = . rplace == 0 | rplace == 9 ;
replace rvisitor = . rvisitor == 0 | rvisitor == 8 | rvisitor == 9 ;
replace visitors = . visitors == -1 | visitors == 8 | visitors == 9 ;
replace relhh1 = . relhh1 == 0 | relhh1 == 98 | relhh1 == 99 ;
replace relhh2 = . relhh2 == 0 | relhh2 == 98 | relhh2 == 99 ;
replace relhh3 = . relhh3 == 0 | relhh3 == 98 | relhh3 == 99 ;
replace relhh4 = . relhh4 == 0 | relhh4 == 98 | relhh4 == 99 ;
replace relhh5 = . relhh5 == 0 | relhh5 == 98 | relhh5 == 99 ;
replace relhh6 = . relhh6 == 0 | relhh6 == 98 | relhh6 == 99 ;
replace relhh7 = . relhh7 == 0 | relhh7 == 98 | relhh7 == 99 ;
replace relhh8 = . relhh8 == 0 | relhh8 == 98 | relhh8 == 99 ;
replace relhh9 = . relhh9 == 0 | relhh9 == 98 | relhh9 == 99 ;
replace relhh10 = . relhh10 == 0 | relhh10 == 98 | relhh10 == 99 ;
replace relhh11 = . relhh11 == 0 | relhh11 == 98 | relhh11 == 99 ;
replace relhh12 = . relhh12 == 0 | relhh12 == 98 | relhh12 == 99 ;
replace relhh13 = . relhh13 == 0 | relhh13 == 98 | relhh13 == 99 ;
replace relhh14 = . relhh14 == 0 | relhh14 == 98 | relhh14 == 99 ;
replace relsp1 = . relsp1 == 0 | relsp1 == 98 | relsp1 == 99 ;
replace relsp2 = . relsp2 == 0 | relsp2 == 98 | relsp2 == 99 ;
replace relsp3 = . relsp3 == 0 | relsp3 == 98 | relsp3 == 99 ;
replace relsp4 = . relsp4 == 0 | relsp4 == 98 | relsp4 == 99 ;
replace relsp5 = . relsp5 == 0 | relsp5 == 98 | relsp5 == 99 ;
replace relsp6 = . relsp6 == 0 | relsp6 == 98 | relsp6 == 99 ;
replace relsp7 = . relsp7 == 0 | relsp7 == 98 | relsp7 == 99 ;
replace relsp8 = . relsp8 == 0 | relsp8 == 98 | relsp8 == 99 ;
replace relsp9 = . relsp9 == 0 | relsp9 == 98 | relsp9 == 99 ;
replace relsp10 = . relsp10 == 0 | relsp10 == 98 | relsp10 == 99 ;
replace relsp11 = . relsp11 == 0 | relsp11 == 98 | relsp11 == 99 ;
replace relsp12 = . relsp12 == 0 | relsp12 == 98 | relsp12 == 99 ;
replace relsp13 = . relsp13 == 0 | relsp13 == 98 | relsp13 == 99 ;
replace relsp14 = . relsp14 == 0 | relsp14 == 98 | relsp14 == 99 ;
replace dateintv = . dateintv == 0 | dateintv == 9999 ;
replace isco68 = . isco68 == 0 | isco68 == 9998 ;
replace paisco68 = . paisco68 == 0 | paisco68 == 9998 ;
replace spisco68 = . spisco68 == 0 | spisco68 == 9998 ;
replace isco681 = . isco681 == 0 | isco681 == 9998 ;
replace paisc681 = . paisc681 == 0 | paisc681 == 9998 ;
replace maisc681 = . maisc681 == 0 | maisc681 == 9998 ;
replace spisc681 = . spisc681 == 0 | spisc681 == 9998 ;
replace isco88 = . isco88 == 0 | isco88 == 9998 | isco88 == 9999 ;
replace paisco88 = . paisco88 == 0 | paisco88 == 9998 | paisco88 == 9999 ;
replace maisco88 = . maisco88 == 0 | maisco88 == 9998 | maisco88 == 9999 ;
replace spisco88 = . spisco88 == 0 | spisco88 == 9998 | spisco88 == 9999 ;
replace sei = . sei == -1 | sei == 99 | sei == 99 ;
replace firstsei = . firstsei == -1 | firstsei == 99 | firstsei == 99 ;
replace pasei = . pasei == -1 | pasei == 99 | pasei == 99 ;
replace masei = . masei == -1 | masei == 99 | masei == 99 ;
replace spsei = . spsei == -1 | spsei == 99 | spsei == 99 ;
replace sei10 = . sei10 == 0 ;
replace sei10educ = . sei10educ == 0 ;
replace sei10inc = . sei10inc == 0 ;
replace pasei10 = . pasei10 == 0 ;
replace pasei10educ = . pasei10educ == 0 ;
replace pasei10inc = . pasei10inc == 0 ;
replace masei10 = . masei10 == 0 ;
replace masei10educ = . masei10educ == 0 ;
replace masei10inc = . masei10inc == 0 ;
replace spsei10 = . spsei10 == 0 ;
replace spsei10educ = . spsei10educ == 0 ;
replace spsei10inc = . spsei10inc == 0 ;
replace uswar = . uswar == 0 | uswar == 8 | uswar == 9 ;
replace uswary = . uswary == 0 | uswary == 8 | uswary == 9 ;
replace usintl = . usintl == 0 | usintl == 8 | usintl == 9 ;
replace usun = . usun == 0 | usun == 8 | usun == 9 ;
replace commun = . commun == 0 | commun == 8 | commun == 9 ;
replace commun10 = . commun10 == 0 | commun10 == 8 | commun10 == 9 ;
replace russia = . russia == -1 ;
replace japan = . japan == -1 ;
replace england = . england == -1 ;
replace canada = . canada == -1 ;
replace brazil = . brazil == -1 ;
replace china = . china == -1 ;
replace israel = . israel == -1 ;
replace egypt = . egypt == -1 ;
replace welfare1 = . welfare1 == 0 | welfare1 == 8 | welfare1 == 9 ;
replace welfare2 = . welfare2 == 0 | welfare2 == 8 | welfare2 == 9 ;
replace welfare3 = . welfare3 == 0 | welfare3 == 8 | welfare3 == 9 ;
replace welfare4 = . welfare4 == 0 | welfare4 == 8 | welfare4 == 9 ;
replace welfare5 = . welfare5 == 0 | welfare5 == 8 | welfare5 == 9 ;
replace welfare6 = . welfare6 == 0 | welfare6 == 8 | welfare6 == 9 ;
replace WKCONTCT = . WKCONTCT == 0 | WKCONTCT == 8 | WKCONTCT == 9 ;
replace talkspvs = . talkspvs == 0 | talkspvs == 8 | talkspvs == 9 ;
replace EFFCTSUP = . EFFCTSUP == 0 | EFFCTSUP == 8 | EFFCTSUP == 9 ;
replace cohort = . cohort == 0 | cohort == 9999 ;
replace marcohrt = . marcohrt == 0 | marcohrt == 9999 ;
replace birthmo = . birthmo == 0 | birthmo == 98 | birthmo == 99 ;
replace zodiac = . zodiac == 0 | zodiac == 98 | zodiac == 99 ;
replace inthisp = . inthisp == 0 | inthisp == 98 | inthisp == 99 ;
replace intrace1 = . intrace1 == 0 | intrace1 == 98 | intrace1 == 99 ;
replace intrace2 = . intrace2 == 0 | intrace2 == 98 | intrace2 == 99 ;
replace intrace3 = . intrace3 == 0 | intrace3 == 98 | intrace3 == 99 ;
replace bthgrp1a = . bthgrp1a == 0 | bthgrp1a == 98 | bthgrp1a == 99 ;
replace bthgrp1b = . bthgrp1b == 0 | bthgrp1b == 98 | bthgrp1b == 99 ;
replace bthgrp1c = . bthgrp1c == 0 | bthgrp1c == 98 | bthgrp1c == 99 ;
replace bthgrp1d = . bthgrp1d == 0 | bthgrp1d == 98 | bthgrp1d == 99 ;
replace bthgrp1e = . bthgrp1e == 0 | bthgrp1e == 98 | bthgrp1e == 99 ;
replace bthgrp1f = . bthgrp1f == 0 | bthgrp1f == 98 | bthgrp1f == 99 ;
replace bthgrp2a = . bthgrp2a == 0 | bthgrp2a == 98 | bthgrp2a == 99 ;
replace bthgrp2b = . bthgrp2b == 0 | bthgrp2b == 98 | bthgrp2b == 99 ;
replace bthgrp2c = . bthgrp2c == 0 | bthgrp2c == 98 | bthgrp2c == 99 ;
replace bthgrp2d = . bthgrp2d == 0 | bthgrp2d == 98 | bthgrp2d == 99 ;
replace bthgrp2e = . bthgrp2e == 0 | bthgrp2e == 98 | bthgrp2e == 99 ;
replace bthgrp2f = . bthgrp2f == 0 | bthgrp2f == 98 | bthgrp2f == 99 ;
replace bthgrp3a = . bthgrp3a == 0 | bthgrp3a == 98 | bthgrp3a == 99 ;
replace bthgrp3b = . bthgrp3b == 0 | bthgrp3b == 98 | bthgrp3b == 99 ;
replace bthgrp3c = . bthgrp3c == 0 | bthgrp3c == 98 | bthgrp3c == 99 ;
replace bthgrp3d = . bthgrp3d == 0 | bthgrp3d == 98 | bthgrp3d == 99 ;
replace bthgrp3e = . bthgrp3e == 0 | bthgrp3e == 98 | bthgrp3e == 99 ;
replace bthgrp3f = . bthgrp3f == 0 | bthgrp3f == 98 | bthgrp3f == 99 ;
replace bthgrp4a = . bthgrp4a == 0 | bthgrp4a == 98 | bthgrp4a == 99 ;
replace bthgrp4b = . bthgrp4b == 0 | bthgrp4b == 98 | bthgrp4b == 99 ;
replace bthgrp4c = . bthgrp4c == 0 | bthgrp4c == 98 | bthgrp4c == 99 ;
replace bthgrp4d = . bthgrp4d == 0 | bthgrp4d == 98 | bthgrp4d == 99 ;
replace bthgrp4e = . bthgrp4e == 0 | bthgrp4e == 98 | bthgrp4e == 99 ;
replace bthgrp4f = . bthgrp4f == 0 | bthgrp4f == 98 | bthgrp4f == 99 ;
replace bthgrp5a = . bthgrp5a == 0 | bthgrp5a == 98 | bthgrp5a == 99 ;
replace bthgrp5b = . bthgrp5b == 0 | bthgrp5b == 98 | bthgrp5b == 99 ;
replace bthgrp5c = . bthgrp5c == 0 | bthgrp5c == 98 | bthgrp5c == 99 ;
replace bthgrp5d = . bthgrp5d == 0 | bthgrp5d == 98 | bthgrp5d == 99 ;
replace bthgrp5e = . bthgrp5e == 0 | bthgrp5e == 98 | bthgrp5e == 99 ;
replace bthgrp5f = . bthgrp5f == 0 | bthgrp5f == 98 | bthgrp5f == 99 ;
replace frstgrp1 = . frstgrp1 == 0 | frstgrp1 == 98 | frstgrp1 == 99 ;
replace frstgrp2 = . frstgrp2 == 0 | frstgrp2 == 98 | frstgrp2 == 99 ;
replace frstgrp3 = . frstgrp3 == 0 | frstgrp3 == 98 | frstgrp3 == 99 ;
replace frstgrp4 = . frstgrp4 == 0 | frstgrp4 == 98 | frstgrp4 == 99 ;
replace frstgrp5 = . frstgrp5 == 0 | frstgrp5 == 98 | frstgrp5 == 99 ;
replace whoelse1 = . whoelse1 == 0 | whoelse1 == 8 | whoelse1 == 9 ;
replace whoelse2 = . whoelse2 == 0 | whoelse2 == 8 | whoelse2 == 9 ;
replace whoelse3 = . whoelse3 == 0 | whoelse3 == 8 | whoelse3 == 9 ;
replace whoelse4 = . whoelse4 == 0 | whoelse4 == 8 | whoelse4 == 9 ;
replace whoelse5 = . whoelse5 == 0 | whoelse5 == 8 | whoelse5 == 9 ;
replace whoelse6 = . whoelse6 == 0 | whoelse6 == 8 | whoelse6 == 9 ;
replace saqissp = . saqissp == 0 ;
replace saqsex = . saqsex == 0 ;
replace saqgene = . saqgene == 0 ;
replace intid = . intid == 0 ;
replace feeused = . feeused == 0 | feeused == 8 | feeused == 9 ;
replace feelevel = . feelevel == 0 | feelevel == 998 | feelevel == 999 ;
replace lngthinv = . lngthinv == 0 | lngthinv == 998 | lngthinv == 999 ;
replace intage = . intage == 0 | intage == 99 ;
replace easyget = . easyget == 0 | easyget == 9 ;
replace intethn = . intethn == 0 | intethn == 9 ;
replace mode = . mode == 0 | mode == 8 | mode == 9 ;
replace intsex = . intsex == 0 | intsex == 9 ;
replace intyrs = . intyrs == -1 | intyrs == 99 ;
replace CONSENT = . CONSENT == 0 | CONSENT == 9 ;
replace pilloky = . pilloky == 0 | pilloky == 8 | pilloky == 9 ;
replace popespky = . popespky == 0 | popespky == 8 | popespky == 9 ;
replace polhitoy = . polhitoy == 0 | polhitoy == 8 | polhitoy == 9 ;
replace letdie1y = . letdie1y == 0 | letdie1y == 8 | letdie1y == 9 ;
replace ballot = . ballot == 0 ;
replace version = . version == 0 ;
replace issp = . issp == 0 | issp == 8 | issp == 9 ;
replace sampcode = . sampcode == 0 ;
replace phase = . phase == 0 ;
replace spanself = . spanself == 0 | spanself == 8 | spanself == 9 ;
replace spanint = . spanint == 0 | spanint == 8 | spanint == 9 ;
replace spaneng = . spaneng == 0 | spaneng == 8 | spaneng == 9 ;
replace RES2006 = . RES2006 == 0 | RES2006 == 8 | RES2006 == 9 ;
replace RES2008 = . RES2008 == 0 | RES2008 == 8 | RES2008 == 9 ;
replace RES2010 = . RES2010 == 0 | RES2010 == 8 | RES2010 == 9 ;
replace cshutyp06 = . cshutyp06 == 0 | cshutyp06 == 8 | cshutyp06 == 9 ;
replace CSHUTYP08 = . CSHUTYP08 == 0 | CSHUTYP08 == 8 | CSHUTYP08 == 9 ;
replace CSHUTYP10 = . CSHUTYP10 == 0 | CSHUTYP10 == 8 | CSHUTYP10 == 9 ;
replace CSHUTYP12 = . CSHUTYP12 == 0 | CSHUTYP12 == 8 | CSHUTYP12 == 9 ;
replace wtss = . wtss == -1 ;
replace wtssnr = . wtssnr == -1 ;
replace wtssall = . wtssall == -1 ;
replace vstrat = . vstrat == -1 ;
replace vpsu = . vpsu == -1 ;
*/


