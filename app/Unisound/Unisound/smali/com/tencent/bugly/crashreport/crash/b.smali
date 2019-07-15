.class public final Lcom/tencent/bugly/crashreport/crash/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/bugly/proguard/u;

.field private d:Lcom/tencent/bugly/proguard/p;

.field private e:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private f:Lcom/tencent/bugly/proguard/o;

.field private g:Lcom/tencent/bugly/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/u;Lcom/tencent/bugly/proguard/p;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/o;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sput p1, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    .line 84
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    .line 86
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/proguard/p;

    .line 87
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 88
    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    .line 89
    iput-object p7, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    .line 90
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 707
    if-nez p0, :cond_1

    move-object v0, v1

    .line 726
    :cond_0
    :goto_0
    return-object v0

    .line 711
    :cond_1
    :try_start_0
    const-string v0, "_dt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 712
    if-nez v0, :cond_2

    move-object v0, v1

    .line 713
    goto :goto_0

    .line 715
    :cond_2
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 716
    sget-object v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/z;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 717
    if-eqz v0, :cond_0

    .line 718
    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 723
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v0, v1

    .line 726
    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 123
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v1, p2

    .line 193
    :cond_1
    :goto_0
    return-object v1

    .line 127
    :cond_2
    const/4 v1, 0x0

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 132
    iget-boolean v5, v0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-eqz v5, :cond_3

    .line 133
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 139
    invoke-direct {p0, v2}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 140
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 141
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v3

    .line 142
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 143
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 144
    if-nez v2, :cond_5

    .line 142
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .line 148
    :cond_5
    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 149
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 154
    if-eqz v5, :cond_b

    .line 155
    array-length v6, v5

    move v0, v3

    :goto_4
    if-ge v0, v6, :cond_b

    aget-object v7, v5, v0

    .line 159
    iget-object v8, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 160
    iget v8, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 158
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 169
    :goto_5
    if-nez v0, :cond_a

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    .line 173
    iput v3, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 174
    const-string v0, ""

    iput-object v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    move-object v1, p2

    .line 178
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 179
    iget-boolean v3, v0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 181
    iget v3, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    goto :goto_7

    .line 186
    :cond_9
    iget-wide v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v4, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto/16 :goto_6

    :cond_b
    move-object v0, v1

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_5
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/aj;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1316
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 1317
    :cond_0
    const-string v1, "rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1365
    :cond_1
    :goto_0
    return-object v0

    .line 1322
    :cond_2
    const-string v1, "zip %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1323
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1324
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1326
    const/16 v2, 0x1388

    invoke-static {v1, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/io/File;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1327
    const-string v1, "zip fail!"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1331
    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1334
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    const/16 v4, 0x1000

    :try_start_1
    new-array v4, v4, [B

    .line 1337
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6

    .line 1338
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1339
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1347
    :catch_0
    move-exception v1

    .line 1348
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1349
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1353
    :cond_4
    if-eqz v2, :cond_5

    .line 1355
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1363
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1364
    const-string v1, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1365
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1341
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1342
    const-string v1, "read bytes :%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1344
    new-instance v1, Lcom/tencent/bugly/proguard/aj;

    const/4 v5, 0x2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v4}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1353
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1363
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1364
    const-string v0, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1365
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    .line 1356
    :catch_1
    move-exception v0

    .line 1357
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1358
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1356
    :catch_2
    move-exception v1

    .line 1357
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1358
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1353
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_9

    .line 1355
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1363
    :cond_9
    :goto_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1364
    const-string v1, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1365
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    throw v0

    .line 1356
    :catch_3
    move-exception v1

    .line 1357
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1358
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1353
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1347
    :catch_4
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/ak;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 956
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 957
    :cond_0
    const-string v0, "enExp args == null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v5

    .line 1289
    :goto_0
    return-object v0

    .line 960
    :cond_1
    new-instance v4, Lcom/tencent/bugly/proguard/ak;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/ak;-><init>()V

    .line 961
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v0, :pswitch_data_0

    .line 1000
    const-string v0, "crash type error! %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1004
    :goto_1
    iget-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v0, v4, Lcom/tencent/bugly/proguard/ak;->b:J

    .line 1005
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->c:Ljava/lang/String;

    .line 1006
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->d:Ljava/lang/String;

    .line 1007
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->e:Ljava/lang/String;

    .line 1008
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->g:Ljava/lang/String;

    .line 1009
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->h:Ljava/util/Map;

    .line 1010
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->i:Ljava/lang/String;

    .line 1011
    iput-object v5, v4, Lcom/tencent/bugly/proguard/ak;->j:Lcom/tencent/bugly/proguard/ai;

    .line 1012
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->l:Ljava/lang/String;

    .line 1013
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->m:Ljava/lang/String;

    .line 1014
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->f:Ljava/lang/String;

    .line 1015
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->t:Ljava/lang/String;

    .line 1017
    iput-object v5, v4, Lcom/tencent/bugly/proguard/ak;->n:Lcom/tencent/bugly/proguard/ah;

    .line 1018
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->o:Ljava/util/ArrayList;

    .line 1020
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1021
    new-instance v7, Lcom/tencent/bugly/proguard/ah;

    invoke-direct {v7}, Lcom/tencent/bugly/proguard/ah;-><init>()V

    .line 1022
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/ah;->a:Ljava/lang/String;

    .line 1023
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/ah;->c:Ljava/lang/String;

    .line 1024
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/proguard/ah;->d:Ljava/lang/String;

    .line 1025
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/bugly/proguard/ah;->b:Ljava/lang/String;

    .line 1026
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 963
    :pswitch_0
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_2

    const-string v0, "203"

    :goto_3
    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v0, "103"

    goto :goto_3

    .line 967
    :pswitch_1
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_3

    const-string v0, "208"

    :goto_4
    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v0, "108"

    goto :goto_4

    .line 972
    :pswitch_2
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_4

    const-string v0, "200"

    :goto_5
    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v0, "100"

    goto :goto_5

    .line 976
    :pswitch_3
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_5

    const-string v0, "201"

    :goto_6
    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v0, "101"

    goto :goto_6

    .line 981
    :pswitch_4
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_6

    const-string v0, "202"

    :goto_7
    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v0, "102"

    goto :goto_7

    .line 986
    :pswitch_5
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_7

    const-string v0, "204"

    :goto_8
    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v0, "104"

    goto :goto_8

    .line 990
    :pswitch_6
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_8

    const-string v0, "206"

    :goto_9
    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v0, "106"

    goto :goto_9

    .line 995
    :pswitch_7
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_9

    const-string v0, "207"

    :goto_a
    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v0, "107"

    goto :goto_a

    .line 1030
    :cond_a
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->p:Ljava/util/ArrayList;

    .line 1032
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1033
    new-instance v7, Lcom/tencent/bugly/proguard/ah;

    invoke-direct {v7}, Lcom/tencent/bugly/proguard/ah;-><init>()V

    .line 1034
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/ah;->a:Ljava/lang/String;

    .line 1035
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/ah;->c:Ljava/lang/String;

    .line 1036
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/proguard/ah;->d:Ljava/lang/String;

    .line 1037
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1042
    :cond_b
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_e

    .line 1043
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    iput v0, v4, Lcom/tencent/bugly/proguard/ak;->k:I

    .line 1044
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 1045
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1050
    :cond_c
    :try_start_0
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/proguard/aj;

    const/4 v6, 0x1

    const-string v7, "alltimes.txt"

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :cond_d
    :goto_c
    const-string v1, "crashcount:%d sz:%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v0, v4, Lcom/tencent/bugly/proguard/ak;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1062
    :cond_e
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1063
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1067
    :cond_f
    :try_start_1
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/proguard/aj;

    const/4 v6, 0x1

    const-string v7, "log.txt"

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1076
    :cond_10
    :goto_e
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1077
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 1078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1082
    :cond_11
    :try_start_2
    new-instance v0, Lcom/tencent/bugly/proguard/aj;

    const/4 v1, 0x1

    const-string v6, "crashInfos.txt"

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1087
    :goto_f
    if-eqz v0, :cond_12

    .line 1088
    const-string v1, "attach crash infos"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1089
    iget-object v1, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    :cond_12
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1095
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1098
    :cond_13
    const-string v0, "backupRecord.zip"

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_14

    .line 1101
    const-string v1, "attach backup record"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1102
    iget-object v1, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_14
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    array-length v0, v0

    if-lez v0, :cond_16

    .line 1109
    new-instance v0, Lcom/tencent/bugly/proguard/aj;

    const-string v1, "buglylog.zip"

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    invoke-direct {v0, v10, v1, v6}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    .line 1111
    const-string v1, "attach user log"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1113
    iget-object v1, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 1114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1116
    :cond_15
    iget-object v1, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    :cond_16
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v11, :cond_19

    .line 1121
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    .line 1122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1125
    :cond_17
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v1, "BUGLY_CR_01"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1129
    :try_start_3
    iget-object v1, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v6, Lcom/tencent/bugly/proguard/aj;

    const/4 v7, 0x1

    const-string v8, "anrMessage.txt"

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v9, "BUGLY_CR_01"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v7, v8, v0}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    const-string v0, "attach anr message"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1139
    :goto_10
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v1, "BUGLY_CR_01"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    :cond_18
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1144
    const-string v0, "trace.zip"

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    .line 1146
    if-eqz v0, :cond_19

    .line 1147
    const-string v1, "attach traces"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1148
    iget-object v1, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_19
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v3, :cond_1b

    .line 1154
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 1155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1158
    :cond_1a
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 1159
    const-string v0, "tomb.zip"

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    .line 1161
    if-eqz v0, :cond_1b

    .line 1162
    const-string v1, "attach tombs"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1163
    iget-object v1, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    :cond_1b
    iget-object v0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1169
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1172
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1173
    iget-object v0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1054
    iput-object v5, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    goto/16 :goto_c

    :cond_1d
    move v0, v2

    .line 1058
    goto/16 :goto_d

    .line 1069
    :catch_1
    move-exception v0

    .line 1070
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1071
    iput-object v5, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    goto/16 :goto_e

    .line 1084
    :catch_2
    move-exception v0

    .line 1085
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v5

    goto/16 :goto_f

    .line 1135
    :catch_3
    move-exception v0

    .line 1136
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1137
    iput-object v5, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    goto/16 :goto_10

    .line 1177
    :cond_1e
    :try_start_4
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v6, Lcom/tencent/bugly/proguard/aj;

    const/4 v7, 0x1

    const-string v8, "martianlog.txt"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "utf-8"

    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v6, v7, v8, v1}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    const-string v0, "attach pageTracingList"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1185
    :cond_1f
    :goto_12
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:[B

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:[B

    array-length v0, v0

    if-lez v0, :cond_21

    .line 1186
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    .line 1187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1190
    :cond_20
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/proguard/aj;

    const-string v6, "userExtraByteData"

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:[B

    invoke-direct {v1, v3, v6, v7}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    const-string v0, "attach extraData"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1195
    :cond_21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    .line 1196
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A11"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A23"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A6"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A22"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A24"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A17"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A16"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A25"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A14"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A15"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A13"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->x()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A34"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-object v0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 1217
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "productIdentify"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    :cond_22
    :try_start_5
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A26"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1226
    :goto_13
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v3, :cond_23

    .line 1227
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A27"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A28"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A29"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :cond_23
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A30"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A18"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    iget-object v1, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v6, "A36"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:Z

    if-nez v0, :cond_26

    move v0, v3

    :goto_14
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F02"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F03"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F04"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F05"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F06"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F08"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F09"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->t:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:I

    if-ltz v0, :cond_24

    .line 1257
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "C01"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    :cond_24
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    if-ltz v0, :cond_25

    .line 1261
    iget-object v0, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "C02"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    :cond_25
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 1265
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1266
    iget-object v7, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v1, "C03_"

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1180
    :catch_4
    move-exception v0

    .line 1181
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_12

    .line 1223
    :catch_5
    move-exception v0

    .line 1224
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_13

    :cond_26
    move v0, v2

    .line 1235
    goto/16 :goto_14

    .line 1270
    :cond_27
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 1271
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1272
    iget-object v7, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v1, "C04_"

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 1278
    :cond_28
    iput-object v5, v4, Lcom/tencent/bugly/proguard/ak;->s:Ljava/util/Map;

    .line 1279
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1280
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ak;->s:Ljava/util/Map;

    .line 1281
    const-string v0, "setted message size %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/ak;->s:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1283
    :cond_29
    const-string v0, "%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    aput-object v5, v1, v2

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    iget-wide v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v11

    const/4 v5, 0x4

    iget-boolean v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    iget-boolean v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x6

    iget-boolean v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x7

    iget v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v6, v3, :cond_2a

    :goto_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x8

    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, v4, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v4

    .line 1289
    goto/16 :goto_0

    :cond_2a
    move v3, v2

    .line 1283
    goto :goto_17

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 103
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 106
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 108
    iget-boolean v5, v0, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-eqz v5, :cond_2

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    const-wide/32 v8, 0x5265c00

    sub-long v8, v2, v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 110
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 113
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1468
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 1469
    if-nez v0, :cond_0

    .line 1505
    :goto_0
    return-void

    .line 1472
    :cond_0
    const-string v1, "#++++++++++Record By Bugly++++++++++#"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1473
    const-string v1, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1474
    const-string v1, "# PKG NAME: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1475
    const-string v1, "# APP VER: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1476
    const-string v1, "# LAUNCH TIME: %s"

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v4

    iget-wide v4, v4, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1478
    const-string v1, "# CRASH TYPE: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1479
    const-string v1, "# CRASH TIME: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1480
    const-string v1, "# CRASH PROCESS: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1481
    if-eqz p3, :cond_1

    .line 1482
    const-string v1, "# CRASH THREAD: %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1484
    :cond_1
    if-eqz p5, :cond_2

    .line 1485
    const-string v1, "# REPORT ID: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1486
    const-string v1, "# CRASH DEVICE: %s %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->x()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ROOTED"

    :goto_1
    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1488
    const-string v0, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1490
    const-string v0, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1492
    iget-object v0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1493
    const-string v0, "# EXCEPTION FIRED BY %s %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1500
    :cond_2
    :goto_2
    invoke-static {p4}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1501
    const-string v0, "# CRASH STACK: "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1502
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1504
    :cond_3
    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1486
    :cond_4
    const-string v0, "UNROOT"

    goto :goto_1

    .line 1495
    :cond_5
    iget v0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v9, :cond_2

    .line 1496
    const-string v1, "# EXCEPTION ANR MESSAGE:\n %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    if-nez v0, :cond_6

    const-string v0, "null"

    :goto_3
    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v4, "BUGLY_CR_01"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(ZLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 520
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 521
    const-string v0, "up finish update state %b"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 522
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 523
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 525
    const-string v2, "pre uid:%s uc:%d re:%b me:%b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 528
    iget v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    .line 529
    iput-boolean p0, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 530
    const-string v2, "set uid:%s uc:%d re:%b me:%b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 533
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 534
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_1

    .line 536
    :cond_1
    const-string v0, "update state size %d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 538
    :cond_2
    if-nez p0, :cond_3

    .line 539
    const-string v0, "[crash] upload fail."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 541
    :cond_3
    return-void
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 818
    if-nez p0, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-object v0

    .line 823
    :cond_1
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/a;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/crash/a;-><init>()V

    .line 824
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    .line 825
    const-string v4, "_tm"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    .line 826
    const-string v4, "_s1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    .line 827
    const-string v4, "_up"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    :goto_1
    iput-boolean v4, v1, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    .line 829
    const-string v4, "_me"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_2
    iput-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    .line 831
    const-string v2, "_uc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 832
    goto :goto_0

    :cond_2
    move v4, v3

    .line 827
    goto :goto_1

    :cond_3
    move v2, v3

    .line 829
    goto :goto_2

    .line 833
    :catch_0
    move-exception v1

    .line 834
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 845
    .line 846
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 848
    const/4 v0, 0x6

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_tm"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_s1"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_up"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_me"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_uc"

    aput-object v1, v2, v0

    .line 850
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 852
    if-nez v6, :cond_1

    .line 853
    if-eqz v6, :cond_0

    .line 886
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    .line 890
    :goto_0
    return-object v0

    .line 855
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 857
    invoke-static {v6}, Lcom/tencent/bugly/crashreport/crash/b;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;

    move-result-object v1

    .line 858
    if-eqz v1, :cond_4

    .line 859
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 880
    :catch_0
    move-exception v0

    move-object v7, v6

    .line 881
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 882
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 885
    :cond_2
    if-eqz v7, :cond_3

    .line 886
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 890
    goto :goto_0

    .line 863
    :cond_4
    :try_start_3
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 864
    const-string v1, " or _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 866
    :catch_1
    move-exception v1

    :try_start_4
    const-string v1, "unknown id!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 885
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    .line 886
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 872
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 874
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 875
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result v0

    .line 877
    const-string v1, "deleted %s illegle data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 885
    :cond_7
    if-eqz v6, :cond_8

    .line 886
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v8

    goto/16 :goto_0

    .line 885
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v7

    goto :goto_3

    .line 880
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 753
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 811
    :goto_0
    return-object v0

    .line 757
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 759
    const-string v2, " or _id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 762
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 763
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 764
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 766
    :cond_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 770
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 772
    if-nez v8, :cond_5

    .line 773
    if-eqz v8, :cond_4

    .line 807
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    goto :goto_0

    .line 776
    :cond_5
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 777
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 778
    invoke-static {v8}, Lcom/tencent/bugly/crashreport/crash/b;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 779
    if-eqz v0, :cond_8

    .line 780
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 801
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 802
    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 803
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 806
    :cond_6
    if-eqz v1, :cond_7

    .line 807
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v7

    .line 811
    goto :goto_0

    .line 784
    :cond_8
    :try_start_3
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 785
    const-string v2, " or _id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 787
    :catch_1
    move-exception v0

    :try_start_4
    const-string v0, "unknown id!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 806
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_9

    .line 807
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 793
    :cond_a
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 795
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 796
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result v0

    .line 798
    const-string v1, "deleted %s illegle data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 806
    :cond_b
    if-eqz v8, :cond_c

    .line 807
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v0, v6

    goto/16 :goto_0

    .line 806
    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 801
    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method

.method private static c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 897
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 903
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 906
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 907
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 908
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 910
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 912
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result v0

    .line 914
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 927
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 933
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 944
    :catch_0
    move-exception v0

    .line 945
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 946
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 936
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 937
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 938
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 940
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 941
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result v0

    .line 943
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 679
    if-nez p0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-object v0

    .line 684
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 685
    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 686
    const-string v4, "_id"

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 688
    :cond_2
    const-string v4, "_tm"

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 689
    const-string v4, "_s1"

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v5, "_up"

    iget-boolean v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const-string v4, "_me"

    iget-boolean v5, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    const-string v2, "_uc"

    iget v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v2, "_dt"

    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 694
    goto :goto_0

    :cond_3
    move v4, v3

    .line 690
    goto :goto_1

    :cond_4
    move v2, v3

    .line 691
    goto :goto_2

    .line 695
    :catch_0
    move-exception v1

    .line 696
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v12, 0x5265c00

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 319
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 320
    if-nez v1, :cond_1

    .line 321
    const-string v1, "have not synced remote!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 400
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v1, :cond_2

    .line 326
    const-string v1, "Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 329
    const-string v1, "[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 336
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v4

    .line 338
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 345
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 348
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 349
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 350
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 351
    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sget-wide v10, Lcom/tencent/bugly/crashreport/crash/c;->g:J

    sub-long v10, v4, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 353
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 354
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    :cond_4
    iget-boolean v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-eqz v8, :cond_6

    .line 359
    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sub-long v10, v2, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    .line 361
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 363
    :cond_5
    iget-boolean v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-nez v8, :cond_3

    .line 365
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 366
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    :cond_6
    iget v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->f:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sub-long v10, v2, v12

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 371
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 372
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 377
    invoke-static {v6}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 381
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-direct {p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 383
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 385
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 386
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 387
    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 388
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 389
    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 390
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 391
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 396
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 397
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/b;->d(Ljava/util/List;)V

    :cond_b
    move-object v0, v1

    .line 400
    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 421
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/c;->l:Z

    if-eqz v0, :cond_1

    .line 422
    const-string v0, "try to upload right now"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    const-wide/16 v2, 0xbb8

    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    move-object v0, p0

    move v4, p4

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;JZZZ)V

    .line 430
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;JZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;JZZZ)V"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    if-eqz v0, :cond_0

    .line 449
    if-nez p6, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    sget v1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 454
    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v1, :cond_3

    .line 455
    const-string v0, "remote report is disable!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 456
    const-string v0, "[crash] server closed bugly in this app. please check your appid if is correct, and re-install it"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    iget-boolean v1, v1, Lcom/tencent/bugly/proguard/u;->a:Z

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    .line 466
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/u;->a:Z

    if-eqz v0, :cond_6

    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->c:Ljava/lang/String;

    .line 468
    :goto_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/u;->a:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x33e

    move v2, v0

    .line 471
    :goto_3
    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v6

    if-eqz v5, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    if-nez v6, :cond_8

    :cond_4
    const-string v0, "enEXPPkg args == null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 473
    :goto_4
    if-nez v0, :cond_a

    .line 474
    const-string v0, "create eupPkg fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    const-string v1, "req cr error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 506
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 465
    :cond_5
    :try_start_1
    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:Ljava/lang/String;

    goto :goto_1

    .line 466
    :cond_6
    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    goto :goto_2

    .line 468
    :cond_7
    const/16 v0, 0x276

    move v2, v0

    goto :goto_3

    .line 471
    :cond_8
    new-instance v1, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/al;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/tencent/bugly/proguard/al;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget-object v8, v1, Lcom/tencent/bugly/proguard/al;->a:Ljava/util/ArrayList;

    invoke-static {v5, v0, v6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/ak;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto :goto_4

    .line 477
    :cond_a
    invoke-static {v0}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/proguard/k;)[B

    move-result-object v0

    .line 478
    if-nez v0, :cond_b

    .line 479
    const-string v0, "send encode fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 482
    :cond_b
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/am;

    move-result-object v2

    .line 483
    if-nez v2, :cond_c

    .line 484
    const-string v0, "request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 487
    :cond_c
    new-instance v5, Lcom/tencent/bugly/crashreport/crash/b$1;

    invoke-direct {v5, p0, p1}, Lcom/tencent/bugly/crashreport/crash/b$1;-><init>(Lcom/tencent/bugly/crashreport/crash/b;Ljava/util/List;)V

    .line 498
    if-eqz p4, :cond_d

    .line 499
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    sget v1, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    move-wide v6, p2

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;JZ)V

    goto/16 :goto_0

    .line 502
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    sget v1, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    .locals 1

    .prologue
    .line 197
    const v0, -0x75bcd15

    invoke-virtual {p0, p1, v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;I)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;I)Z
    .locals 10

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    if-nez p1, :cond_0

    .line 310
    :goto_0
    return v3

    .line 209
    :cond_0
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    const-string v0, "Crash filter for crash stack is: %s"

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const-string v0, "This crash contains the filter string set. It will not be record and upload."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    const-string v0, "Crash regular filter for crash stack is: %s"

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 221
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const-string v0, "This crash matches the regular filter string set. It will not be record and upload."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_2
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 228
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 229
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 231
    iget-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 233
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 234
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 235
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/o;->c()Z

    move-result v0

    .line 240
    if-nez v0, :cond_3

    .line 241
    const-string v0, "Crash listener \'onCrashSaving\' return \'false\' thus will not handle this crash."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_3
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 249
    new-instance v0, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 250
    iput v3, v0, Lcom/tencent/bugly/proguard/r;->b:I

    .line 251
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/r;->c:Ljava/lang/String;

    .line 252
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/r;->d:Ljava/lang/String;

    .line 253
    iget-wide v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v4, v0, Lcom/tencent/bugly/proguard/r;->e:J

    .line 255
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/p;->b(I)V

    .line 256
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/r;)Z

    .line 257
    const-string v0, "[crash] a crash occur, handling..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 262
    :goto_1
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v1

    .line 263
    const/4 v0, 0x0

    .line 264
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 265
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 272
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/c;->d:Z

    if-eqz v0, :cond_b

    .line 276
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 277
    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-object v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 278
    iget-boolean v7, v0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-eqz v7, :cond_4

    move v1, v3

    .line 281
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v0, v1

    move v1, v0

    .line 283
    goto :goto_2

    .line 259
    :cond_6
    const-string v0, "[crash] a caught exception occur, handling..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    :cond_7
    if-nez v1, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/tencent/bugly/crashreport/crash/c;->c:I

    if-lt v0, v1, :cond_b

    .line 288
    :cond_8
    const-string v0, "same crash occur too much do merged!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 289
    invoke-direct {p0, v5, p1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v1

    .line 290
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 291
    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    iget-wide v8, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 292
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 295
    :cond_a
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 296
    invoke-static {v4}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 297
    const-string v0, "[crash] save crash success. For this device crash many times, it will not upload crashes immediately"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    move-object v0, v4

    .line 305
    :cond_c
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 306
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 307
    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 309
    :cond_d
    const-string v0, "[crash] save crash success"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v3, v2

    .line 310
    goto/16 :goto_0
.end method

.method public final b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 412
    :cond_0
    return-void
.end method

.method public final c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 12

    .prologue
    const/16 v11, 0x64

    const/16 v10, 0x7530

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 547
    if-nez p1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    if-eqz v1, :cond_0

    .line 554
    :cond_2
    :try_start_0
    const-string v1, "[crash callback] start user\'s callback:onCrashHandleStart()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 558
    iget v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v3, v5

    .line 587
    :goto_1
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 589
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 590
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 591
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 592
    iget-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 596
    const/4 v0, 0x0

    .line 597
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    if-eqz v1, :cond_6

    .line 598
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    .line 600
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    invoke-interface {v1}, Lcom/tencent/bugly/proguard/o;->b()Ljava/lang/String;

    move-result-object v1

    .line 602
    if-eqz v1, :cond_3

    .line 603
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 604
    const-string v2, "userData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 615
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    .line 616
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 617
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 618
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 622
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v11, :cond_5

    .line 624
    const/4 v2, 0x0

    const/16 v7, 0x64

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 625
    const-string v2, "setted key length is over limit %d substring to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v2, v7}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    move-object v2, v1

    .line 630
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_7

    .line 632
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, -0x7530

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    const-string v1, "setted %s value length is over limit %d substring"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x7530

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 640
    :goto_4
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v1, "add setted key %s value size:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v1, v7}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 666
    :catch_0
    move-exception v0

    .line 667
    const-string v1, "crash handle callback somthing wrong! %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 668
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 669
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 560
    :pswitch_1
    const/4 v0, 0x4

    move v3, v0

    .line 561
    goto/16 :goto_1

    .line 563
    :pswitch_2
    const/4 v0, 0x7

    move v3, v0

    .line 564
    goto/16 :goto_1

    :pswitch_3
    move v3, v4

    .line 567
    goto/16 :goto_1

    :pswitch_4
    move v3, v0

    .line 573
    goto/16 :goto_1

    .line 575
    :pswitch_5
    const/4 v0, 0x3

    move v3, v0

    .line 576
    goto/16 :goto_1

    .line 578
    :pswitch_6
    const/4 v0, 0x5

    move v3, v0

    .line 579
    goto/16 :goto_1

    .line 581
    :pswitch_7
    const/4 v0, 0x6

    move v3, v0

    .line 582
    goto/16 :goto_1

    .line 606
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    if-eqz v1, :cond_3

    .line 607
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2, v6}, Lcom/tencent/bugly/BuglyStrategy$a;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_2

    .line 637
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 645
    :cond_8
    const-string v0, "[crash callback] start user\'s callback:onCrashHandleStart2GetExtraDatas()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 648
    const/4 v0, 0x0

    .line 650
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    if-eqz v1, :cond_b

    .line 651
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/o;->a()[B

    move-result-object v0

    .line 657
    :cond_9
    :goto_5
    iput-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:[B

    .line 658
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:[B

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:[B

    array-length v0, v0

    if-le v0, v10, :cond_a

    .line 660
    const-string v0, "extra bytes size %d is over limit %d will drop over part"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x7530

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 664
    :cond_a
    const-string v0, "add extra bytes %d "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 653
    :cond_b
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    if-eqz v1, :cond_9

    .line 654
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2, v6}, Lcom/tencent/bugly/BuglyStrategy$a;->onCrashHandleStart2GetExtraDatas(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_5

    .line 558
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method public final d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 733
    if-nez p1, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/b;->e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v1

    const-string v2, "t_cr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;Z)J

    move-result-wide v0

    .line 739
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 740
    const-string v2, "insert %s success!"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "t_cr"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 741
    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    goto :goto_0
.end method
