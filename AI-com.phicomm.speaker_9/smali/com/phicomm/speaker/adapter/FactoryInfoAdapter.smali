.class public Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "FactoryInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;,
        Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a:Landroid/content/Context;

    .line 30
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->c:[Ljava/lang/String;

    .line 32
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    array-length p1, p1

    if-ge v0, p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->c:[Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;)Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->d:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;

    return-object p0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const v0, 0x7f0f0283

    .line 91
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "2.0.0"

    return-object p1

    :cond_1
    const v0, 0x7f0f004a

    .line 93
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "100"

    return-object p1

    :cond_2
    const v0, 0x7f0f004b

    .line 95
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "release"

    return-object p1

    :cond_3
    const v0, 0x7f0f010d

    .line 97
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "https://accountsym.phicomm.com"

    return-object p1

    :cond_4
    const v0, 0x7f0f010e

    .line 99
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "https://home.phicomm.com"

    return-object p1

    :cond_5
    const v0, 0x7f0f016a

    .line 101
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "home.phicomm.com"

    return-object p1

    :cond_6
    const v0, 0x7f0f0276

    .line 103
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "\u5916\u7f51"

    return-object p1

    :cond_7
    const v0, 0x7f0f016b

    .line 105
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "8883"

    return-object p1

    :cond_8
    const v0, 0x7f0f0267

    .line 107
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 108
    invoke-static {}, Lcom/phicomm/speaker/f/b;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const v0, 0x7f0f0275

    .line 109
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 110
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a:Landroid/content/Context;

    const-string v0, "UMENG_APPKEY"

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const v0, 0x7f0f0274

    .line 112
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a:Landroid/content/Context;

    const-string v0, "UMENG_CHANNEL"

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const v0, 0x7f0f0049

    .line 114
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a:Landroid/content/Context;

    const-string v0, "BUGLY_APPID"

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const v0, 0x7f0f0168

    .line 117
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 118
    sget p1, Lcom/phicomm/speaker/PhApplication;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    const-string p1, "\u5728\u7ebf"

    goto :goto_0

    :cond_d
    const-string p1, "\u65ad\u5f00"

    :goto_0
    return-object p1

    :cond_e
    const v0, 0x7f0f0169

    .line 119
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "\u70b9\u51fb\u83b7\u53d6\u72b6\u6001"

    return-object p1

    :cond_f
    const-string p1, ""

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0031

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$1;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$1;-><init>(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance p2, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;-><init>(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->c:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 39
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->d:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;I)V
    .locals 2

    .line 75
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p1, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;

    move-result-object p1

    return-object p1
.end method
