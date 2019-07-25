package com.lzm.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SupportExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SupportExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andUseridIsNull() {
            addCriterion("userid is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userid is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(Integer value) {
            addCriterion("userid =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(Integer value) {
            addCriterion("userid <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(Integer value) {
            addCriterion("userid >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("userid >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(Integer value) {
            addCriterion("userid <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(Integer value) {
            addCriterion("userid <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<Integer> values) {
            addCriterion("userid in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<Integer> values) {
            addCriterion("userid not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(Integer value1, Integer value2) {
            addCriterion("userid between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("userid not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andProjectidIsNull() {
            addCriterion("projectid is null");
            return (Criteria) this;
        }

        public Criteria andProjectidIsNotNull() {
            addCriterion("projectid is not null");
            return (Criteria) this;
        }

        public Criteria andProjectidEqualTo(Integer value) {
            addCriterion("projectid =", value, "projectid");
            return (Criteria) this;
        }

        public Criteria andProjectidNotEqualTo(Integer value) {
            addCriterion("projectid <>", value, "projectid");
            return (Criteria) this;
        }

        public Criteria andProjectidGreaterThan(Integer value) {
            addCriterion("projectid >", value, "projectid");
            return (Criteria) this;
        }

        public Criteria andProjectidGreaterThanOrEqualTo(Integer value) {
            addCriterion("projectid >=", value, "projectid");
            return (Criteria) this;
        }

        public Criteria andProjectidLessThan(Integer value) {
            addCriterion("projectid <", value, "projectid");
            return (Criteria) this;
        }

        public Criteria andProjectidLessThanOrEqualTo(Integer value) {
            addCriterion("projectid <=", value, "projectid");
            return (Criteria) this;
        }

        public Criteria andProjectidIn(List<Integer> values) {
            addCriterion("projectid in", values, "projectid");
            return (Criteria) this;
        }

        public Criteria andProjectidNotIn(List<Integer> values) {
            addCriterion("projectid not in", values, "projectid");
            return (Criteria) this;
        }

        public Criteria andProjectidBetween(Integer value1, Integer value2) {
            addCriterion("projectid between", value1, value2, "projectid");
            return (Criteria) this;
        }

        public Criteria andProjectidNotBetween(Integer value1, Integer value2) {
            addCriterion("projectid not between", value1, value2, "projectid");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNull() {
            addCriterion("money is null");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNotNull() {
            addCriterion("money is not null");
            return (Criteria) this;
        }

        public Criteria andMoneyEqualTo(Double value) {
            addCriterion("money =", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotEqualTo(Double value) {
            addCriterion("money <>", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThan(Double value) {
            addCriterion("money >", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("money >=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThan(Double value) {
            addCriterion("money <", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThanOrEqualTo(Double value) {
            addCriterion("money <=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyIn(List<Double> values) {
            addCriterion("money in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotIn(List<Double> values) {
            addCriterion("money not in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyBetween(Double value1, Double value2) {
            addCriterion("money between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotBetween(Double value1, Double value2) {
            addCriterion("money not between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andStarttimeIsNull() {
            addCriterion("starttime is null");
            return (Criteria) this;
        }

        public Criteria andStarttimeIsNotNull() {
            addCriterion("starttime is not null");
            return (Criteria) this;
        }

        public Criteria andStarttimeEqualTo(Date value) {
            addCriterion("starttime =", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeNotEqualTo(Date value) {
            addCriterion("starttime <>", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeGreaterThan(Date value) {
            addCriterion("starttime >", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeGreaterThanOrEqualTo(Date value) {
            addCriterion("starttime >=", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeLessThan(Date value) {
            addCriterion("starttime <", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeLessThanOrEqualTo(Date value) {
            addCriterion("starttime <=", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeIn(List<Date> values) {
            addCriterion("starttime in", values, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeNotIn(List<Date> values) {
            addCriterion("starttime not in", values, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeBetween(Date value1, Date value2) {
            addCriterion("starttime between", value1, value2, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeNotBetween(Date value1, Date value2) {
            addCriterion("starttime not between", value1, value2, "starttime");
            return (Criteria) this;
        }

        public Criteria andIspayIsNull() {
            addCriterion("ispay is null");
            return (Criteria) this;
        }

        public Criteria andIspayIsNotNull() {
            addCriterion("ispay is not null");
            return (Criteria) this;
        }

        public Criteria andIspayEqualTo(Integer value) {
            addCriterion("ispay =", value, "ispay");
            return (Criteria) this;
        }

        public Criteria andIspayNotEqualTo(Integer value) {
            addCriterion("ispay <>", value, "ispay");
            return (Criteria) this;
        }

        public Criteria andIspayGreaterThan(Integer value) {
            addCriterion("ispay >", value, "ispay");
            return (Criteria) this;
        }

        public Criteria andIspayGreaterThanOrEqualTo(Integer value) {
            addCriterion("ispay >=", value, "ispay");
            return (Criteria) this;
        }

        public Criteria andIspayLessThan(Integer value) {
            addCriterion("ispay <", value, "ispay");
            return (Criteria) this;
        }

        public Criteria andIspayLessThanOrEqualTo(Integer value) {
            addCriterion("ispay <=", value, "ispay");
            return (Criteria) this;
        }

        public Criteria andIspayIn(List<Integer> values) {
            addCriterion("ispay in", values, "ispay");
            return (Criteria) this;
        }

        public Criteria andIspayNotIn(List<Integer> values) {
            addCriterion("ispay not in", values, "ispay");
            return (Criteria) this;
        }

        public Criteria andIspayBetween(Integer value1, Integer value2) {
            addCriterion("ispay between", value1, value2, "ispay");
            return (Criteria) this;
        }

        public Criteria andIspayNotBetween(Integer value1, Integer value2) {
            addCriterion("ispay not between", value1, value2, "ispay");
            return (Criteria) this;
        }

        public Criteria andTryoutIsNull() {
            addCriterion("tryout is null");
            return (Criteria) this;
        }

        public Criteria andTryoutIsNotNull() {
            addCriterion("tryout is not null");
            return (Criteria) this;
        }

        public Criteria andTryoutEqualTo(Integer value) {
            addCriterion("tryout =", value, "tryout");
            return (Criteria) this;
        }

        public Criteria andTryoutNotEqualTo(Integer value) {
            addCriterion("tryout <>", value, "tryout");
            return (Criteria) this;
        }

        public Criteria andTryoutGreaterThan(Integer value) {
            addCriterion("tryout >", value, "tryout");
            return (Criteria) this;
        }

        public Criteria andTryoutGreaterThanOrEqualTo(Integer value) {
            addCriterion("tryout >=", value, "tryout");
            return (Criteria) this;
        }

        public Criteria andTryoutLessThan(Integer value) {
            addCriterion("tryout <", value, "tryout");
            return (Criteria) this;
        }

        public Criteria andTryoutLessThanOrEqualTo(Integer value) {
            addCriterion("tryout <=", value, "tryout");
            return (Criteria) this;
        }

        public Criteria andTryoutIn(List<Integer> values) {
            addCriterion("tryout in", values, "tryout");
            return (Criteria) this;
        }

        public Criteria andTryoutNotIn(List<Integer> values) {
            addCriterion("tryout not in", values, "tryout");
            return (Criteria) this;
        }

        public Criteria andTryoutBetween(Integer value1, Integer value2) {
            addCriterion("tryout between", value1, value2, "tryout");
            return (Criteria) this;
        }

        public Criteria andTryoutNotBetween(Integer value1, Integer value2) {
            addCriterion("tryout not between", value1, value2, "tryout");
            return (Criteria) this;
        }

        public Criteria andIswinIsNull() {
            addCriterion("iswin is null");
            return (Criteria) this;
        }

        public Criteria andIswinIsNotNull() {
            addCriterion("iswin is not null");
            return (Criteria) this;
        }

        public Criteria andIswinEqualTo(Integer value) {
            addCriterion("iswin =", value, "iswin");
            return (Criteria) this;
        }

        public Criteria andIswinNotEqualTo(Integer value) {
            addCriterion("iswin <>", value, "iswin");
            return (Criteria) this;
        }

        public Criteria andIswinGreaterThan(Integer value) {
            addCriterion("iswin >", value, "iswin");
            return (Criteria) this;
        }

        public Criteria andIswinGreaterThanOrEqualTo(Integer value) {
            addCriterion("iswin >=", value, "iswin");
            return (Criteria) this;
        }

        public Criteria andIswinLessThan(Integer value) {
            addCriterion("iswin <", value, "iswin");
            return (Criteria) this;
        }

        public Criteria andIswinLessThanOrEqualTo(Integer value) {
            addCriterion("iswin <=", value, "iswin");
            return (Criteria) this;
        }

        public Criteria andIswinIn(List<Integer> values) {
            addCriterion("iswin in", values, "iswin");
            return (Criteria) this;
        }

        public Criteria andIswinNotIn(List<Integer> values) {
            addCriterion("iswin not in", values, "iswin");
            return (Criteria) this;
        }

        public Criteria andIswinBetween(Integer value1, Integer value2) {
            addCriterion("iswin between", value1, value2, "iswin");
            return (Criteria) this;
        }

        public Criteria andIswinNotBetween(Integer value1, Integer value2) {
            addCriterion("iswin not between", value1, value2, "iswin");
            return (Criteria) this;
        }

        public Criteria andInvitecodeIsNull() {
            addCriterion("invitecode is null");
            return (Criteria) this;
        }

        public Criteria andInvitecodeIsNotNull() {
            addCriterion("invitecode is not null");
            return (Criteria) this;
        }

        public Criteria andInvitecodeEqualTo(String value) {
            addCriterion("invitecode =", value, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeNotEqualTo(String value) {
            addCriterion("invitecode <>", value, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeGreaterThan(String value) {
            addCriterion("invitecode >", value, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeGreaterThanOrEqualTo(String value) {
            addCriterion("invitecode >=", value, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeLessThan(String value) {
            addCriterion("invitecode <", value, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeLessThanOrEqualTo(String value) {
            addCriterion("invitecode <=", value, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeLike(String value) {
            addCriterion("invitecode like", value, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeNotLike(String value) {
            addCriterion("invitecode not like", value, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeIn(List<String> values) {
            addCriterion("invitecode in", values, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeNotIn(List<String> values) {
            addCriterion("invitecode not in", values, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeBetween(String value1, String value2) {
            addCriterion("invitecode between", value1, value2, "invitecode");
            return (Criteria) this;
        }

        public Criteria andInvitecodeNotBetween(String value1, String value2) {
            addCriterion("invitecode not between", value1, value2, "invitecode");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}