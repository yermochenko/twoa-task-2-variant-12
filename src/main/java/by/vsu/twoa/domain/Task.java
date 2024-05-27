package by.vsu.twoa.domain;

import by.vsu.twoa.geometry.Circle;
import by.vsu.twoa.geometry.Point;
import by.vsu.twoa.geometry.Triangle;

import java.util.Date;

public class Task extends Entity {
	private User owner;
	private String name;
	private Date created;
	private Point vertex;
	private Circle circle;
	private Triangle triangle;
	private Circle inscribedCircle;

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Point getVertex() {
		return vertex;
	}

	public void setVertex(Point vertex) {
		this.vertex = vertex;
	}

	public Circle getCircle() {
		return circle;
	}

	public void setCircle(Circle circle) {
		this.circle = circle;
	}

	public Triangle getTriangle() {
		return triangle;
	}

	public void setTriangle(Triangle triangle) {
		this.triangle = triangle;
	}

	public Circle getInscribedCircle() {
		return inscribedCircle;
	}

	public void setInscribedCircle(Circle inscribedCircle) {
		this.inscribedCircle = inscribedCircle;
	}
}
