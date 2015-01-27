package kr.go.rcms.web.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

import jex.util.code.JexCodeManager;

public class CodeUtil {
	
	/**
	 * �ش� �׷쿡 ���� �ִ� Key ������ ��ȯ�Ѵ�. 
	 * @param group
	 * @return
	 */
	public static Iterator<String> getKeys(String group)
	{
		return JexCodeManager.getKeys(group);
	}	
	
	/**
	 * �ش� �ڵ带 ��ȯ�Ѵ�.
	 * @param group
	 * @param key
	 * @param isName ('true' �Һз���, 'false' �Һз�����)
	 * @return
	 */
	public static String getCode(String group, String key, Boolean isName)
	{
		String result = (isName)?JexCodeManager.getCode(group, key):JexCodeManager.getSubCode(group, key);
		return (result !=null)?result:"";
	}	
	
	/**
	 * �ش� �ڵ带 ��ȯ�Ѵ�.
	 * @param group
	 * @param key
	 * @return
	 */
	public static String getCode(String group, String key)
	{
		return getCode(group, key, true);
	}
	
	/**
	 * �ش� �׷쿡 ���� �ִ� Key��  �ڵ� ���� ��θ� ��ȯ�Ѵ�. 
	 * @param group
	 * @return
	 */	
	public static HashMap<String, String> getKeyCode(String group) {
	
		HashMap<String, String> map = new HashMap<String, String>();
		
		Iterator<String> itr = getKeys(group);
		while (itr.hasNext()) {
			String key = itr.next();
			map.put(key, getCode(group, key));
		}
		
		return map;
	}
	
	/**
	 * ��ȹ�������� ��� ����
	 * @param group
	 * @return Hashtable<String, String>
	 */	
	public static Hashtable<String, String> getItxpMapList(String group) {
		
		Hashtable<String, String> map = new Hashtable<String, String>();
		
		if(!"".equals(group)){
			switch (Integer.parseInt(group)) {
				case	1: map.put("B0201","�����ü���������");break;
				case	2: map.put("B0202","����Ȱ����");break;
				case	3: map.put("B0202","����Ȱ����");break;
				case	4: map.put("B0202","����Ȱ����");break;
				case	5: map.put("B0101","�����ΰǺ�"); break;
				case	6: map.put("B0202","����Ȱ����");break;
				case	7: map.put("B0203","��������");break;
				case	8: map.put("B0301","������");break;
				case	9: map.put("B0401","��Ź�������ߺ�");break;
				case   10: map.put("B0102","�ܺ��ΰǺ�");break;
				default: map.put("", "");break;
			}
		}
		return map;
	}
	
	/**
	 * ��ȹ�������� ��� ����
	 * @param group
	 * @return Hashtable<String, String>
	 */	
	public static Hashtable<String, String> getItxpPlanMapList(String itxpCd) {
		
		Hashtable<String, String> map = new Hashtable<String, String>();
		
		if( "B0101".equals(itxpCd) ){
			map.put("05", "�����ΰǺ�");
		}
		
		if( "B0102".equals(itxpCd) ){
			map.put("10", "�ܺ��ΰǺ�");
		}
		
		if( "B0201".equals(itxpCd) ){
			map.put("01", "�����ü���������");
		}
		
		if( "B0202".equals(itxpCd) ){
			map.put("02", "���忩��");
			map.put("03", "ȸ�Ǻ�");
			map.put("04", "�Ļ��");
			map.put("06", "��Ÿ����Ȱ����");
		}
		
		if( "B0203".equals(itxpCd) ){
			map.put("07", "��������");
		}
		
		if( "B0301".equals(itxpCd) ){
			map.put("08", "������");
		}
		
		if( "B0401".equals(itxpCd) ){
			map.put("09", "��Ź�������ߺ�");
		}
		
		return map;
	}
	
	/**
	 * ��ȹ�������� ��� �������̺�
	 * @param group
	 * @return Hashtable<String, String>
	 */
	public static Hashtable<String, String> getCbPlanBizDvCd(Hashtable<String, String> itxpCd){
		Hashtable<String, String> ht = new Hashtable<String, String>();
		
		if(itxpCd==null) return ht;
		
		for (String s : itxpCd.keySet()) {
			ht.putAll(getItxpPlanMapList(s));
			/*
			Hashtable<String, String> htTmp = getItxpPlanMapList(s);
			for(String s1 : htTmp.keySet()){
				ht.put(s1, htTmp.get(s1));
			}
			*/
		}

		return ht;
	}
	
	/**
	 * �ش� �׷쿡 ���� �ִ� Key��  �ڵ� ���� ��θ� ������ ��ȯ�Ѵ�. 
	 * @param group
	 * @param comparetype ���ı��ذ� ('key','code')
	 * @param sortorder ���Ĺ�� ('ASC', 'DESC')
	 * @param isName ('true' �Һз���, 'false' �Һз�����)
	 * @return
	 */		
	@SuppressWarnings("unchecked")
	public static List<HashMap<String, String>> getKeyCode(String group, String comparetype, String sortorder, Boolean isName) {
		
		List<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
		
		Iterator<String> itr = getKeys(group);
		while (itr.hasNext()) {
			HashMap<String, String> map = new HashMap<String, String>();
			String key = itr.next();
			map.put("key", key);
			map.put("code", getCode(group, key, isName));
			
			list.add(map);
		}
		
		Collections.sort(list, new KeyedValueComparator(comparetype, sortorder.toUpperCase()));
		
		return list;
	}

	/**
	 * �ش� �׷쿡 ���� �ִ� Key��  �ڵ� ���� ��θ� ������ ��ȯ�Ѵ�. 
	 * @param group
	 * @param comparetype ���ı��ذ� ('key','code')
	 * @param sortorder ���Ĺ�� ('ASC', 'DESC')
	 * @return
	 */		
	public static List<HashMap<String, String>> getKeyCode(String group, String comparetype, String sortorder) {
		return getKeyCode(group, comparetype, sortorder, true);
	}
	
	@SuppressWarnings({"rawtypes", "unchecked"})
	public static class KeyedValueComparator implements Comparator {
		private String _type = null;
		private String _order = null;
		
		public KeyedValueComparator(String type, String order)
		{
			_type = type;
			_order = order;
		}
		
		@Override
		public int compare(Object o1, Object o2) {
			int result = 0;
			
			HashMap<String, String> kv1 = (HashMap<String, String>) o1;
			HashMap<String, String> kv2 = (HashMap<String, String>) o2;
			
            if (_order.equals("ASC")) {
                result = kv1.get(_type).compareTo(kv2.get(_type));
            }
            else if (_order.equals("DESC")) {
                result = kv2.get(_type).compareTo(kv1.get(_type));
            }
            
			return result;
		}
	}
	
}
