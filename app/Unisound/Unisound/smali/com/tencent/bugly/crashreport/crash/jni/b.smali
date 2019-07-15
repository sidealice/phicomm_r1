.class public final Lcom/tencent/bugly/crashreport/crash/jni/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 292
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 293
    :cond_0
    const-string v1, "get eup record file args error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 337
    :cond_1
    :goto_0
    return-object v0

    .line 297
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "rqd_record.eup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :try_start_1
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_3

    const-string v3, "NATIVE_RQD_REPORT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 307
    :cond_3
    const-string v3, "record read fail! %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 311
    :cond_4
    :try_start_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 314
    :goto_1
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 315
    if-nez v1, :cond_5

    move-object v1, v3

    .line 316
    goto :goto_1

    .line 318
    :cond_5
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 319
    goto :goto_1

    .line 322
    :cond_6
    if-eqz v1, :cond_7

    .line 323
    const-string v3, "record not pair! drop! %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 335
    :catch_1
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 327
    :cond_7
    :try_start_5
    invoke-static {p0, v4, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 332
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 335
    :catch_2
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 328
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 329
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 330
    if-eqz v2, :cond_1

    .line 334
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 335
    :catch_4
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 332
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_8

    .line 334
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 337
    :cond_8
    :goto_4
    throw v0

    .line 335
    :catch_5
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 332
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 328
    :catch_6
    move-exception v1

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 v2, 0x0

    .line 262
    :goto_0
    return-object v2

    .line 99
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    .line 100
    if-nez v2, :cond_1

    .line 101
    const-string v2, "abnormal com info not created"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 102
    const/4 v2, 0x0

    goto :goto_0

    .line 105
    :cond_1
    const-string v2, "intStateStr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 107
    :cond_2
    const-string v2, "no intStateStr"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 108
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 112
    if-nez v6, :cond_4

    .line 113
    const-string v2, "parse intSateMap fail"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 114
    const/4 v2, 0x0

    goto :goto_0

    .line 119
    :cond_4
    :try_start_0
    const-string v2, "sino"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 120
    const-string v2, "sud"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 122
    const-string v2, "soVersion"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 123
    if-nez v15, :cond_5

    .line 124
    const-string v2, "error format at version"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 125
    const/4 v2, 0x0

    goto :goto_0

    .line 128
    :cond_5
    const-string v2, "errorAddr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    if-nez v2, :cond_d

    const-string v9, "unknown"

    .line 131
    :goto_1
    const-string v2, "codeMsg"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    if-nez v2, :cond_e

    const-string v11, "unknown"

    .line 134
    :goto_2
    const-string v2, "tombPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    if-nez v2, :cond_f

    const-string v13, "unknown"

    .line 137
    :goto_3
    const-string v2, "signalName"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    if-nez v2, :cond_10

    const-string v8, "unknown"

    .line 140
    :goto_4
    const-string v2, "errnoMsg"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "stack"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    if-nez v2, :cond_11

    const-string v3, "unknown"

    .line 145
    :goto_5
    const-string v2, "jstack"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    if-eqz v2, :cond_6

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "java:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 152
    :cond_6
    const-string v2, "sico"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 154
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_7

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 158
    const-string v11, "KERNEL"

    .line 164
    :cond_7
    const-string v2, "nativeLog"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    const/16 v16, 0x0

    .line 167
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 168
    const/4 v4, 0x0

    const-string v5, "BuglyNativeLog.txt"

    invoke-static {v4, v2, v5}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v16

    .line 171
    :cond_8
    const-string v2, "sendingProcess"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    if-nez v2, :cond_1b

    .line 173
    const-string v12, "unknown"

    .line 175
    :goto_6
    const-string v2, "spd"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 176
    if-eqz v2, :cond_9

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 180
    :cond_9
    const-string v2, "threadName"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    if-nez v2, :cond_1a

    .line 182
    const-string v5, "unknown"

    .line 184
    :goto_7
    const-string v2, "et"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 185
    if-eqz v2, :cond_a

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    :cond_a
    const-string v2, "processName"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    if-nez v2, :cond_19

    .line 191
    const-string v4, "unknown"

    .line 193
    :goto_8
    const-string v2, "ep"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 194
    if-eqz v2, :cond_b

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    :cond_b
    const/16 v17, 0x0

    .line 199
    const-string v2, "key-value"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    if-eqz v2, :cond_12

    .line 201
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 203
    array-length v10, v7

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v10, :cond_12

    aget-object v14, v7, v2

    .line 204
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 205
    array-length v0, v14

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 206
    const/16 v18, 0x0

    aget-object v18, v14, v18

    const/16 v19, 0x1

    aget-object v14, v14, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    move-object v9, v2

    .line 129
    goto/16 :goto_1

    :cond_e
    move-object v11, v2

    .line 132
    goto/16 :goto_2

    :cond_f
    move-object v13, v2

    .line 135
    goto/16 :goto_3

    :cond_10
    move-object v8, v2

    .line 138
    goto/16 :goto_4

    :cond_11
    move-object v3, v2

    .line 143
    goto/16 :goto_5

    .line 211
    :cond_12
    const-string v2, "ets"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 212
    const-string v2, "etms"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    .line 213
    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    div-long v6, v6, v20

    add-long v6, v6, v18

    .line 216
    invoke-static {v3}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 218
    const-string v2, "sysLogPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 220
    const/16 v18, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v3 .. v18}, Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v3

    .line 223
    if-eqz v3, :cond_18

    .line 224
    const-string v2, "userId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    if-eqz v2, :cond_13

    .line 226
    const-string v4, "[Native record info] userId: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 227
    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 229
    :cond_13
    const-string v2, "sysLog"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    if-eqz v2, :cond_14

    .line 231
    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 233
    :cond_14
    const-string v2, "appVersion"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    if-eqz v2, :cond_15

    .line 235
    const-string v4, "[Native record info] appVersion: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 236
    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 238
    :cond_15
    const-string v2, "isAppForeground"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    if-eqz v2, :cond_16

    .line 240
    const-string v4, "[Native record info] isAppForeground: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 241
    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:Z

    .line 243
    :cond_16
    const-string v2, "launchTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    if-eqz v2, :cond_17

    .line 245
    const-string v4, "[Native record info] launchTime: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :cond_17
    :goto_a
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 255
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    :cond_18
    move-object v2, v3

    .line 257
    goto/16 :goto_0

    .line 248
    :catch_0
    move-exception v2

    .line 249
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 250
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    .line 258
    :catch_1
    move-exception v2

    .line 259
    const-string v3, "error format"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_19
    move-object v4, v2

    goto/16 :goto_8

    :cond_1a
    move-object v5, v2

    goto/16 :goto_7

    :cond_1b
    move-object v12, v2

    goto/16 :goto_6
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    if-nez p0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 273
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 276
    if-nez v2, :cond_2

    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_2
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 72
    if-nez p0, :cond_1

    .line 73
    const-string p0, ""

    .line 86
    :cond_0
    :goto_0
    return-object p0

    .line 75
    :cond_1
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    array-length v0, v1

    if-eqz v0, :cond_0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 82
    const-string v5, "java.lang.Thread.getStackTrace("

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 531
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 534
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    sput-object p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/String;

    .line 539
    const-string v2, "Read system log from native record file(length: %s bytes): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 541
    if-nez p2, :cond_2

    .line 543
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 575
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 576
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "utf-8"

    invoke-direct {v4, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :cond_3
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[ ]*:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 554
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 555
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 560
    :catch_0
    move-exception v1

    .line 562
    :goto_3
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 563
    if-eqz v2, :cond_0

    .line 567
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 568
    :catch_1
    move-exception v1

    .line 570
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 559
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 565
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 568
    :catch_2
    move-exception v1

    .line 570
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 565
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 567
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 571
    :cond_5
    :goto_5
    throw v0

    .line 568
    :catch_3
    move-exception v1

    .line 570
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_5

    .line 565
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 560
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 432
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 433
    :cond_0
    const/4 v0, 0x0

    .line 452
    :goto_0
    return-object v0

    .line 435
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 439
    const-string v2, "Register infos:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_2
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 446
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_3
    const-string v2, "System SO infos:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 476
    if-eqz p1, :cond_6

    .line 477
    new-instance v0, Ljava/io/File;

    const-string v2, "rqd_record.eup"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 480
    const-string v2, "delete record file %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 482
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "reg_record.txt"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 485
    const-string v2, "delete record file %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 487
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "map_record.txt"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 490
    const-string v2, "delete record file %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 492
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v2, "backup_record.txt"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 494
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 495
    const-string v2, "delete record file %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 497
    :cond_3
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 498
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 500
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 501
    const-string v2, "delete record file %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 505
    :cond_4
    if-eqz p0, :cond_6

    .line 506
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 509
    if-eqz v2, :cond_6

    .line 510
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    .line 511
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 512
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 513
    const-string v5, "delete invalid record file %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 510
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_6
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 462
    if-nez p0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-object v0

    .line 465
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_record.txt"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 343
    const-string v2, "reg_record.txt"

    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v4

    .line 344
    if-nez v4, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-object v0

    .line 348
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 350
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 351
    :cond_2
    if-eqz v4, :cond_0

    .line 382
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v1

    .line 385
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 353
    :cond_3
    :try_start_2
    const-string v6, "                "

    .line 354
    const/16 v2, 0x12

    move v3, v1

    move v10, v1

    move v1, v2

    move v2, v10

    .line 357
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 358
    rem-int/lit8 v8, v2, 0x4

    if-nez v8, :cond_5

    .line 359
    if-lez v2, :cond_4

    .line 360
    const-string v3, "\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_4
    const-string v3, "  "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 370
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x10

    if-le v8, v9, :cond_6

    .line 365
    const/16 v1, 0x1c

    .line 367
    :cond_6
    const/4 v8, 0x0

    sub-int v3, v1, v3

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 375
    :catch_1
    move-exception v1

    .line 377
    :try_start_3
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    if-eqz v4, :cond_0

    .line 382
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 383
    :catch_2
    move-exception v1

    .line 385
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 373
    :cond_7
    :try_start_5
    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 380
    if-eqz v4, :cond_0

    .line 382
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 383
    :catch_3
    move-exception v1

    .line 385
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_8

    .line 382
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 386
    :cond_8
    :goto_3
    throw v0

    .line 383
    :catch_4
    move-exception v1

    .line 385
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_3
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 392
    const-string v1, "map_record.txt"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2

    .line 393
    if-nez v2, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 399
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 400
    :cond_2
    if-eqz v2, :cond_0

    .line 415
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    .line 418
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 402
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 403
    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 408
    :catch_1
    move-exception v1

    .line 410
    :try_start_3
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    if-eqz v2, :cond_0

    .line 415
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 416
    :catch_2
    move-exception v1

    .line 418
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 407
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 413
    if-eqz v2, :cond_0

    .line 415
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 416
    :catch_3
    move-exception v1

    .line 418
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 415
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 419
    :cond_5
    :goto_2
    throw v0

    .line 416
    :catch_4
    move-exception v1

    .line 418
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_2
.end method

.method private static c(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 44
    if-nez p0, :cond_0

    .line 66
    :goto_0
    return-object v0

    .line 49
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 51
    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 52
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 53
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 54
    const-string v1, "error format at %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    const-string v2, "error format intStateStr %s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 59
    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 62
    goto :goto_0
.end method
