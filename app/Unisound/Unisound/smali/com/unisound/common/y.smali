.class public Lcom/unisound/common/y;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "initVPR"

.field public static final B:Ljava/lang/String; = "initNLU"

.field public static final C:Ljava/lang/String; = "collectedInfo"

.field public static final D:Ljava/lang/String; = "start"

.field public static final E:Ljava/lang/String; = "recognition"

.field public static final F:Ljava/lang/String; = "stop"

.field public static final G:Ljava/lang/String; = "cancel"

.field public static final H:Ljava/lang/String; = "getResult"

.field public static final I:Ljava/lang/String; = "error"

.field public static final J:Ljava/lang/String; = "success"

.field public static final K:Ljava/lang/String; = "partial"

.field public static final L:Ljava/lang/String; = "last"

.field private static M:Lcom/unisound/common/ar; = null

.field private static final N:Ljava/lang/String; = "USCLOG"

.field private static O:Ljava/lang/String; = null

.field private static P:Ljava/lang/String; = null

.field private static Q:Ljava/lang/StringBuffer; = null

.field private static R:Z = false

.field private static S:I = 0x0

.field private static T:Ljava/lang/Object; = null

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Z = false

.field public static n:Z = false

.field public static o:Z = false

.field public static p:Z = false

.field public static q:Z = false

.field public static r:Z = false

.field public static s:Ljava/lang/String; = null

.field public static t:Z = false

.field public static u:Z = false

.field public static final v:Ljava/lang/String; = "USC"

.field public static final w:Ljava/lang/String; = "USC_THREAD"

.field public static x:I = 0x0

.field public static final y:Ljava/lang/String; = "init"

.field public static final z:Ljava/lang/String; = "create"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/common/y;->M:Lcom/unisound/common/ar;

    sput-boolean v1, Lcom/unisound/common/y;->k:Z

    sput-boolean v1, Lcom/unisound/common/y;->l:Z

    sput-boolean v1, Lcom/unisound/common/y;->m:Z

    sput-boolean v1, Lcom/unisound/common/y;->n:Z

    sput-boolean v1, Lcom/unisound/common/y;->o:Z

    sput-boolean v1, Lcom/unisound/common/y;->p:Z

    sput-boolean v1, Lcom/unisound/common/y;->q:Z

    sput-boolean v1, Lcom/unisound/common/y;->r:Z

    const-string v0, ""

    sput-object v0, Lcom/unisound/common/y;->s:Ljava/lang/String;

    sput-boolean v2, Lcom/unisound/common/y;->t:Z

    sput-boolean v2, Lcom/unisound/common/y;->u:Z

    sput v1, Lcom/unisound/common/y;->x:I

    const-string v0, ""

    sput-object v0, Lcom/unisound/common/y;->O:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unisound/common/y;->P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/unisound/common/y;->Q:Ljava/lang/StringBuffer;

    sput-boolean v2, Lcom/unisound/common/y;->R:Z

    sput v1, Lcom/unisound/common/y;->S:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unisound/common/y;->T:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/unisound/common/y;->S:I

    return p0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcn/yunzhisheng/asr/JniUscClient;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/common/y;->O:Ljava/lang/String;

    sget-object v0, Lcom/unisound/common/y;->O:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/unisound/common/y;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "appKey"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imei"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionID"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "timeStamp"

    invoke-static {p8, p9}, Lcom/unisound/common/y;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "errString"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "javaSDKLog"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cSDKLog"

    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcom/unisound/common/y;->Q:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    sget-object v2, Lcom/unisound/common/y;->Q:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v0, ""

    sput-object v0, Lcom/unisound/common/y;->O:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unisound/common/y;->P:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/unisound/common/y;->u:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/errorlog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/unisound/common/z;

    invoke-direct {v2, v0}, Lcom/unisound/common/z;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 16

    sget-boolean v2, Lcom/unisound/common/y;->t:Z

    if-eqz v2, :cond_5

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/javalog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/clog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/errorlog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/errorlog/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/javalogbk"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/clogbk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v14, 0xf4240

    cmp-long v9, v10, v14

    if-lez v9, :cond_1

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v7, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    cmp-long v4, v8, v10

    if-lez v4, :cond_3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v7, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    new-instance v4, Ljava/lang/String;

    sget-object v6, Lcom/unisound/common/y;->Q:Ljava/lang/StringBuffer;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-static {v2, v4}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/unisound/common/y;->O:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/unisound/common/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v2, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/unisound/c/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v5}, Lcom/unisound/common/y;->c(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/unisound/common/y;->P:Ljava/lang/String;

    sget-object v9, Lcom/unisound/common/y;->O:Ljava/lang/String;

    move-object/from16 v2, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p0

    invoke-static/range {v2 .. v11}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/unisound/common/y;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_6
    move-object/from16 v4, p3

    goto :goto_0
.end method

.method public static a(Lcom/unisound/common/ar;)V
    .locals 0

    sput-object p0, Lcom/unisound/common/y;->M:Lcom/unisound/common/ar;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "USC"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/unisound/common/y;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/common/y;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    sget-boolean v1, Lcom/unisound/common/y;->k:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unisound/common/y;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz p2, :cond_7

    const-string v0, "{"

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&Params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz p4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz p5, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/common/y;->P:Ljava/lang/String;

    sget-object v1, Lcom/unisound/common/y;->Q:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    return-void

    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "USC"

    invoke-static {v0, p0, p1}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/common/y;->k:Z

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/unisound/common/y;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/unisound/common/y;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/unisound/common/y;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unisound/common/y;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/unisound/common/y;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/unisound/common/y;->R:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/unisound/common/y;->T:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unisound/common/y;->M:Lcom/unisound/common/ar;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/common/y;->M:Lcom/unisound/common/ar;

    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p0}, Lcom/unisound/common/ar;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void
.end method

.method public static varargs b([Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/unisound/common/y;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unisound/common/y;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/unisound/common/y;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 8

    const/16 v2, 0xa

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v0, v3

    if-lt v0, v2, :cond_4

    array-length v0, v3

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    aget-object v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v3, v5

    aput-object v5, v3, v2

    add-int/lit8 v5, v2, 0x1

    aput-object v4, v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-static {p0}, Lcom/unisound/common/y;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void
.end method

.method public static varargs c([Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/unisound/common/y;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unisound/common/y;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/unisound/common/y;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/common/y;->R:Z

    return v0
.end method

.method static synthetic d()I
    .locals 2

    sget v0, Lcom/unisound/common/y;->S:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/unisound/common/y;->S:I

    return v0
.end method

.method public static varargs d([Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unisound/common/y;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC_THREAD"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/unisound/common/y;->S:I

    return v0
.end method

.method public static varargs e([Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/unisound/common/y;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unisound/common/y;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/unisound/common/y;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs f([Ljava/lang/Object;)V
    .locals 6

    sget-boolean v0, Lcom/unisound/common/y;->m:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unisound/common/y;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC_TIME_TRACE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/unisound/common/y;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/unisound/common/y;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs g([Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/unisound/common/y;->n:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unisound/common/y;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/unisound/common/y;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static varargs h([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "USC"

    const-string v1, "getLog error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getLog error"

    :goto_2
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method
