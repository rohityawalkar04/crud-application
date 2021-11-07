package io.rohit.topic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class TopicService {
//    @Autowired
//    private TopicRepository topicRepository;

//    private List<Topic> topics = new ArrayList<>(Arrays.asList(
//            new Topic("1", "Mathematics", "Algebra Problems"),
//            new Topic("2", "Geology", "Geology Problems"),
//            new Topic("3", "Economics", "Economics Problems"),
//            new Topic("4", "Society", "Society Problems"),
//            new Topic("5", "Env", "Env Problems")
//    ));
//
//    public List<Topic> getAllTopics(){
//        System.out.println("Getting data here ~~~~~~~~~~~~~~~~~~~~~~> ");
//        List<Topic> topics = new ArrayList<>();
//        topicRepository.findAll().forEach(topics::add); // this is a query which will fetch all topics and will convert those in topic instances and get it back
//        //        topics::add is a method reference as lambda
//        return topics;
//    }
//
//    public Topic getTopic(String id){
//        return topics.stream().filter(t -> t.getId().equals(id)).findFirst().get();
//    }
//
//    public void addTopic(Topic topic){
//        topicRepository.save(topic);
//        //        topics.add(topic);
//    }
//
//    public void updateTopic(String id, Topic topic) {
//        for(int i=0; i<topics.size(); i++){
//            Topic t = topics.get(i);
//            if(t.getId().equals(id)){
//                topics.set(i, topic);
//                return;
//            }
//        }
//    }
//
//    public void deleteTopic(String id){
//        topics.removeIf(t -> t.getId().equals(id));
//    }
}
