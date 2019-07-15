.class Lcom/phicomm/speaker/fragment/HomeFragment$1;
.super Lcom/phicomm/speaker/presenter/b/r;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/HomeFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/HomeFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment$1;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V
    .locals 3

    const-string v0, "HomeFragment"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountDetailSuccess accountDetailsBean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getImg()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "test.portrait.phiwifi.com"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "test.portrait.phiwifi.com"

    const-string v1, "114.141.173.52"

    .line 119
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_1
    sget-object v0, Lcom/phicomm/speaker/adapter/a/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    sput-object p1, Lcom/phicomm/speaker/adapter/a/k;->a:Ljava/lang/String;

    .line 123
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment$1;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/HomeFragment;->a(Lcom/phicomm/speaker/fragment/HomeFragment;)Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "HomeFragment"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountDetailError code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msg = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
