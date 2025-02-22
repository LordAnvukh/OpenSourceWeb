/mob/living/carbon/human/verb/hug()
	set name = "Hug"
	set src in oview(1,usr)
	if(!isliving(src) || !isliving(usr))
		return
	if(emote_cooldown > 0)
		return
	emote_cooldown += 3
	src.visible_message("<span class='examinebold'>[usr]</span><span class='examine'> hugs </span><span class='examinebold'> \the [src]</span>")
	if(ishuman(src))
		src.add_event("hug", /datum/happiness_event/hug)
	if(istype(src, /mob/living/carbon/human/monster/arellit))
		var/mob/living/carbon/human/monster/arellit/A = src
		A.tame_attempt(usr)

/mob/living/carbon/human/verb/spitonsomeone()
	set name = "SpitOnSomeone"
	set src in oview(1,usr)
	if(!isliving(src) || !isliving(usr))
		return
	if(emote_cooldown > 0)
		return
	emote_cooldown += 3
	src.visible_message("<span class='examinebold'>[usr]</span><span class='examine'> spits on </span><span class='examinebold'>[src]</span>")
	playsound(src.loc, 'sound/voice/spit.ogg', 50, 0, -1)

/mob/living/carbon/human/verb/bow()
	set name = "Bow"
	set src in oview(9,usr)
	if(!isliving(src) || !isliving(usr))
		return
	if(emote_cooldown > 0)
		return
	emote_cooldown += 3
	src.visible_message("<span class='examinebold'>[usr]</span><span class='examine'> bows to </span><span class='examinebold'>[src]</span>")
	if(ishuman(src))
		if(src.royalty)
			src.add_event("respect", /datum/happiness_event/respect)

