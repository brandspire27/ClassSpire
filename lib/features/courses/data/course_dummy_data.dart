import '../../../shared/models/course_model.dart';

final List<CourseModel> dummyCourses = [
  CourseModel(
    id: "1",
    title: "Physics",
    instructor: "Rajesh Sharma",
    thumbnail: "",
    progress: 0.72,
    totalLessons: 25,
    completedLessons: 18,
    totalChapters: 8,
  ),
  CourseModel(
    id: "2",
    title: "Mathematics",
    instructor: "Anjali Gupta",
    thumbnail: "",
    progress: 0.54,
    totalLessons: 22,
    completedLessons: 12,
    totalChapters: 7,
  ),
  CourseModel(
    id: "3",
    title: "Chemistry",
    instructor: "Vikram Singh",
    thumbnail: "",
    progress: 0.28,
    totalLessons: 20,
    completedLessons: 6,
    totalChapters: 6,
  ),
];