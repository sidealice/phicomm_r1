.class public Lcn/kuwo/autosdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/autosdk/g;


# instance fields
.field private volatile a:Lcn/kuwo/autosdk/k;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/autosdk/h;->a:Lcn/kuwo/autosdk/k;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/h;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/autosdk/h;->c:I

    new-instance v0, Lcn/kuwo/autosdk/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/autosdk/i;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/kuwo/autosdk/h;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/kuwo/autosdk/api/SearchMode;Lcn/kuwo/autosdk/api/OnSearchListener;)V
    .locals 3

    iput-object p1, p0, Lcn/kuwo/autosdk/h;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/autosdk/h;->c:I

    iget-object v0, p0, Lcn/kuwo/autosdk/h;->a:Lcn/kuwo/autosdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/autosdk/h;->a:Lcn/kuwo/autosdk/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/autosdk/k;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/autosdk/h;->a:Lcn/kuwo/autosdk/k;

    :cond_0
    new-instance v0, Lcn/kuwo/autosdk/k;

    iget-object v1, p0, Lcn/kuwo/autosdk/h;->b:Ljava/lang/String;

    iget v2, p0, Lcn/kuwo/autosdk/h;->c:I

    invoke-direct {v0, v1, v2, p2}, Lcn/kuwo/autosdk/k;-><init>(Ljava/lang/String;ILcn/kuwo/autosdk/api/SearchMode;)V

    iput-object v0, p0, Lcn/kuwo/autosdk/h;->a:Lcn/kuwo/autosdk/k;

    iget-object v0, p0, Lcn/kuwo/autosdk/h;->a:Lcn/kuwo/autosdk/k;

    iget-object v1, p0, Lcn/kuwo/autosdk/h;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, p3}, Lcn/kuwo/autosdk/k;->a(Landroid/os/Handler;Lcn/kuwo/autosdk/api/OnSearchListener;)V

    sget-object v0, Lcn/kuwo/autosdk/s;->b:Lcn/kuwo/autosdk/s;

    iget-object v1, p0, Lcn/kuwo/autosdk/h;->a:Lcn/kuwo/autosdk/k;

    invoke-static {v0, v1}, Lcn/kuwo/autosdk/r;->a(Lcn/kuwo/autosdk/s;Ljava/lang/Runnable;)V

    return-void
.end method
