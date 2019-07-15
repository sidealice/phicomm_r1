.class public Lcom/umeng/commonsdk/internal/utils/d;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/commonsdk/internal/utils/d$a;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    :try_start_0
    new-instance v2, Lcom/umeng/commonsdk/internal/utils/d$a;

    invoke-direct {v2}, Lcom/umeng/commonsdk/internal/utils/d$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 43
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    .line 106
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object v0

    .line 47
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_4

    if-eqz v3, :cond_2

    .line 106
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_2
    if-eqz v4, :cond_3

    .line 113
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_3
    return-object v0

    .line 51
    :cond_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v5, 0x1

    move v6, v1

    move v8, v6

    move v7, v5

    .line 55
    :goto_0
    :try_start_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    add-int/2addr v6, v5

    const/16 v9, 0x1e

    if-lt v6, v9, :cond_5

    goto/16 :goto_1

    :cond_5
    const-string v9, ":\\s+"

    const/4 v10, 0x2

    .line 60
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    .line 62
    array-length v9, v0

    if-le v9, v5, :cond_6

    .line 63
    aget-object v7, v0, v5

    iput-object v7, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->a:Ljava/lang/String;

    move v7, v1

    :cond_6
    if-eqz v0, :cond_7

    .line 66
    array-length v9, v0

    if-le v9, v5, :cond_7

    aget-object v9, v0, v1

    const-string v10, "processor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    add-int/lit8 v8, v8, 0x1

    :cond_7
    if-eqz v0, :cond_8

    .line 69
    array-length v9, v0

    if-le v9, v5, :cond_8

    aget-object v9, v0, v1

    const-string v10, "Features"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 70
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->d:Ljava/lang/String;

    :cond_8
    if-eqz v0, :cond_9

    .line 72
    array-length v9, v0

    if-le v9, v5, :cond_9

    aget-object v9, v0, v1

    const-string v10, "implementer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 73
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    :cond_9
    if-eqz v0, :cond_a

    .line 76
    array-length v9, v0

    if-le v9, v5, :cond_a

    aget-object v9, v0, v1

    const-string v10, "architecture"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 77
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->f:Ljava/lang/String;

    :cond_a
    if-eqz v0, :cond_b

    .line 79
    array-length v9, v0

    if-le v9, v5, :cond_b

    aget-object v9, v0, v1

    const-string v10, "variant"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 80
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->g:Ljava/lang/String;

    :cond_b
    if-eqz v0, :cond_c

    .line 82
    array-length v9, v0

    if-le v9, v5, :cond_c

    aget-object v9, v0, v1

    const-string v10, "part"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 83
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->h:Ljava/lang/String;

    :cond_c
    if-eqz v0, :cond_d

    .line 85
    array-length v9, v0

    if-le v9, v5, :cond_d

    aget-object v9, v0, v1

    const-string v10, "revision"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 86
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->i:Ljava/lang/String;

    :cond_d
    if-eqz v0, :cond_e

    .line 88
    array-length v9, v0

    if-le v9, v5, :cond_e

    aget-object v9, v0, v1

    const-string v10, "Hardware"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 89
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->j:Ljava/lang/String;

    :cond_e
    if-eqz v0, :cond_f

    .line 91
    array-length v9, v0

    if-le v9, v5, :cond_f

    aget-object v9, v0, v1

    const-string v10, "Revision"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 92
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->k:Ljava/lang/String;

    :cond_f
    if-eqz v0, :cond_10

    .line 94
    array-length v9, v0

    if-le v9, v5, :cond_10

    aget-object v9, v0, v1

    const-string v10, "Serial"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 95
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->l:Ljava/lang/String;

    :cond_10
    if-eqz v0, :cond_11

    .line 97
    array-length v9, v0

    if-le v9, v5, :cond_11

    aget-object v9, v0, v1

    const-string v10, "implementer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 98
    aget-object v0, v0, v5

    iput-object v0, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 100
    :cond_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_12
    :goto_1
    if-eqz v3, :cond_13

    .line 106
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :cond_13
    if-eqz v4, :cond_17

    .line 113
    :goto_2
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v4, v0

    goto :goto_3

    :catch_4
    move-object v4, v0

    goto :goto_6

    :catch_5
    move-object v3, v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_3
    move-object v0, v1

    :goto_4
    if-eqz v3, :cond_14

    .line 106
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :cond_14
    if-eqz v4, :cond_15

    .line 113
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 116
    :catch_7
    :cond_15
    throw v0

    :catch_8
    move-object v2, v0

    move-object v3, v2

    :goto_5
    move-object v4, v3

    :catch_9
    :goto_6
    move v8, v1

    :catch_a
    if-eqz v3, :cond_16

    .line 106
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    :catch_b
    :cond_16
    if-eqz v4, :cond_17

    goto :goto_2

    .line 120
    :catch_c
    :cond_17
    :goto_7
    iput v8, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->c:I

    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x2

    .line 131
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v3, v1, v2

    .line 133
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x18

    .line 136
    new-array v2, v2, [B

    .line 137
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x2

    .line 152
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v3, v1, v2

    .line 154
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x18

    .line 157
    new-array v2, v2, [B

    .line 158
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    .line 173
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 183
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 187
    :catch_2
    :cond_1
    throw v0

    :catch_3
    :goto_1
    if-eqz v1, :cond_2

    .line 183
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_2
    :goto_2
    return-object v0
.end method
