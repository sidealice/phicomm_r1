.class public Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;
.super Ljava/util/logging/Formatter;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method

.method public static left(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{0, date, yy-MM-dd} {0, time, kk:mm:ss.SSSS} "

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v0, v1, v9}, Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;->left(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Throwable occurred: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-array v0, v8, [C

    aput-char v9, v0, v5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_3
    throw v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2
.end method
