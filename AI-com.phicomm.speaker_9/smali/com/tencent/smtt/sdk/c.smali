.class public Lcom/tencent/smtt/sdk/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/smtt/sdk/c;
    .locals 2

    const-class v0, Lcom/tencent/smtt/sdk/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/smtt/sdk/c;->a:Lcom/tencent/smtt/sdk/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/smtt/sdk/c;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/c;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/c;->a:Lcom/tencent/smtt/sdk/c;

    :cond_0
    sget-object v1, Lcom/tencent/smtt/sdk/c;->a:Lcom/tencent/smtt/sdk/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/smtt/sdk/bo;->b()Lcom/tencent/smtt/sdk/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bo;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bo;->d()Lcom/tencent/smtt/sdk/bp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
