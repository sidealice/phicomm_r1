.class Lcom/tencent/smtt/sdk/ar;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/smtt/sdk/ao;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/ao;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ar;->c:Lcom/tencent/smtt/sdk/ao;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/ar;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/ar;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--quickDexOptForThirdPartyApp thread start"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ar;->c:Lcom/tencent/smtt/sdk/ao;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ar;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ao;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ar;->c:Lcom/tencent/smtt/sdk/ao;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ar;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/ao;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/tencent/smtt/sdk/as;

    invoke-direct {v2, p0}, Lcom/tencent/smtt/sdk/as;-><init>(Lcom/tencent/smtt/sdk/ar;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    new-instance v2, Lcom/tencent/smtt/sdk/at;

    invoke-direct {v2, p0}, Lcom/tencent/smtt/sdk/at;-><init>(Lcom/tencent/smtt/sdk/ar;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--quickDexOptForThirdPartyApp thread done"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
