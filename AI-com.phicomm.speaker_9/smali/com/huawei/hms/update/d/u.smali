.class Lcom/huawei/hms/update/d/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/b/a/b;

.field final synthetic b:Lcom/huawei/hms/update/b/a/d;

.field final synthetic c:Lcom/huawei/hms/update/d/q;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/d/q;Lcom/huawei/hms/update/b/a/b;Lcom/huawei/hms/update/b/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/update/d/u;->c:Lcom/huawei/hms/update/d/q;

    iput-object p2, p0, Lcom/huawei/hms/update/d/u;->a:Lcom/huawei/hms/update/b/a/b;

    iput-object p3, p0, Lcom/huawei/hms/update/d/u;->b:Lcom/huawei/hms/update/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xca

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/d/u;->a:Lcom/huawei/hms/update/b/a/b;

    invoke-interface {v0, v1, v2, v2}, Lcom/huawei/hms/update/b/a/b;->a(III)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/update/d/u;->c:Lcom/huawei/hms/update/d/q;

    iget-object v3, p0, Lcom/huawei/hms/update/d/u;->c:Lcom/huawei/hms/update/d/q;

    invoke-static {v3}, Lcom/huawei/hms/update/d/q;->b(Lcom/huawei/hms/update/d/q;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/huawei/hms/update/c;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/huawei/hms/update/provider/UpdateProvider;->getLocalFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/huawei/hms/update/d/q;->a(Lcom/huawei/hms/update/d/q;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/huawei/hms/update/d/u;->c:Lcom/huawei/hms/update/d/q;

    invoke-static {v0}, Lcom/huawei/hms/update/d/q;->c(Lcom/huawei/hms/update/d/q;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/update/d/u;->a:Lcom/huawei/hms/update/b/a/b;

    invoke-interface {v0, v1, v2, v2}, Lcom/huawei/hms/update/b/a/b;->a(III)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/update/d/u;->c:Lcom/huawei/hms/update/d/q;

    invoke-static {v0}, Lcom/huawei/hms/update/d/q;->a(Lcom/huawei/hms/update/d/q;)Lcom/huawei/hms/update/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/update/d/u;->b:Lcom/huawei/hms/update/b/a/d;

    iget-object v2, p0, Lcom/huawei/hms/update/d/u;->c:Lcom/huawei/hms/update/d/q;

    invoke-static {v2}, Lcom/huawei/hms/update/d/q;->c(Lcom/huawei/hms/update/d/q;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/update/d/u;->a:Lcom/huawei/hms/update/b/a/b;

    invoke-static {v3}, Lcom/huawei/hms/update/d/q;->a(Lcom/huawei/hms/update/b/a/b;)Lcom/huawei/hms/update/b/a/b;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/huawei/hms/update/b/a/c;->a(Lcom/huawei/hms/update/b/a/d;Ljava/io/File;Lcom/huawei/hms/update/b/a/b;)V

    return-void
.end method
