package com.lzm.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProjectExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProjectExample() {
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

        public Criteria andTypeidIsNull() {
            addCriterion("typeid is null");
            return (Criteria) this;
        }

        public Criteria andTypeidIsNotNull() {
            addCriterion("typeid is not null");
            return (Criteria) this;
        }

        public Criteria andTypeidEqualTo(Integer value) {
            addCriterion("typeid =", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidNotEqualTo(Integer value) {
            addCriterion("typeid <>", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidGreaterThan(Integer value) {
            addCriterion("typeid >", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("typeid >=", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidLessThan(Integer value) {
            addCriterion("typeid <", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidLessThanOrEqualTo(Integer value) {
            addCriterion("typeid <=", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidIn(List<Integer> values) {
            addCriterion("typeid in", values, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidNotIn(List<Integer> values) {
            addCriterion("typeid not in", values, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidBetween(Integer value1, Integer value2) {
            addCriterion("typeid between", value1, value2, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidNotBetween(Integer value1, Integer value2) {
            addCriterion("typeid not between", value1, value2, "typeid");
            return (Criteria) this;
        }

        public Criteria andKindidIsNull() {
            addCriterion("kindid is null");
            return (Criteria) this;
        }

        public Criteria andKindidIsNotNull() {
            addCriterion("kindid is not null");
            return (Criteria) this;
        }

        public Criteria andKindidEqualTo(Integer value) {
            addCriterion("kindid =", value, "kindid");
            return (Criteria) this;
        }

        public Criteria andKindidNotEqualTo(Integer value) {
            addCriterion("kindid <>", value, "kindid");
            return (Criteria) this;
        }

        public Criteria andKindidGreaterThan(Integer value) {
            addCriterion("kindid >", value, "kindid");
            return (Criteria) this;
        }

        public Criteria andKindidGreaterThanOrEqualTo(Integer value) {
            addCriterion("kindid >=", value, "kindid");
            return (Criteria) this;
        }

        public Criteria andKindidLessThan(Integer value) {
            addCriterion("kindid <", value, "kindid");
            return (Criteria) this;
        }

        public Criteria andKindidLessThanOrEqualTo(Integer value) {
            addCriterion("kindid <=", value, "kindid");
            return (Criteria) this;
        }

        public Criteria andKindidIn(List<Integer> values) {
            addCriterion("kindid in", values, "kindid");
            return (Criteria) this;
        }

        public Criteria andKindidNotIn(List<Integer> values) {
            addCriterion("kindid not in", values, "kindid");
            return (Criteria) this;
        }

        public Criteria andKindidBetween(Integer value1, Integer value2) {
            addCriterion("kindid between", value1, value2, "kindid");
            return (Criteria) this;
        }

        public Criteria andKindidNotBetween(Integer value1, Integer value2) {
            addCriterion("kindid not between", value1, value2, "kindid");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andIntroduceIsNull() {
            addCriterion("introduce is null");
            return (Criteria) this;
        }

        public Criteria andIntroduceIsNotNull() {
            addCriterion("introduce is not null");
            return (Criteria) this;
        }

        public Criteria andIntroduceEqualTo(String value) {
            addCriterion("introduce =", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceNotEqualTo(String value) {
            addCriterion("introduce <>", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceGreaterThan(String value) {
            addCriterion("introduce >", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceGreaterThanOrEqualTo(String value) {
            addCriterion("introduce >=", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceLessThan(String value) {
            addCriterion("introduce <", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceLessThanOrEqualTo(String value) {
            addCriterion("introduce <=", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceLike(String value) {
            addCriterion("introduce like", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceNotLike(String value) {
            addCriterion("introduce not like", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceIn(List<String> values) {
            addCriterion("introduce in", values, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceNotIn(List<String> values) {
            addCriterion("introduce not in", values, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceBetween(String value1, String value2) {
            addCriterion("introduce between", value1, value2, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceNotBetween(String value1, String value2) {
            addCriterion("introduce not between", value1, value2, "introduce");
            return (Criteria) this;
        }

        public Criteria andDetailIsNull() {
            addCriterion("detail is null");
            return (Criteria) this;
        }

        public Criteria andDetailIsNotNull() {
            addCriterion("detail is not null");
            return (Criteria) this;
        }

        public Criteria andDetailEqualTo(String value) {
            addCriterion("detail =", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailNotEqualTo(String value) {
            addCriterion("detail <>", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailGreaterThan(String value) {
            addCriterion("detail >", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailGreaterThanOrEqualTo(String value) {
            addCriterion("detail >=", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailLessThan(String value) {
            addCriterion("detail <", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailLessThanOrEqualTo(String value) {
            addCriterion("detail <=", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailLike(String value) {
            addCriterion("detail like", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailNotLike(String value) {
            addCriterion("detail not like", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailIn(List<String> values) {
            addCriterion("detail in", values, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailNotIn(List<String> values) {
            addCriterion("detail not in", values, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailBetween(String value1, String value2) {
            addCriterion("detail between", value1, value2, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailNotBetween(String value1, String value2) {
            addCriterion("detail not between", value1, value2, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailvidoIsNull() {
            addCriterion("detailvido is null");
            return (Criteria) this;
        }

        public Criteria andDetailvidoIsNotNull() {
            addCriterion("detailvido is not null");
            return (Criteria) this;
        }

        public Criteria andDetailvidoEqualTo(String value) {
            addCriterion("detailvido =", value, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoNotEqualTo(String value) {
            addCriterion("detailvido <>", value, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoGreaterThan(String value) {
            addCriterion("detailvido >", value, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoGreaterThanOrEqualTo(String value) {
            addCriterion("detailvido >=", value, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoLessThan(String value) {
            addCriterion("detailvido <", value, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoLessThanOrEqualTo(String value) {
            addCriterion("detailvido <=", value, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoLike(String value) {
            addCriterion("detailvido like", value, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoNotLike(String value) {
            addCriterion("detailvido not like", value, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoIn(List<String> values) {
            addCriterion("detailvido in", values, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoNotIn(List<String> values) {
            addCriterion("detailvido not in", values, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoBetween(String value1, String value2) {
            addCriterion("detailvido between", value1, value2, "detailvido");
            return (Criteria) this;
        }

        public Criteria andDetailvidoNotBetween(String value1, String value2) {
            addCriterion("detailvido not between", value1, value2, "detailvido");
            return (Criteria) this;
        }

        public Criteria andRuleIsNull() {
            addCriterion("rule is null");
            return (Criteria) this;
        }

        public Criteria andRuleIsNotNull() {
            addCriterion("rule is not null");
            return (Criteria) this;
        }

        public Criteria andRuleEqualTo(String value) {
            addCriterion("rule =", value, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleNotEqualTo(String value) {
            addCriterion("rule <>", value, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleGreaterThan(String value) {
            addCriterion("rule >", value, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleGreaterThanOrEqualTo(String value) {
            addCriterion("rule >=", value, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleLessThan(String value) {
            addCriterion("rule <", value, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleLessThanOrEqualTo(String value) {
            addCriterion("rule <=", value, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleLike(String value) {
            addCriterion("rule like", value, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleNotLike(String value) {
            addCriterion("rule not like", value, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleIn(List<String> values) {
            addCriterion("rule in", values, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleNotIn(List<String> values) {
            addCriterion("rule not in", values, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleBetween(String value1, String value2) {
            addCriterion("rule between", value1, value2, "rule");
            return (Criteria) this;
        }

        public Criteria andRuleNotBetween(String value1, String value2) {
            addCriterion("rule not between", value1, value2, "rule");
            return (Criteria) this;
        }

        public Criteria andImageIsNull() {
            addCriterion("image is null");
            return (Criteria) this;
        }

        public Criteria andImageIsNotNull() {
            addCriterion("image is not null");
            return (Criteria) this;
        }

        public Criteria andImageEqualTo(String value) {
            addCriterion("image =", value, "image");
            return (Criteria) this;
        }

        public Criteria andImageNotEqualTo(String value) {
            addCriterion("image <>", value, "image");
            return (Criteria) this;
        }

        public Criteria andImageGreaterThan(String value) {
            addCriterion("image >", value, "image");
            return (Criteria) this;
        }

        public Criteria andImageGreaterThanOrEqualTo(String value) {
            addCriterion("image >=", value, "image");
            return (Criteria) this;
        }

        public Criteria andImageLessThan(String value) {
            addCriterion("image <", value, "image");
            return (Criteria) this;
        }

        public Criteria andImageLessThanOrEqualTo(String value) {
            addCriterion("image <=", value, "image");
            return (Criteria) this;
        }

        public Criteria andImageLike(String value) {
            addCriterion("image like", value, "image");
            return (Criteria) this;
        }

        public Criteria andImageNotLike(String value) {
            addCriterion("image not like", value, "image");
            return (Criteria) this;
        }

        public Criteria andImageIn(List<String> values) {
            addCriterion("image in", values, "image");
            return (Criteria) this;
        }

        public Criteria andImageNotIn(List<String> values) {
            addCriterion("image not in", values, "image");
            return (Criteria) this;
        }

        public Criteria andImageBetween(String value1, String value2) {
            addCriterion("image between", value1, value2, "image");
            return (Criteria) this;
        }

        public Criteria andImageNotBetween(String value1, String value2) {
            addCriterion("image not between", value1, value2, "image");
            return (Criteria) this;
        }

        public Criteria andImagelistIsNull() {
            addCriterion("imagelist is null");
            return (Criteria) this;
        }

        public Criteria andImagelistIsNotNull() {
            addCriterion("imagelist is not null");
            return (Criteria) this;
        }

        public Criteria andImagelistEqualTo(String value) {
            addCriterion("imagelist =", value, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistNotEqualTo(String value) {
            addCriterion("imagelist <>", value, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistGreaterThan(String value) {
            addCriterion("imagelist >", value, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistGreaterThanOrEqualTo(String value) {
            addCriterion("imagelist >=", value, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistLessThan(String value) {
            addCriterion("imagelist <", value, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistLessThanOrEqualTo(String value) {
            addCriterion("imagelist <=", value, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistLike(String value) {
            addCriterion("imagelist like", value, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistNotLike(String value) {
            addCriterion("imagelist not like", value, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistIn(List<String> values) {
            addCriterion("imagelist in", values, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistNotIn(List<String> values) {
            addCriterion("imagelist not in", values, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistBetween(String value1, String value2) {
            addCriterion("imagelist between", value1, value2, "imagelist");
            return (Criteria) this;
        }

        public Criteria andImagelistNotBetween(String value1, String value2) {
            addCriterion("imagelist not between", value1, value2, "imagelist");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyIsNull() {
            addCriterion("needmoney is null");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyIsNotNull() {
            addCriterion("needmoney is not null");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyEqualTo(Double value) {
            addCriterion("needmoney =", value, "needmoney");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyNotEqualTo(Double value) {
            addCriterion("needmoney <>", value, "needmoney");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyGreaterThan(Double value) {
            addCriterion("needmoney >", value, "needmoney");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("needmoney >=", value, "needmoney");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyLessThan(Double value) {
            addCriterion("needmoney <", value, "needmoney");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyLessThanOrEqualTo(Double value) {
            addCriterion("needmoney <=", value, "needmoney");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyIn(List<Double> values) {
            addCriterion("needmoney in", values, "needmoney");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyNotIn(List<Double> values) {
            addCriterion("needmoney not in", values, "needmoney");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyBetween(Double value1, Double value2) {
            addCriterion("needmoney between", value1, value2, "needmoney");
            return (Criteria) this;
        }

        public Criteria andNeedmoneyNotBetween(Double value1, Double value2) {
            addCriterion("needmoney not between", value1, value2, "needmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyIsNull() {
            addCriterion("supmoney is null");
            return (Criteria) this;
        }

        public Criteria andSupmoneyIsNotNull() {
            addCriterion("supmoney is not null");
            return (Criteria) this;
        }

        public Criteria andSupmoneyEqualTo(Double value) {
            addCriterion("supmoney =", value, "supmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyNotEqualTo(Double value) {
            addCriterion("supmoney <>", value, "supmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyGreaterThan(Double value) {
            addCriterion("supmoney >", value, "supmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("supmoney >=", value, "supmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyLessThan(Double value) {
            addCriterion("supmoney <", value, "supmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyLessThanOrEqualTo(Double value) {
            addCriterion("supmoney <=", value, "supmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyIn(List<Double> values) {
            addCriterion("supmoney in", values, "supmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyNotIn(List<Double> values) {
            addCriterion("supmoney not in", values, "supmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyBetween(Double value1, Double value2) {
            addCriterion("supmoney between", value1, value2, "supmoney");
            return (Criteria) this;
        }

        public Criteria andSupmoneyNotBetween(Double value1, Double value2) {
            addCriterion("supmoney not between", value1, value2, "supmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyIsNull() {
            addCriterion("backmoney is null");
            return (Criteria) this;
        }

        public Criteria andBackmoneyIsNotNull() {
            addCriterion("backmoney is not null");
            return (Criteria) this;
        }

        public Criteria andBackmoneyEqualTo(Double value) {
            addCriterion("backmoney =", value, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyNotEqualTo(Double value) {
            addCriterion("backmoney <>", value, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyGreaterThan(Double value) {
            addCriterion("backmoney >", value, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("backmoney >=", value, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyLessThan(Double value) {
            addCriterion("backmoney <", value, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyLessThanOrEqualTo(Double value) {
            addCriterion("backmoney <=", value, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyIn(List<Double> values) {
            addCriterion("backmoney in", values, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyNotIn(List<Double> values) {
            addCriterion("backmoney not in", values, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyBetween(Double value1, Double value2) {
            addCriterion("backmoney between", value1, value2, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackmoneyNotBetween(Double value1, Double value2) {
            addCriterion("backmoney not between", value1, value2, "backmoney");
            return (Criteria) this;
        }

        public Criteria andBackcontentIsNull() {
            addCriterion("backcontent is null");
            return (Criteria) this;
        }

        public Criteria andBackcontentIsNotNull() {
            addCriterion("backcontent is not null");
            return (Criteria) this;
        }

        public Criteria andBackcontentEqualTo(String value) {
            addCriterion("backcontent =", value, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentNotEqualTo(String value) {
            addCriterion("backcontent <>", value, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentGreaterThan(String value) {
            addCriterion("backcontent >", value, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentGreaterThanOrEqualTo(String value) {
            addCriterion("backcontent >=", value, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentLessThan(String value) {
            addCriterion("backcontent <", value, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentLessThanOrEqualTo(String value) {
            addCriterion("backcontent <=", value, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentLike(String value) {
            addCriterion("backcontent like", value, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentNotLike(String value) {
            addCriterion("backcontent not like", value, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentIn(List<String> values) {
            addCriterion("backcontent in", values, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentNotIn(List<String> values) {
            addCriterion("backcontent not in", values, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentBetween(String value1, String value2) {
            addCriterion("backcontent between", value1, value2, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackcontentNotBetween(String value1, String value2) {
            addCriterion("backcontent not between", value1, value2, "backcontent");
            return (Criteria) this;
        }

        public Criteria andBackimageIsNull() {
            addCriterion("backimage is null");
            return (Criteria) this;
        }

        public Criteria andBackimageIsNotNull() {
            addCriterion("backimage is not null");
            return (Criteria) this;
        }

        public Criteria andBackimageEqualTo(String value) {
            addCriterion("backimage =", value, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageNotEqualTo(String value) {
            addCriterion("backimage <>", value, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageGreaterThan(String value) {
            addCriterion("backimage >", value, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageGreaterThanOrEqualTo(String value) {
            addCriterion("backimage >=", value, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageLessThan(String value) {
            addCriterion("backimage <", value, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageLessThanOrEqualTo(String value) {
            addCriterion("backimage <=", value, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageLike(String value) {
            addCriterion("backimage like", value, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageNotLike(String value) {
            addCriterion("backimage not like", value, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageIn(List<String> values) {
            addCriterion("backimage in", values, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageNotIn(List<String> values) {
            addCriterion("backimage not in", values, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageBetween(String value1, String value2) {
            addCriterion("backimage between", value1, value2, "backimage");
            return (Criteria) this;
        }

        public Criteria andBackimageNotBetween(String value1, String value2) {
            addCriterion("backimage not between", value1, value2, "backimage");
            return (Criteria) this;
        }

        public Criteria andBacktimeIsNull() {
            addCriterion("backtime is null");
            return (Criteria) this;
        }

        public Criteria andBacktimeIsNotNull() {
            addCriterion("backtime is not null");
            return (Criteria) this;
        }

        public Criteria andBacktimeEqualTo(Integer value) {
            addCriterion("backtime =", value, "backtime");
            return (Criteria) this;
        }

        public Criteria andBacktimeNotEqualTo(Integer value) {
            addCriterion("backtime <>", value, "backtime");
            return (Criteria) this;
        }

        public Criteria andBacktimeGreaterThan(Integer value) {
            addCriterion("backtime >", value, "backtime");
            return (Criteria) this;
        }

        public Criteria andBacktimeGreaterThanOrEqualTo(Integer value) {
            addCriterion("backtime >=", value, "backtime");
            return (Criteria) this;
        }

        public Criteria andBacktimeLessThan(Integer value) {
            addCriterion("backtime <", value, "backtime");
            return (Criteria) this;
        }

        public Criteria andBacktimeLessThanOrEqualTo(Integer value) {
            addCriterion("backtime <=", value, "backtime");
            return (Criteria) this;
        }

        public Criteria andBacktimeIn(List<Integer> values) {
            addCriterion("backtime in", values, "backtime");
            return (Criteria) this;
        }

        public Criteria andBacktimeNotIn(List<Integer> values) {
            addCriterion("backtime not in", values, "backtime");
            return (Criteria) this;
        }

        public Criteria andBacktimeBetween(Integer value1, Integer value2) {
            addCriterion("backtime between", value1, value2, "backtime");
            return (Criteria) this;
        }

        public Criteria andBacktimeNotBetween(Integer value1, Integer value2) {
            addCriterion("backtime not between", value1, value2, "backtime");
            return (Criteria) this;
        }

        public Criteria andSendmoneyIsNull() {
            addCriterion("sendmoney is null");
            return (Criteria) this;
        }

        public Criteria andSendmoneyIsNotNull() {
            addCriterion("sendmoney is not null");
            return (Criteria) this;
        }

        public Criteria andSendmoneyEqualTo(Double value) {
            addCriterion("sendmoney =", value, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andSendmoneyNotEqualTo(Double value) {
            addCriterion("sendmoney <>", value, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andSendmoneyGreaterThan(Double value) {
            addCriterion("sendmoney >", value, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andSendmoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("sendmoney >=", value, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andSendmoneyLessThan(Double value) {
            addCriterion("sendmoney <", value, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andSendmoneyLessThanOrEqualTo(Double value) {
            addCriterion("sendmoney <=", value, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andSendmoneyIn(List<Double> values) {
            addCriterion("sendmoney in", values, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andSendmoneyNotIn(List<Double> values) {
            addCriterion("sendmoney not in", values, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andSendmoneyBetween(Double value1, Double value2) {
            addCriterion("sendmoney between", value1, value2, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andSendmoneyNotBetween(Double value1, Double value2) {
            addCriterion("sendmoney not between", value1, value2, "sendmoney");
            return (Criteria) this;
        }

        public Criteria andStatueIsNull() {
            addCriterion("statue is null");
            return (Criteria) this;
        }

        public Criteria andStatueIsNotNull() {
            addCriterion("statue is not null");
            return (Criteria) this;
        }

        public Criteria andStatueEqualTo(String value) {
            addCriterion("statue =", value, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueNotEqualTo(String value) {
            addCriterion("statue <>", value, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueGreaterThan(String value) {
            addCriterion("statue >", value, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueGreaterThanOrEqualTo(String value) {
            addCriterion("statue >=", value, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueLessThan(String value) {
            addCriterion("statue <", value, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueLessThanOrEqualTo(String value) {
            addCriterion("statue <=", value, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueLike(String value) {
            addCriterion("statue like", value, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueNotLike(String value) {
            addCriterion("statue not like", value, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueIn(List<String> values) {
            addCriterion("statue in", values, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueNotIn(List<String> values) {
            addCriterion("statue not in", values, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueBetween(String value1, String value2) {
            addCriterion("statue between", value1, value2, "statue");
            return (Criteria) this;
        }

        public Criteria andStatueNotBetween(String value1, String value2) {
            addCriterion("statue not between", value1, value2, "statue");
            return (Criteria) this;
        }

        public Criteria andStartdateIsNull() {
            addCriterion("startdate is null");
            return (Criteria) this;
        }

        public Criteria andStartdateIsNotNull() {
            addCriterion("startdate is not null");
            return (Criteria) this;
        }

        public Criteria andStartdateEqualTo(Date value) {
            addCriterion("startdate =", value, "startdate");
            return (Criteria) this;
        }

        public Criteria andStartdateNotEqualTo(Date value) {
            addCriterion("startdate <>", value, "startdate");
            return (Criteria) this;
        }

        public Criteria andStartdateGreaterThan(Date value) {
            addCriterion("startdate >", value, "startdate");
            return (Criteria) this;
        }

        public Criteria andStartdateGreaterThanOrEqualTo(Date value) {
            addCriterion("startdate >=", value, "startdate");
            return (Criteria) this;
        }

        public Criteria andStartdateLessThan(Date value) {
            addCriterion("startdate <", value, "startdate");
            return (Criteria) this;
        }

        public Criteria andStartdateLessThanOrEqualTo(Date value) {
            addCriterion("startdate <=", value, "startdate");
            return (Criteria) this;
        }

        public Criteria andStartdateIn(List<Date> values) {
            addCriterion("startdate in", values, "startdate");
            return (Criteria) this;
        }

        public Criteria andStartdateNotIn(List<Date> values) {
            addCriterion("startdate not in", values, "startdate");
            return (Criteria) this;
        }

        public Criteria andStartdateBetween(Date value1, Date value2) {
            addCriterion("startdate between", value1, value2, "startdate");
            return (Criteria) this;
        }

        public Criteria andStartdateNotBetween(Date value1, Date value2) {
            addCriterion("startdate not between", value1, value2, "startdate");
            return (Criteria) this;
        }

        public Criteria andDeadlineIsNull() {
            addCriterion("deadline is null");
            return (Criteria) this;
        }

        public Criteria andDeadlineIsNotNull() {
            addCriterion("deadline is not null");
            return (Criteria) this;
        }

        public Criteria andDeadlineEqualTo(Date value) {
            addCriterion("deadline =", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineNotEqualTo(Date value) {
            addCriterion("deadline <>", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineGreaterThan(Date value) {
            addCriterion("deadline >", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineGreaterThanOrEqualTo(Date value) {
            addCriterion("deadline >=", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineLessThan(Date value) {
            addCriterion("deadline <", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineLessThanOrEqualTo(Date value) {
            addCriterion("deadline <=", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineIn(List<Date> values) {
            addCriterion("deadline in", values, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineNotIn(List<Date> values) {
            addCriterion("deadline not in", values, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineBetween(Date value1, Date value2) {
            addCriterion("deadline between", value1, value2, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineNotBetween(Date value1, Date value2) {
            addCriterion("deadline not between", value1, value2, "deadline");
            return (Criteria) this;
        }

        public Criteria andIsableIsNull() {
            addCriterion("isable is null");
            return (Criteria) this;
        }

        public Criteria andIsableIsNotNull() {
            addCriterion("isable is not null");
            return (Criteria) this;
        }

        public Criteria andIsableEqualTo(String value) {
            addCriterion("isable =", value, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableNotEqualTo(String value) {
            addCriterion("isable <>", value, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableGreaterThan(String value) {
            addCriterion("isable >", value, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableGreaterThanOrEqualTo(String value) {
            addCriterion("isable >=", value, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableLessThan(String value) {
            addCriterion("isable <", value, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableLessThanOrEqualTo(String value) {
            addCriterion("isable <=", value, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableLike(String value) {
            addCriterion("isable like", value, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableNotLike(String value) {
            addCriterion("isable not like", value, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableIn(List<String> values) {
            addCriterion("isable in", values, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableNotIn(List<String> values) {
            addCriterion("isable not in", values, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableBetween(String value1, String value2) {
            addCriterion("isable between", value1, value2, "isable");
            return (Criteria) this;
        }

        public Criteria andIsableNotBetween(String value1, String value2) {
            addCriterion("isable not between", value1, value2, "isable");
            return (Criteria) this;
        }

        public Criteria andIsticketIsNull() {
            addCriterion("isticket is null");
            return (Criteria) this;
        }

        public Criteria andIsticketIsNotNull() {
            addCriterion("isticket is not null");
            return (Criteria) this;
        }

        public Criteria andIsticketEqualTo(String value) {
            addCriterion("isticket =", value, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketNotEqualTo(String value) {
            addCriterion("isticket <>", value, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketGreaterThan(String value) {
            addCriterion("isticket >", value, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketGreaterThanOrEqualTo(String value) {
            addCriterion("isticket >=", value, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketLessThan(String value) {
            addCriterion("isticket <", value, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketLessThanOrEqualTo(String value) {
            addCriterion("isticket <=", value, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketLike(String value) {
            addCriterion("isticket like", value, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketNotLike(String value) {
            addCriterion("isticket not like", value, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketIn(List<String> values) {
            addCriterion("isticket in", values, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketNotIn(List<String> values) {
            addCriterion("isticket not in", values, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketBetween(String value1, String value2) {
            addCriterion("isticket between", value1, value2, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsticketNotBetween(String value1, String value2) {
            addCriterion("isticket not between", value1, value2, "isticket");
            return (Criteria) this;
        }

        public Criteria andIsforbidIsNull() {
            addCriterion("isforbid is null");
            return (Criteria) this;
        }

        public Criteria andIsforbidIsNotNull() {
            addCriterion("isforbid is not null");
            return (Criteria) this;
        }

        public Criteria andIsforbidEqualTo(String value) {
            addCriterion("isforbid =", value, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidNotEqualTo(String value) {
            addCriterion("isforbid <>", value, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidGreaterThan(String value) {
            addCriterion("isforbid >", value, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidGreaterThanOrEqualTo(String value) {
            addCriterion("isforbid >=", value, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidLessThan(String value) {
            addCriterion("isforbid <", value, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidLessThanOrEqualTo(String value) {
            addCriterion("isforbid <=", value, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidLike(String value) {
            addCriterion("isforbid like", value, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidNotLike(String value) {
            addCriterion("isforbid not like", value, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidIn(List<String> values) {
            addCriterion("isforbid in", values, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidNotIn(List<String> values) {
            addCriterion("isforbid not in", values, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidBetween(String value1, String value2) {
            addCriterion("isforbid between", value1, value2, "isforbid");
            return (Criteria) this;
        }

        public Criteria andIsforbidNotBetween(String value1, String value2) {
            addCriterion("isforbid not between", value1, value2, "isforbid");
            return (Criteria) this;
        }

        public Criteria andNumsupIsNull() {
            addCriterion("numsup is null");
            return (Criteria) this;
        }

        public Criteria andNumsupIsNotNull() {
            addCriterion("numsup is not null");
            return (Criteria) this;
        }

        public Criteria andNumsupEqualTo(Integer value) {
            addCriterion("numsup =", value, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumsupNotEqualTo(Integer value) {
            addCriterion("numsup <>", value, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumsupGreaterThan(Integer value) {
            addCriterion("numsup >", value, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumsupGreaterThanOrEqualTo(Integer value) {
            addCriterion("numsup >=", value, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumsupLessThan(Integer value) {
            addCriterion("numsup <", value, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumsupLessThanOrEqualTo(Integer value) {
            addCriterion("numsup <=", value, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumsupIn(List<Integer> values) {
            addCriterion("numsup in", values, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumsupNotIn(List<Integer> values) {
            addCriterion("numsup not in", values, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumsupBetween(Integer value1, Integer value2) {
            addCriterion("numsup between", value1, value2, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumsupNotBetween(Integer value1, Integer value2) {
            addCriterion("numsup not between", value1, value2, "numsup");
            return (Criteria) this;
        }

        public Criteria andNumcolIsNull() {
            addCriterion("numcol is null");
            return (Criteria) this;
        }

        public Criteria andNumcolIsNotNull() {
            addCriterion("numcol is not null");
            return (Criteria) this;
        }

        public Criteria andNumcolEqualTo(Integer value) {
            addCriterion("numcol =", value, "numcol");
            return (Criteria) this;
        }

        public Criteria andNumcolNotEqualTo(Integer value) {
            addCriterion("numcol <>", value, "numcol");
            return (Criteria) this;
        }

        public Criteria andNumcolGreaterThan(Integer value) {
            addCriterion("numcol >", value, "numcol");
            return (Criteria) this;
        }

        public Criteria andNumcolGreaterThanOrEqualTo(Integer value) {
            addCriterion("numcol >=", value, "numcol");
            return (Criteria) this;
        }

        public Criteria andNumcolLessThan(Integer value) {
            addCriterion("numcol <", value, "numcol");
            return (Criteria) this;
        }

        public Criteria andNumcolLessThanOrEqualTo(Integer value) {
            addCriterion("numcol <=", value, "numcol");
            return (Criteria) this;
        }

        public Criteria andNumcolIn(List<Integer> values) {
            addCriterion("numcol in", values, "numcol");
            return (Criteria) this;
        }

        public Criteria andNumcolNotIn(List<Integer> values) {
            addCriterion("numcol not in", values, "numcol");
            return (Criteria) this;
        }

        public Criteria andNumcolBetween(Integer value1, Integer value2) {
            addCriterion("numcol between", value1, value2, "numcol");
            return (Criteria) this;
        }

        public Criteria andNumcolNotBetween(Integer value1, Integer value2) {
            addCriterion("numcol not between", value1, value2, "numcol");
            return (Criteria) this;
        }

        public Criteria andBacktypeIsNull() {
            addCriterion("backtype is null");
            return (Criteria) this;
        }

        public Criteria andBacktypeIsNotNull() {
            addCriterion("backtype is not null");
            return (Criteria) this;
        }

        public Criteria andBacktypeEqualTo(String value) {
            addCriterion("backtype =", value, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeNotEqualTo(String value) {
            addCriterion("backtype <>", value, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeGreaterThan(String value) {
            addCriterion("backtype >", value, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeGreaterThanOrEqualTo(String value) {
            addCriterion("backtype >=", value, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeLessThan(String value) {
            addCriterion("backtype <", value, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeLessThanOrEqualTo(String value) {
            addCriterion("backtype <=", value, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeLike(String value) {
            addCriterion("backtype like", value, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeNotLike(String value) {
            addCriterion("backtype not like", value, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeIn(List<String> values) {
            addCriterion("backtype in", values, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeNotIn(List<String> values) {
            addCriterion("backtype not in", values, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeBetween(String value1, String value2) {
            addCriterion("backtype between", value1, value2, "backtype");
            return (Criteria) this;
        }

        public Criteria andBacktypeNotBetween(String value1, String value2) {
            addCriterion("backtype not between", value1, value2, "backtype");
            return (Criteria) this;
        }

        public Criteria andTeambriefIsNull() {
            addCriterion("teambrief is null");
            return (Criteria) this;
        }

        public Criteria andTeambriefIsNotNull() {
            addCriterion("teambrief is not null");
            return (Criteria) this;
        }

        public Criteria andTeambriefEqualTo(String value) {
            addCriterion("teambrief =", value, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefNotEqualTo(String value) {
            addCriterion("teambrief <>", value, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefGreaterThan(String value) {
            addCriterion("teambrief >", value, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefGreaterThanOrEqualTo(String value) {
            addCriterion("teambrief >=", value, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefLessThan(String value) {
            addCriterion("teambrief <", value, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefLessThanOrEqualTo(String value) {
            addCriterion("teambrief <=", value, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefLike(String value) {
            addCriterion("teambrief like", value, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefNotLike(String value) {
            addCriterion("teambrief not like", value, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefIn(List<String> values) {
            addCriterion("teambrief in", values, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefNotIn(List<String> values) {
            addCriterion("teambrief not in", values, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefBetween(String value1, String value2) {
            addCriterion("teambrief between", value1, value2, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeambriefNotBetween(String value1, String value2) {
            addCriterion("teambrief not between", value1, value2, "teambrief");
            return (Criteria) this;
        }

        public Criteria andTeamdetailIsNull() {
            addCriterion("teamdetail is null");
            return (Criteria) this;
        }

        public Criteria andTeamdetailIsNotNull() {
            addCriterion("teamdetail is not null");
            return (Criteria) this;
        }

        public Criteria andTeamdetailEqualTo(String value) {
            addCriterion("teamdetail =", value, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailNotEqualTo(String value) {
            addCriterion("teamdetail <>", value, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailGreaterThan(String value) {
            addCriterion("teamdetail >", value, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailGreaterThanOrEqualTo(String value) {
            addCriterion("teamdetail >=", value, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailLessThan(String value) {
            addCriterion("teamdetail <", value, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailLessThanOrEqualTo(String value) {
            addCriterion("teamdetail <=", value, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailLike(String value) {
            addCriterion("teamdetail like", value, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailNotLike(String value) {
            addCriterion("teamdetail not like", value, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailIn(List<String> values) {
            addCriterion("teamdetail in", values, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailNotIn(List<String> values) {
            addCriterion("teamdetail not in", values, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailBetween(String value1, String value2) {
            addCriterion("teamdetail between", value1, value2, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamdetailNotBetween(String value1, String value2) {
            addCriterion("teamdetail not between", value1, value2, "teamdetail");
            return (Criteria) this;
        }

        public Criteria andTeamtelIsNull() {
            addCriterion("teamtel is null");
            return (Criteria) this;
        }

        public Criteria andTeamtelIsNotNull() {
            addCriterion("teamtel is not null");
            return (Criteria) this;
        }

        public Criteria andTeamtelEqualTo(String value) {
            addCriterion("teamtel =", value, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelNotEqualTo(String value) {
            addCriterion("teamtel <>", value, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelGreaterThan(String value) {
            addCriterion("teamtel >", value, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelGreaterThanOrEqualTo(String value) {
            addCriterion("teamtel >=", value, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelLessThan(String value) {
            addCriterion("teamtel <", value, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelLessThanOrEqualTo(String value) {
            addCriterion("teamtel <=", value, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelLike(String value) {
            addCriterion("teamtel like", value, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelNotLike(String value) {
            addCriterion("teamtel not like", value, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelIn(List<String> values) {
            addCriterion("teamtel in", values, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelNotIn(List<String> values) {
            addCriterion("teamtel not in", values, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelBetween(String value1, String value2) {
            addCriterion("teamtel between", value1, value2, "teamtel");
            return (Criteria) this;
        }

        public Criteria andTeamtelNotBetween(String value1, String value2) {
            addCriterion("teamtel not between", value1, value2, "teamtel");
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