JAR = target/frauddetection-0.1.jar
FQCN = spendreport.FraudDetectionJob

compile:
	mvn compile

clean:
	$(shell rm -f cp.txt)
	mvn clean

run: package classpath
	java -cp $(shell cat cp.txt):$(JAR) $(FQCN)

package:
	mvn package

classpath:
	mvn dependency:build-classpath -Dmdep.outputFile=cp.txt
