.class public abstract Lcom/phicomm/speaker/presenter/yanry/j;
.super Lcom/phicomm/speaker/model/common/a/b;
.source "SelectWakeNamePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lorg/json/JSONArray;

.field private b:Lcom/phicomm/speaker/model/common/f;

.field private c:Lcom/phicomm/speaker/presenter/yanry/p;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/b;-><init>()V

    .line 43
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/j$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/j$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/j;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->b:Lcom/phicomm/speaker/model/common/f;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/j;)Lcom/phicomm/speaker/presenter/yanry/p;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->c:Lcom/phicomm/speaker/presenter/yanry/p;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/j;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j;->a:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/j;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/j;)Lcom/phicomm/speaker/model/common/f;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->b:Lcom/phicomm/speaker/model/common/f;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/j;)Lorg/json/JSONArray;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->a:Lorg/json/JSONArray;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/j$2;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/j$2;-><init>(Lcom/phicomm/speaker/presenter/yanry/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->c:Lcom/phicomm/speaker/presenter/yanry/p;

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->c:Lcom/phicomm/speaker/presenter/yanry/p;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/p;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    const p1, 0x7f0b00ba

    return p1
.end method

.method protected a()Lorg/json/JSONArray;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->a:Lorg/json/JSONArray;

    return-object v0
.end method

.method protected a(Lcom/phicomm/speaker/model/common/a/g;Ljava/lang/Object;I)V
    .locals 1

    const p3, 0x7f090308

    .line 177
    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/model/common/a/g;->b(I)Landroid/widget/TextView;

    move-result-object p3

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090208

    .line 178
    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/model/common/a/g;->a(I)Landroid/view/View;

    move-result-object p1

    const-class p3, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {p3}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {p3}, Lcom/phicomm/speaker/presenter/yanry/i;->c()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->getWakeWord()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/views/widget/RequestLayout;)V
    .locals 3

    const/4 v0, 0x3

    .line 87
    iput v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->d:I

    .line 88
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a()V

    const-string v0, "https://home.phicomm.com/v1/soundbox/wake_up_words"

    .line 89
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const-string v1, "device_id"

    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/j$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/j$3;-><init>(Lcom/phicomm/speaker/presenter/yanry/j;Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 123
    iput v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->d:I

    .line 124
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->b:Lcom/phicomm/speaker/model/common/f;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    .line 125
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Z)V
.end method

.method public b(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->b:Lcom/phicomm/speaker/model/common/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 129
    iput v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->d:I

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->b:Lcom/phicomm/speaker/model/common/f;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    const-string v0, "https://home.phicomm.com/v1/soundbox/wake_up_word"

    .line 132
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->d(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/b;

    move-result-object v0

    const-string v1, "device_id"

    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/net/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/b;

    move-result-object v0

    const-string v1, "wake_up_word"

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/j$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/j$4;-><init>(Lcom/phicomm/speaker/presenter/yanry/j;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/net/c/b;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public c()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->d:I

    return v0
.end method

.method protected abstract c_()V
.end method

.method public d()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->a:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public run()V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/j;->c_()V

    return-void
.end method
