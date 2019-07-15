.class public Lcom/unisound/vui/common/config/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/common/config/a$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unisound/vui/common/config/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/vui/common/config/a;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/vui/common/config/a;->b:Ljava/util/HashMap;

    const-string v0, ""

    sput-object v0, Lcom/unisound/vui/common/config/a;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unisound/vui/common/config/a;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unisound/vui/common/config/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unisound/vui/common/config/a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/lang/String;F)F
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const-string v0, ""

    :goto_0
    const-string v1, "%sdcard%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "%sdcard%"

    sget-object v2, Lcom/unisound/vui/common/config/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "%files%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "%files%"

    sget-object v2, Lcom/unisound/vui/common/config/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, "%cache%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "%cache%"

    sget-object v2, Lcom/unisound/vui/common/config/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/vui/common/config/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/vui/common/config/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/vui/common/config/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private static a()V
    .locals 5

    const-string v0, "ANTPrivatePreference"

    const-string v1, "printConfig"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/vui/common/config/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/vui/common/config/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "ANTPrivatePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unisound/vui/common/config/a;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "ANTPrivatePreference"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/unisound/vui/common/config/a;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/common/config/a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/common/config/a;->e:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    const-string v0, "ANTPrivatePreference"

    const-string v1, "Process is SYSTEM Process, Can\'t use getExternalStorageDirectory, will use %files% folder"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/vui/common/config/a;->d:Ljava/lang/String;

    sput-object v0, Lcom/unisound/vui/common/config/a;->c:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/io/File;

    const-string v1, "system"

    const-string v2, "unisound/config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "sdcard"

    const-string v3, "unisound/config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "config.mg"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "config.mg"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    const-string v0, "ANTPrivatePreference"

    const-string v1, "read sdcard file"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p0}, Lcom/unisound/vui/common/config/a;->a(Ljava/io/InputStream;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/common/config/a;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "config"

    const-string v3, "config.mg"

    invoke-static {p0, v2, v3, v0}, Lcom/unisound/vui/common/file/FileHelper;->copyFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    const-string v0, "ANTPrivatePreference"

    const-string v2, "read system file"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p0}, Lcom/unisound/vui/common/config/a;->a(Ljava/io/InputStream;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-static {}, Lcom/unisound/vui/common/config/a;->a()V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    const-string v0, "ANTPrivatePreference"

    const-string v1, "read assest file"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "config/config.mg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/unisound/vui/common/config/a;->a(Ljava/io/InputStream;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public static a(Lcom/unisound/vui/common/config/a$a;)V
    .locals 1

    sget-object v0, Lcom/unisound/vui/common/config/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/io/InputStream;Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    new-instance v4, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v4, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v1, v5

    if-lez v1, :cond_0

    move v3, v0

    :goto_1
    array-length v0, v5

    if-ge v3, v0, :cond_0

    aget-object v0, v5, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-le v0, v8, :cond_2

    const-string v1, ""

    const-string v0, ""

    array-length v2, v6

    if-lt v2, v8, :cond_6

    const/4 v1, 0x0

    aget-object v1, v6, v1

    move-object v2, v1

    :goto_3
    array-length v1, v6

    const/4 v7, 0x2

    if-lt v1, v7, :cond_5

    const/4 v0, 0x1

    aget-object v0, v6, v0

    move-object v1, v0

    :goto_4
    if-nez v2, :cond_4

    const-string v0, ""

    :goto_5
    invoke-static {v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/common/config/a;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v1, v0

    goto :goto_4

    :cond_6
    move-object v2, v1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
