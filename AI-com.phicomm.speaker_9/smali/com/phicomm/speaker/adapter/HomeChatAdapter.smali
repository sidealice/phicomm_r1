.class public Lcom/phicomm/speaker/adapter/HomeChatAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "HomeChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/adapter/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/phicomm/speaker/popup/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    const v0, 0x2bf20

    .line 41
    iput v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->d:Z

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/HomeChatAdapter;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/HomeChatAdapter;Lcom/phicomm/speaker/popup/f;)Lcom/phicomm/speaker/popup/f;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->e:Lcom/phicomm/speaker/popup/f;

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/HomeChatAdapter;Lcom/phicomm/speaker/adapter/a/a/a;Lcom/phicomm/speaker/adapter/b/a;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Lcom/phicomm/speaker/adapter/a/a/a;Lcom/phicomm/speaker/adapter/b/a;)V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/adapter/a/a/a;Lcom/phicomm/speaker/adapter/b/a;)V
    .locals 12

    .line 143
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/phicomm/speaker/adapter/a/k;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/k;->b()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/k;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v9, v0

    goto :goto_1

    .line 147
    :cond_0
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/d;

    if-eqz v0, :cond_1

    .line 148
    move-object v0, p1

    check-cast v0, Lcom/phicomm/speaker/adapter/a/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/d;->g()I

    move-result v1

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/b/b;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/d;->f()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/d;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_1
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/a/c;

    if-eqz v0, :cond_2

    .line 152
    move-object v0, p1

    check-cast v0, Lcom/phicomm/speaker/adapter/a/a/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/a/c;->g()I

    move-result v1

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/b/b;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/a/c;->f()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/a/c;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v2, v1

    move-object v9, v2

    .line 156
    :goto_1
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v3, "CLOUD_ACCOUNT_PHONE"

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/b/a;->f()V

    .line 161
    new-instance v11, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;

    move-object v3, v11

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move-object v7, v2

    move-object v8, v1

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;-><init>(Lcom/phicomm/speaker/adapter/HomeChatAdapter;Lcom/phicomm/speaker/adapter/b/a;Lcom/phicomm/speaker/adapter/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1, v0, v11}, Lcom/phicomm/speaker/model/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/b;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/adapter/HomeChatAdapter;)Lcom/phicomm/speaker/popup/f;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->e:Lcom/phicomm/speaker/popup/f;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/c/a;
    .locals 3

    const-string v0, "HomeChatAdapter"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder viewType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p2, p1}, Lcom/phicomm/speaker/adapter/b/b;->a(ILandroid/view/ViewGroup;)Lcom/phicomm/speaker/adapter/b/a;

    move-result-object p1

    .line 93
    new-instance p2, Lcom/phicomm/speaker/adapter/c/a;

    invoke-direct {p2, p1}, Lcom/phicomm/speaker/adapter/c/a;-><init>(Lcom/phicomm/speaker/adapter/b/a;)V

    return-object p2
.end method

.method public a()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->d:Z

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/a/a/b;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/c/a;I)V
    .locals 8

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/a/b;->b()Lcom/phicomm/speaker/adapter/a/a/a;

    move-result-object v0

    const/4 v1, 0x1

    if-gtz p2, :cond_0

    .line 101
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/a;->a(Z)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    sub-int/2addr p2, v1

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/a/a/b;->b()Lcom/phicomm/speaker/adapter/a/a/a;

    move-result-object p2

    .line 104
    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/a/a;->d()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/a/a/a;->d()J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/32 v2, 0x2bf20

    cmp-long p2, v6, v2

    if-lez p2, :cond_1

    .line 105
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/a;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 107
    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/adapter/a/a/a;->a(Z)V

    .line 111
    :goto_0
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/adapter/c/a;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 112
    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/c/a;->a()V

    .line 113
    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/a/a;->e()Z

    move-result p2

    if-nez p2, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/c/a;->b()Lcom/phicomm/speaker/adapter/b/a;

    move-result-object p2

    new-instance v1, Lcom/phicomm/speaker/adapter/HomeChatAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter$1;-><init>(Lcom/phicomm/speaker/adapter/HomeChatAdapter;Lcom/phicomm/speaker/adapter/a/a/a;Lcom/phicomm/speaker/adapter/c/a;)V

    invoke-virtual {p2, v1}, Lcom/phicomm/speaker/adapter/b/a;->a(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/adapter/a/a/b;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 54
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b()V
    .locals 5

    .line 72
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 76
    new-instance v1, Lcom/phicomm/speaker/adapter/a/b;

    invoke-direct {v1}, Lcom/phicomm/speaker/adapter/a/b;-><init>()V

    .line 77
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 78
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 81
    new-instance v1, Lcom/phicomm/speaker/adapter/a/a;

    invoke-direct {v1}, Lcom/phicomm/speaker/adapter/a/a;-><init>()V

    .line 82
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 83
    iget-object v3, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->b:Landroid/content/Context;

    const v4, 0x7f0f0242

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/adapter/a/a;->a(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->d:Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->e:Lcom/phicomm/speaker/popup/f;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->e:Lcom/phicomm/speaker/popup/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/popup/f;->a()V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/a/b;->a()I

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/phicomm/speaker/adapter/c/a;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Lcom/phicomm/speaker/adapter/c/a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/c/a;

    move-result-object p1

    return-object p1
.end method
