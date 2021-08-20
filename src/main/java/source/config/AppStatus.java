package source.config;

public class AppStatus {

    public static final int ActiveFag = 0;
    public static final int DeleteActiveFag = 2;

    public class discount {
        public static final int Approved = 0;
        public static final int Unapproved = 1;
    }

    public class gender {
        public static final int Male = 0;
        public static final int Female = 1;
    }

    public class oto {
        public static final int Approved = 0;
        public static final int Unapproved = 1;
    }

    public class role {
        public static final int Customer = 1;
        public static final int Admin = 2;
    }

    public class user {
        public static final int Active = 0;
        public static final int Disable = 2;
    }

    public class checkout {
        public static final int PreRegistration = 0;
        public static final int Borrowed = 1;
        public static final int OutOfDate = 2;
    }

    public class carCompany {
        public static final int Active = 0;
        public static final int Blocked = 1;
    }

    public class category {
        public static final int Active = 0;
        public static final int Blocked = 1;
    }

    public class banner {
        public static final int Approved = 0;
        public static final int Unapproved = 1;
    }

    public class circulation {
        public static final int UnRegistration = 0;
        public static final int GiveCarBack = 2;
    }

}
