package com.athensoft.ecomm.entity.catalog;

import com.athensoft.ecomm.entity.catalog.ItemClassStatus;

/**
 * mapping to Table:item_class2
 * (classId, classCode, className, classDesc, classStatusId)
 * @author Athens
 *
 */
public class ItemClassMultiple {
	private int 	classId;
	private int 	parentId;
	private String 	classCode;
	private String 	className;	
	private String 	classDesc;
	private int		classLevel;
	private int 	classStatusId;
	
	
	public ItemClassMultiple(){}
	
	public ItemClassMultiple(int cid, int pid, String classCode, String name, String desc, int status){
		this.classId = cid;
		this.parentId = pid;
		this.classCode = classCode;
		this.className = name;
		this.classDesc = desc;
		this.classStatusId = status;
	}
	
	public ItemClassMultiple(int cid, int pid, String name){
		this.classId = cid;
		this.parentId = pid;
		this.classCode = String.valueOf(cid);
		this.className = name;
		this.classDesc = "desc-"+name;
		this.classStatusId = ItemClassStatus.AVAILABLE;
	}
	
	
	public String getClassCode() {
		return classCode;
	}
	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassDesc() {
		return classDesc;
	}
	public void setClassDesc(String classDescr) {
		this.classDesc = classDescr;
	}
	public int getClassStatusId() {
		return classStatusId;
	}
	public void setClassStatusId(int classStatusId) {
		this.classStatusId = classStatusId;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public int getClassLevel() {
		return classLevel;
	}

	public void setClassLevel(int classLevel) {
		this.classLevel = classLevel;
	}
	
	
}
