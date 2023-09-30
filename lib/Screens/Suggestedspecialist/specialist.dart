import 'package:flutter/material.dart';

class Specialist{
  late final String specialistName;
  late final List<String> name;
  late final List<String> surname;
  late final List<String> location;
  late final List<String> hospital;

  Specialist({
    required this.specialistName,
    required this.name,
    required this.surname,
    required this.location,
    required this.hospital
  });
}

List<Specialist> demoSpecialist = [
  Specialist(
    specialistName: 'anus',
    name: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Jafor Shadik',
      'Prof. Dr. A B M Khurshid Alam',
      'Asst. Prof. Dr. A B M Mahbubur Rahman',
      'Prof. Dr. A H M Shamsul Alam',
      'Dr. A K M Abdul Hamid',
      'Dr. AK M Abul Hossain',
    ],
    surname: [
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
    ],
    location: [
      'Dhaka',
      'Khulna',
      'Rajshahi',
      'Dhaka',
      'Faridpur',
      'Dhaka',
      'Dhaka',
    ],
    hospital: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin'
    ]
  ),
  Specialist(
    specialistName: 'dentist',
    name: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Jafor Shadik',
      'Prof. Dr. A B M Khurshid Alam',
      'Asst. Prof. Dr. A B M Mahbubur Rahman',
      'Prof. Dr. A H M Shamsul Alam',
      'Dr. A K M Abdul Hamid',
      'Dr. AK M Abul Hossain',
    ],
    surname: [
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
    ],
    location: [
      'Dhaka',
      'Khulna',
      'Rajshahi',
      'Dhaka',
      'Faridpur',
      'Dhaka',
      'Dhaka',
    ],
    hospital: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin'
    ]
  ),
  Specialist(
    specialistName: 'brain',
    name: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Jafor Shadik',
      'Prof. Dr. A B M Khurshid Alam',
      'Asst. Prof. Dr. A B M Mahbubur Rahman',
      'Prof. Dr. A H M Shamsul Alam',
      'Dr. A K M Abdul Hamid',
      'Dr. AK M Abul Hossain',
    ],
    surname: [
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
    ],
    location: [
      'Dhaka',
      'Khulna',
      'Rajshahi',
      'Dhaka',
      'Faridpur',
      'Dhaka',
      'Dhaka',
    ],
    hospital: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin'
    ]
  ),
  Specialist(
    specialistName: 'ent',
    name: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Jafor Shadik',
      'Prof. Dr. A B M Khurshid Alam',
      'Asst. Prof. Dr. A B M Mahbubur Rahman',
      'Prof. Dr. A H M Shamsul Alam',
      'Dr. A K M Abdul Hamid',
      'Dr. AK M Abul Hossain',
    ],
    surname: [
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
    ],
    location: [
      'Dhaka',
      'Khulna',
      'Rajshahi',
      'Dhaka',
      'Faridpur',
      'Dhaka',
      'Dhaka',
    ],
    hospital: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin'
    ]
  ),
  Specialist(
    specialistName: 'eye',
    name: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Jafor Shadik',
      'Prof. Dr. A B M Khurshid Alam',
      'Asst. Prof. Dr. A B M Mahbubur Rahman',
      'Prof. Dr. A H M Shamsul Alam',
      'Dr. A K M Abdul Hamid',
      'Dr. AK M Abul Hossain',
    ],
    surname: [
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
    ],
    location: [
      'Dhaka',
      'Khulna',
      'Rajshahi',
      'Dhaka',
      'Faridpur',
      'Dhaka',
      'Dhaka',
    ],
    hospital: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin'
    ]
  ),
  Specialist(
    specialistName: 'gastrologist',
    name: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Jafor Shadik',
      'Prof. Dr. A B M Khurshid Alam',
      'Asst. Prof. Dr. A B M Mahbubur Rahman',
      'Prof. Dr. A H M Shamsul Alam',
      'Dr. A K M Abdul Hamid',
      'Dr. AK M Abul Hossain',
    ],
    surname: [
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
    ],
    location: [
      'Dhaka',
      'Khulna',
      'Rajshahi',
      'Dhaka',
      'Faridpur',
      'Dhaka',
      'Dhaka',
    ],
    hospital: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin'
    ]
  ),
  Specialist(
    specialistName: 'sexologist',
    name: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Jafor Shadik',
      'Prof. Dr. A B M Khurshid Alam',
      'Asst. Prof. Dr. A B M Mahbubur Rahman',
      'Prof. Dr. A H M Shamsul Alam',
      'Dr. A K M Abdul Hamid',
      'Dr. AK M Abul Hossain',
    ],
    surname: [
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
      'MBBS (DU), FCPS (Surgery)',
    ],
    location: [
      'Dhaka',
      'Khulna',
      'Rajshahi',
      'Dhaka',
      'Faridpur',
      'Dhaka',
      'Dhaka',
    ],
    hospital: [
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin',
      'Dr. A B M Abdul Matin'
    ]
  ),
];