.class public final Lcn/kuwo/autosdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcn/kuwo/autosdk/api/OnSearchListener;

.field private e:Lcn/kuwo/autosdk/api/SearchMode;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcn/kuwo/autosdk/api/SearchMode;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    iput-object v1, p0, Lcn/kuwo/autosdk/k;->b:Ljava/lang/String;

    iput v0, p0, Lcn/kuwo/autosdk/k;->c:I

    iput-object v1, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    sget-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ALL:Lcn/kuwo/autosdk/api/SearchMode;

    iput-object v0, p0, Lcn/kuwo/autosdk/k;->e:Lcn/kuwo/autosdk/api/SearchMode;

    iput-object p3, p0, Lcn/kuwo/autosdk/k;->e:Lcn/kuwo/autosdk/api/SearchMode;

    iput-object p1, p0, Lcn/kuwo/autosdk/k;->b:Ljava/lang/String;

    iput p2, p0, Lcn/kuwo/autosdk/k;->c:I

    return-void
.end method

.method static synthetic a(Lcn/kuwo/autosdk/k;)Lcn/kuwo/autosdk/api/OnSearchListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    return-object v0
.end method

.method private a()V
    .locals 14

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v7, Lcn/kuwo/autosdk/j;

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->e:Lcn/kuwo/autosdk/api/SearchMode;

    invoke-direct {v7, v0}, Lcn/kuwo/autosdk/j;-><init>(Lcn/kuwo/autosdk/api/SearchMode;)V

    iget-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    new-array v8, v1, [I

    move v4, v2

    move-object v5, v6

    :goto_1
    if-nez v5, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-nez v0, :cond_0

    if-nez v5, :cond_7

    aget v0, v8, v2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->FAILED:Lcn/kuwo/autosdk/api/SearchStatus;

    iget v3, p0, Lcn/kuwo/autosdk/k;->c:I

    if-nez v3, :cond_3

    move v2, v1

    :cond_3
    invoke-direct {p0, v0, v2, v6, v1}, Lcn/kuwo/autosdk/k;->a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->b:Ljava/lang/String;

    iget v4, p0, Lcn/kuwo/autosdk/k;->c:I

    invoke-virtual {v7, v0, v4, v8}, Lcn/kuwo/autosdk/j;->a(Ljava/lang/String;I[I)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v10, v12, v10

    const-wide/16 v12, 0x1f40

    cmp-long v0, v10, v12

    if-lez v0, :cond_9

    move v0, v1

    :goto_2
    iget-boolean v5, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-nez v5, :cond_0

    move-object v5, v4

    move v4, v0

    move v0, v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->FAILED:Lcn/kuwo/autosdk/api/SearchStatus;

    iget v3, p0, Lcn/kuwo/autosdk/k;->c:I

    if-nez v3, :cond_6

    :goto_3
    invoke-direct {p0, v0, v1, v6, v4}, Lcn/kuwo/autosdk/k;->a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->SUCCESS:Lcn/kuwo/autosdk/api/SearchStatus;

    iget v3, p0, Lcn/kuwo/autosdk/k;->c:I

    if-nez v3, :cond_8

    :goto_4
    invoke-direct {p0, v0, v1, v5, v2}, Lcn/kuwo/autosdk/k;->a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method private a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V
    .locals 7

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcn/kuwo/autosdk/k;->f:Landroid/os/Handler;

    new-instance v0, Lcn/kuwo/autosdk/l;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/autosdk/l;-><init>(Lcn/kuwo/autosdk/k;Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Lcn/kuwo/autosdk/api/OnSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/autosdk/k;->f:Landroid/os/Handler;

    iput-object p2, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    return-void
.end method

.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    if-eqz v0, :cond_0

    sget-object v2, Lcn/kuwo/autosdk/api/SearchStatus;->FAILED:Lcn/kuwo/autosdk/api/SearchStatus;

    iget v0, p0, Lcn/kuwo/autosdk/k;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcn/kuwo/autosdk/k;->a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/autosdk/k;->a()V

    goto :goto_1
.end method
