.class Lcn/kuwo/autosdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field b:I

.field c:[B

.field d:I

.field final synthetic e:Lcn/kuwo/autosdk/b;


# direct methods
.method constructor <init>(Lcn/kuwo/autosdk/b;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/autosdk/d;->e:Lcn/kuwo/autosdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II[BI)Lcn/kuwo/autosdk/d;
    .locals 0

    iput p1, p0, Lcn/kuwo/autosdk/d;->a:I

    iput p2, p0, Lcn/kuwo/autosdk/d;->b:I

    iput-object p3, p0, Lcn/kuwo/autosdk/d;->c:[B

    iput p4, p0, Lcn/kuwo/autosdk/d;->d:I

    return-object p0
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcn/kuwo/autosdk/d;->e:Lcn/kuwo/autosdk/b;

    iget-boolean v0, v0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcn/kuwo/autosdk/d;->e:Lcn/kuwo/autosdk/b;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/autosdk/d;->e:Lcn/kuwo/autosdk/b;

    iget-object v0, v0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    iget-object v1, p0, Lcn/kuwo/autosdk/d;->e:Lcn/kuwo/autosdk/b;

    iget v2, p0, Lcn/kuwo/autosdk/d;->a:I

    iget v3, p0, Lcn/kuwo/autosdk/d;->b:I

    iget-object v4, p0, Lcn/kuwo/autosdk/d;->c:[B

    iget v5, p0, Lcn/kuwo/autosdk/d;->d:I

    invoke-interface/range {v0 .. v5}, Lcn/kuwo/autosdk/f;->a(Lcn/kuwo/autosdk/b;II[BI)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/autosdk/d;->c:[B

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
