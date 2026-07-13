public class Patient {
    private String patient_id;
    private String name;
    private Date dob;
    private String gender;
    private String address;
    private String phone;
    private String email;

    private List<Appointment> appointments = new ArrayList<>(

);

    private List<Bill> bills = new ArrayList<>(

);
    private List<MedicalTests> medicalTests = new ArrayList<>(

);
}

public class Doctor {
    private String doctor_id;
    private String name;
    private String specialty;

    private List<Appointment> appointments = new ArrayList<>();
}


public class Staff {
    private String staff_id;
    private String name;
    private int role;

    private List<Payment> payments = new ArrayList<>();

    private List<Admission> admissions = new ArrayList<>();

    private List<MedicalTests> medicalTests = new ArrayList<>();

}

public class Appointment {
    private String appointment_id;
    private int time; 
    private String status;

    private Doctor doctor;

    private Patient patient;

}

public class Bill {
    private String bill_id;
    private Date issue_date;
    private double total_amount;
    private int is_paid; 

    private Patient patient;

    private List<Payment> payments = new ArrayList<>(

);
}

public class Payment {
    private String payment_id;
    private String payment_type;
    private double amount;
    private Date payment_date;

    private Bill bill;

    private Staff staff;
}

public class MedicalTests {
    private String test_id;
    private String test_type;
    private int test_time; 
    private int result;

    private Patient patient;

    private Staff staff;
}

public class Admission {
    private String admission_id;
    private Date admission_date;
    private Date discharge_date;
    private Staff staff;
        private Bed bed;
}

public class Ward {
    private String ward_id;
    private String name;

    private List<Bed> beds = new ArrayList<>(

);

}

public class Bed {
    private String bed_id;
    private String bed_number;
    private int is_occupied; 
    private Ward ward;
    private Admission admission;
    
}
