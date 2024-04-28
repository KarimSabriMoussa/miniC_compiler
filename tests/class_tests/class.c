 

struct a {
    int b;
};

class Course {
    struct a a;
    char name[20];
    int credit;
    int courseWorkScore;

    struct a whereToAttend(){ 
        return a;
    }
    int hasExam(){
        if(courseWorkScore == 100)
            return 0;
        else
            return 1;
    }
}

class VirtualCourse extends Course { 

    char zoomLink[200];
    int isOnZoom;    
    
    struct a  whereToAttend(){
        return a;
    }
}

void main(){
    
    int i;
    class Course a;
    class VirtualCourse b;

    class Course c;
    c = (class Course) b;

    i = c.isOnZoom;
}

