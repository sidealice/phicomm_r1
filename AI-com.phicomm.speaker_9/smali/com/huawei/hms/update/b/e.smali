.class public Lcom/huawei/hms/update/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/update/b/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/update/b/e$b;,
        Lcom/huawei/hms/update/b/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/huawei/hms/update/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hms/update/c/b;

    invoke-direct {v0}, Lcom/huawei/hms/update/c/b;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/update/b/e;->b:Lcom/huawei/hms/update/c/d;

    iput-object p1, p0, Lcom/huawei/hms/update/b/e;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/update/b/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/update/b/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hms/update/b/e;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/huawei/hms/update/b/e;)Lcom/huawei/hms/update/c/d;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/update/b/e;->b:Lcom/huawei/hms/update/c/d;

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    invoke-static {p1}, Lcom/huawei/hms/a/e;->a(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/huawei/hms/a/b;->b([BZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "OtaUpdate"

    const-string v1, "Enter cancel."

    invoke-static {v0, v1}, Lcom/huawei/hms/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/update/b/e;->b:Lcom/huawei/hms/update/c/d;

    invoke-interface {v0}, Lcom/huawei/hms/update/c/d;->b()V

    return-void
.end method

.method public a(Lcom/huawei/hms/update/b/a/a;)V
    .locals 2

    const-string v0, "callback must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/huawei/hms/update/b/e$a;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/update/b/e$a;-><init>(Lcom/huawei/hms/update/b/e;Lcom/huawei/hms/update/b/a/a;)V

    :try_start_0
    const-string p1, "OtaUpdate"

    const-string v1, "Check update-info from server."

    invoke-static {p1, v1}, Lcom/huawei/hms/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/hms/update/b/e$a;->a()V
    :try_end_0
    .catch Lcom/huawei/hms/update/c/a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "OtaUpdate"

    const-string v1, "Canceled to download the update file."

    invoke-static {p1, v1}, Lcom/huawei/hms/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huawei/hms/update/b/e$a;->a(ILcom/huawei/hms/update/b/a/d;)V

    return-void
.end method

.method public a(Lcom/huawei/hms/update/b/a/d;Ljava/io/File;Lcom/huawei/hms/update/b/a/b;)V
    .locals 6

    const-string v0, "updateInfo must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "localFile must not be null."

    invoke-static {p2, v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null."

    invoke-static {p3, v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/huawei/hms/update/b/e$b;

    invoke-direct {v0, p0, p3, p1}, Lcom/huawei/hms/update/b/e$b;-><init>(Lcom/huawei/hms/update/b/e;Lcom/huawei/hms/update/b/a/b;Lcom/huawei/hms/update/b/a/d;)V

    const/4 p3, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    const/4 v4, 0x3

    iget p1, p1, Lcom/huawei/hms/update/b/a/d;->c:I

    mul-int/2addr v4, p1

    int-to-long v4, v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const-string p1, "OtaUpdate"

    const-string p2, "No space for downloading file."

    invoke-static {p1, p2}, Lcom/huawei/hms/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xca

    invoke-virtual {v0, p1, v1, v1}, Lcom/huawei/hms/update/b/e$b;->a(III)V

    return-void

    :cond_1
    const-string p1, "OtaUpdate"

    const-string v2, "Download the update file from server."

    invoke-static {p1, v2}, Lcom/huawei/hms/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/update/b/e$b;->a(Ljava/io/File;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "OtaUpdate"

    const-string p2, "Failed to create directory for downloading file."

    invoke-static {p1, p2}, Lcom/huawei/hms/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1, v1}, Lcom/huawei/hms/update/b/e$b;->a(III)V
    :try_end_0
    .catch Lcom/huawei/hms/update/c/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "OtaUpdate"

    const-string v2, "Failed to get canonical path."

    invoke-static {p2, v2, p1}, Lcom/huawei/hms/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p3, v1, v1}, Lcom/huawei/hms/update/b/e$b;->a(III)V

    return-void

    :catch_1
    const-string p1, "OtaUpdate"

    const-string p2, "Canceled to download the update file."

    invoke-static {p1, p2}, Lcom/huawei/hms/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1, v1}, Lcom/huawei/hms/update/b/e$b;->a(III)V

    return-void
.end method
