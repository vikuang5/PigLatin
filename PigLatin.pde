public void setup() 
{
  String[] lines = {"beast", "dough", "happy", "question", "star", "three", "eagle", "try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
}
public int findFirstVowel(String sWord) {
  for (int i = 0; i < sWord.length(); i++)
    if (sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || 
      sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
      return i;
  return -1;
}

public String pigLatin(String sWord)
{
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else
    if (sWord.charAt(0) == 'a' || sWord.charAt(0) == 'e' || sWord.charAt(0) == 'i' || sWord.charAt(0) == 'o' || sWord.charAt(0) == 'u')
    {
      return sWord + "way";
    } else
      if (sWord.substring(0, 2).equals("qu"))
      {
        return sWord.substring(2, sWord.length()) + "quay";
      } else
        for (int i = 0; i < sWord.length(); i++)
          if (sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
          {
            return sWord.substring(i, sWord.length()) + sWord.substring(0, i) + "ay";
          } 
  {
    return "ERROR!";
  }
}
