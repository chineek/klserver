package com.withstars.service.impl;


import com.withstars.dao.TopicMapper;
import com.withstars.domain.Topic;
import com.withstars.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopicServiceImpl implements TopicService {

    @Autowired
    public TopicMapper topicDao;

    //获取全部主题
    public List<Topic> getAllTopics() {
        return topicDao.getAllTopics();
    }

    //获取指定id主题
    public Topic selectById(Integer id) {
        Topic topic=topicDao.selectById(id);
        return topic;
    }

    public List<Topic> listMostCommentsTopics() {
        return topicDao.listMostCommentsTopics();
    }

    public boolean addTopic(Topic topic) {
        return topicDao.insert(topic)>0;
    }

    public boolean clickAddOne(Integer id) {
        return topicDao.clickAddOne(id)>0;
    }

    public int getTopicsNum() {
        return topicDao.getTopicsNum();
    }
    public int getUserTopicsNum(int userId) {
        return topicDao.getUserTopicsNum(userId);
    }

    public List<Topic> listTopicsAndUsers() {
        List<Topic> lTopic = topicDao.listTopicsAndUsers();
        for (Topic topic : lTopic) {
            String topicTitle = topic.getTitle();
            if(topicTitle.length() > 24){
                topicTitle = topicTitle.substring(0,23) + "...";
                topic.setTitle(topicTitle);
            }
        }
        return lTopic;
    }

    public List<Topic> listTopicsAndUsersOfTab(Integer tabId) {
        List<Topic> lTopicOfTab = topicDao.listTopicsAndUsersOfTab(tabId);
        for (Topic topic : lTopicOfTab) {
            String topicTitle = topic.getTitle();
            if(topicTitle.length() > 24){
                topicTitle = topicTitle.substring(0,23) + "...";
                topic.setTitle(topicTitle);
            }
        }
        return lTopicOfTab;
    }
}
