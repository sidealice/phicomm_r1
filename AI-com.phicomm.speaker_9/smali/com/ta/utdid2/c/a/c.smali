.class public Lcom/ta/utdid2/c/a/c;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# instance fields
.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Lcom/ta/utdid2/c/a/b$a;

.field private a:Lcom/ta/utdid2/c/a/b;

.field private a:Lcom/ta/utdid2/c/a/d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->g:Z

    .line 23
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 24
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 26
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 27
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    .line 28
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    .line 29
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 31
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    .line 35
    iput-boolean p4, p0, Lcom/ta/utdid2/c/a/c;->g:Z

    .line 36
    iput-boolean p5, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    .line 37
    iput-object p3, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/ta/utdid2/c/a/c;->f:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    .line 43
    iput-object p4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 45
    iget-object p4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    const-string v4, "t"

    invoke-interface {p4, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 49
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    .line 51
    invoke-static {p4}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object p4, v1

    .line 53
    :goto_1
    invoke-static {p4}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    goto :goto_2

    :cond_1
    const-string v1, "mounted"

    .line 56
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    .line 57
    iput-boolean v6, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    iput-boolean v6, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    goto :goto_2

    :cond_2
    const-string v1, "mounted_ro"

    .line 59
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 60
    iput-boolean v6, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 61
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    goto :goto_2

    .line 63
    :cond_3
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 66
    :goto_2
    iget-boolean p4, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    if-nez p4, :cond_4

    iget-boolean p4, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    if-eqz p4, :cond_d

    :cond_4
    if-eqz p1, :cond_d

    .line 68
    invoke-static {p2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_d

    .line 69
    invoke-direct {p0, p2}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/d;

    move-result-object p2

    iput-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 70
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    if-eqz p2, :cond_d

    .line 72
    :try_start_1
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 73
    invoke-virtual {p2, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p2

    .line 72
    iput-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 75
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    const-string p4, "t"

    invoke-interface {p2, p4, v2, v3}, Lcom/ta/utdid2/c/a/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez p5, :cond_7

    cmp-long p2, v4, v6

    if-lez p2, :cond_5

    .line 79
    :try_start_2
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 80
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    goto/16 :goto_4

    :cond_5
    cmp-long p2, v4, v6

    if-gez p2, :cond_6

    .line 85
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object p4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 86
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    goto/16 :goto_4

    :cond_6
    cmp-long p1, v4, v6

    if-nez p1, :cond_e

    .line 89
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 90
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    goto/16 :goto_4

    .line 95
    :cond_7
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    const-string p4, "t2"

    invoke-interface {p2, p4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 96
    :try_start_3
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    const-string v1, "t2"

    invoke-interface {p2, v1, v2, v3}, Lcom/ta/utdid2/c/a/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    cmp-long p2, p4, v4

    if-gez p2, :cond_8

    cmp-long p2, p4, v2

    if-lez p2, :cond_8

    .line 99
    :try_start_4
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 100
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    goto :goto_3

    :cond_8
    cmp-long p2, p4, v4

    if-lez p2, :cond_9

    cmp-long p2, v4, v2

    if-lez p2, :cond_9

    .line 105
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, v1}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 106
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    goto :goto_3

    :cond_9
    cmp-long p2, p4, v2

    if-nez p2, :cond_a

    cmp-long p2, v4, v2

    if-lez p2, :cond_a

    .line 109
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, v1}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 110
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    goto :goto_3

    :cond_a
    cmp-long p1, v4, v2

    if-nez p1, :cond_b

    cmp-long p1, p4, v2

    if-lez p1, :cond_b

    .line 113
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 114
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    goto :goto_3

    :cond_b
    cmp-long p1, p4, v4

    if-nez p1, :cond_c

    .line 118
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 119
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_c
    :goto_3
    move-wide v6, v4

    :catch_2
    move-wide v4, p4

    goto :goto_4

    :catch_3
    :cond_d
    move-wide v6, v2

    :catch_4
    :cond_e
    :goto_4
    cmp-long p1, v4, v6

    if-nez p1, :cond_f

    cmp-long p1, v4, v2

    if-nez p1, :cond_12

    cmp-long p1, v6, v2

    if-nez p1, :cond_12

    .line 132
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 133
    iget-boolean p3, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-eqz p3, :cond_10

    .line 134
    iget-boolean p3, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-eqz p3, :cond_12

    cmp-long p3, v4, v2

    if-nez p3, :cond_12

    cmp-long p3, v6, v2

    if-nez p3, :cond_12

    .line 135
    :cond_10
    iget-object p3, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_11

    .line 136
    iget-object p3, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string p4, "t2"

    .line 137
    invoke-interface {p3, p4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    :cond_11
    :try_start_5
    iget-object p3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz p3, :cond_12

    .line 142
    iget-object p3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {p3}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object p3

    const-string p4, "t2"

    .line 143
    invoke-interface {p3, p4, p1, p2}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/c/a/b$a;

    .line 144
    invoke-interface {p3}, Lcom/ta/utdid2/c/a/b$a;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_12
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/d;
    .locals 1

    .line 154
    invoke-direct {p0, p1}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Lcom/ta/utdid2/c/a/d;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ta/utdid2/c/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 157
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v1, Ljava/io/File;

    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    .line 165
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 177
    invoke-interface {p2}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 179
    invoke-interface {p2}, Lcom/ta/utdid2/c/a/b$a;->b()Lcom/ta/utdid2/c/a/b$a;

    .line 180
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 181
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    invoke-interface {p2}, Lcom/ta/utdid2/c/a/b$a;->commit()Z

    goto :goto_1

    .line 182
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 185
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 186
    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    .line 187
    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 188
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    .line 189
    :cond_3
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 190
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    .line 191
    :cond_4
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 192
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;F)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    .line 193
    :cond_5
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 195
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 194
    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;Z)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 205
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 207
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {p1}, Lcom/ta/utdid2/c/a/b;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 209
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 210
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 213
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 214
    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 215
    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 216
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 217
    :cond_3
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 218
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 219
    :cond_4
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 220
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 221
    :cond_5
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 223
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 222
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private b()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {v0}, Lcom/ta/utdid2/c/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/ta/utdid2/c/a/c;->commit()Z

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {v0}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->b()Z

    return-void
.end method


# virtual methods
.method public commit()Z
    .locals 5

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 370
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 371
    iget-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-nez v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    const-string v4, "t"

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 380
    :goto_0
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    :cond_2
    const/4 v1, 0x0

    .line 388
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 390
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 392
    :goto_1
    invoke-static {v1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "mounted"

    .line 393
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 394
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-nez v2, :cond_4

    .line 396
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->f:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/d;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 398
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 400
    iget-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-nez v2, :cond_3

    .line 401
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, v2, v4}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    goto :goto_2

    .line 403
    :cond_3
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2, v4}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 405
    :goto_2
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {v2}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    goto :goto_3

    .line 408
    :cond_4
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-eqz v2, :cond_5

    .line 409
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    invoke-interface {v2}, Lcom/ta/utdid2/c/a/b$a;->commit()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v3

    :cond_5
    :goto_3
    const-string v2, "mounted"

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "mounted_ro"

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 418
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v1, :cond_7

    .line 420
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    if-eqz v1, :cond_7

    .line 421
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_7
    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 433
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->b()Z

    .line 434
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/c/a/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 301
    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->c()V

    .line 303
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 313
    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->c()V

    .line 315
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    invoke-interface {v0, p1}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;

    :cond_1
    return-void
.end method
