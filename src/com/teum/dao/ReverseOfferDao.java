package com.teum.dao;

import java.util.List;

import com.teum.entity.ReverseOffer;

public interface ReverseOfferDao {

	List<Integer> getRoomIds(int id);

	int insert(ReverseOffer reverseOffer);

}
