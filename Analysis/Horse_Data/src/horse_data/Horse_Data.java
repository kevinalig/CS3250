/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package horse_data;

import java.util.ArrayList;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class Horse_Data {

    private static final String COMMA_DELIMITER = ",";
    private static final String NEW_LINE_SEPARATOR = "\n";
    private static final String FILE_HEADER = "value, "
            + "var1, var2, var3, var4, var5, var6, var7, var8, var9, var10, "
            + "var11, var12, var13, var14, var15, var16, var17, var18, var19,"
            + "var20";

    /**
     * @param args the command line arguments
     * @throws java.io.FileNotFoundException
     */
    public static void main(String[] args) throws FileNotFoundException, IOException {
        Scanner scanner = new Scanner(new File("money_data.csv"));
        ArrayList<String> data = new ArrayList<>();
        String fileName;

        while (scanner.hasNext()) {
            data.add(scanner.next());
        }
        String[][] result = new String[10442][11];
        for (int i = 0; i < data.size(); i++) {
            for (int j = 0; j < 11; j++) {
                String temp = data.get(i);
                String[] values = temp.split(",");
                result[i][j] = values[j];
            }
        }
        double[][] horse1 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse1[i][0] = Double.parseDouble(result[i][1]);
        }
        for (int i = 2; i < horse1.length; i++) {
            double t1, t2;
            t1 = horse1[i][0];
            t2 = horse1[i - 1][0];
            horse1[i][1] = t1 - t2;
            for (int k = 2; k < horse1[i].length; k++) {
                horse1[i][k] = horse1[i - 1][k - 1];
            }
        }
        fileName = "horse1.csv";
        CSVWriteFile(horse1, fileName);

        double[][] horse2 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse2[i][0] = Double.parseDouble(result[i][2]);
        }
        for (int i = 2; i < horse2.length; i++) {
            double t1, t2;
            t1 = horse2[i][0];
            t2 = horse2[i - 1][0];
            horse2[i][1] = t1 - t2;
            for (int k = 2; k < horse2[i].length; k++) {
                horse2[i][k] = horse2[i - 1][k - 1];
            }
        }
        fileName = "horse2.csv";
        CSVWriteFile(horse2, fileName);

        double[][] horse3 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse3[i][0] = Double.parseDouble(result[i][3]);
        }
        for (int i = 2; i < horse3.length; i++) {
            double t1, t2;
            t1 = horse3[i][0];
            t2 = horse3[i - 1][0];
            horse3[i][1] = t1 - t2;
            for (int k = 2; k < horse3[i].length; k++) {
                horse3[i][k] = horse3[i - 1][k - 1];
            }
        }
        fileName = "horse3.csv";
        CSVWriteFile(horse3, fileName);

        double[][] horse4 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse4[i][0] = Double.parseDouble(result[i][4]);
        }
        for (int i = 2; i < horse4.length; i++) {
            double t1, t2;
            t1 = horse4[i][0];
            t2 = horse4[i - 1][0];
            horse4[i][1] = t1 - t2;
            for (int k = 2; k < horse4[i].length; k++) {
                horse4[i][k] = horse4[i - 1][k - 1];
            }
        }
        fileName = "horse4.csv";
        CSVWriteFile(horse4, fileName);

        double[][] horse5 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse5[i][0] = Double.parseDouble(result[i][5]);
        }
        for (int i = 2; i < horse5.length; i++) {
            double t1, t2;
            t1 = horse5[i][0];
            t2 = horse5[i - 1][0];
            horse5[i][1] = t1 - t2;
            for (int k = 2; k < horse5[i].length; k++) {
                horse5[i][k] = horse5[i - 1][k - 1];
            }
        }
        fileName = "horse5.csv";
        CSVWriteFile(horse5, fileName);

        double[][] horse6 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse6[i][0] = Double.parseDouble(result[i][6]);
        }
        for (int i = 2; i < horse6.length; i++) {
            double t1, t2;
            t1 = horse6[i][0];
            t2 = horse6[i - 1][0];
            horse6[i][1] = t1 - t2;
            for (int k = 2; k < horse6[i].length; k++) {
                horse6[i][k] = horse6[i - 1][k - 1];
            }
        }
        fileName = "horse6.csv";
        CSVWriteFile(horse6, fileName);

        double[][] horse7 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse7[i][0] = Double.parseDouble(result[i][7]);
        }
        for (int i = 2; i < horse7.length; i++) {
            double t1, t2;
            t1 = horse7[i][0];
            t2 = horse7[i - 1][0];
            horse7[i][1] = t1 - t2;
            for (int k = 2; k < horse7[i].length; k++) {
                horse7[i][k] = horse7[i - 1][k - 1];
            }
        }
        fileName = "horse7.csv";
        CSVWriteFile(horse7, fileName);

        double[][] horse8 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse8[i][0] = Double.parseDouble(result[i][8]);
        }
        for (int i = 2; i < horse8.length; i++) {
            double t1, t2;
            t1 = horse8[i][0];
            t2 = horse8[i - 1][0];
            horse8[i][1] = t1 - t2;
            for (int k = 2; k < horse8[i].length; k++) {
                horse8[i][k] = horse8[i - 1][k - 1];
            }
        }
        fileName = "horse8.csv";
        CSVWriteFile(horse8, fileName);

        double[][] horse9 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse9[i][0] = Double.parseDouble(result[i][9]);
        }
        for (int i = 2; i < horse9.length; i++) {
            double t1, t2;
            t1 = horse9[i][0];
            t2 = horse9[i - 1][0];
            horse9[i][1] = t1 - t2;
            for (int k = 2; k < horse9[i].length; k++) {
                horse9[i][k] = horse9[i - 1][k - 1];
            }
        }
        fileName = "horse9.csv";
        CSVWriteFile(horse9, fileName);

        double[][] horse10 = new double[10442][21];
        for (int i = 1; i < result.length; i++) {
            horse10[i][0] = Double.parseDouble(result[i][10]);
        }
        for (int i = 2; i < horse10.length; i++) {
            double t1, t2;
            t1 = horse10[i][0];
            t2 = horse10[i - 1][0];
            horse10[i][1] = t1 - t2;
            for (int k = 2; k < horse10[i].length; k++) {
                horse10[i][k] = horse10[i - 1][k - 1];
            }
        }
        fileName = "horse10.csv";
        CSVWriteFile(horse10, fileName);

//        for (int i = 0; i < horse10.length; i++) {
//            System.out.println(Arrays.toString(horse10[i]));
//        }
    }

    private static void CSVWriteFile(double[][] data, String fileName) {
        FileWriter fileWriter = null;
        try {
            fileWriter = new FileWriter(fileName);
            fileWriter.append(FILE_HEADER);
            fileWriter.append(NEW_LINE_SEPARATOR);
            for (double[] data1 : data) {
                for (int n = 0; n < data1.length; n++) {
                    fileWriter.append(Double.toString(data1[n]));
                    fileWriter.append(COMMA_DELIMITER);
                }
                fileWriter.append(NEW_LINE_SEPARATOR);
            }
            System.out.println("CSV file " + fileName + " success.");
        } catch (Exception e) {
            System.out.println("Error in fileWriter " + fileName);
        } finally {
            try {
                fileWriter.flush();
                fileWriter.close();
            } catch (IOException e) {
                System.out.println("Error flushing/closing fileWriter");
            }
        }
    }

}
