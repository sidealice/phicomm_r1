.class Lcom/umeng/commonsdk/proguard/h$c;
.super Lcom/umeng/commonsdk/proguard/av;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/av<",
        "Lcom/umeng/commonsdk/proguard/h;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 910
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/av;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/proguard/h$1;)V
    .locals 0

    .line 910
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/h$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 915
    check-cast p1, Lcom/umeng/commonsdk/proguard/aq;

    .line 916
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 917
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 918
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 919
    iget v0, p2, Lcom/umeng/commonsdk/proguard/h;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    .line 920
    iget v0, p2, Lcom/umeng/commonsdk/proguard/h;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    .line 921
    iget v0, p2, Lcom/umeng/commonsdk/proguard/h;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    .line 922
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/h;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/nio/ByteBuffer;)V

    .line 923
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/h;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 924
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/h;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 925
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 926
    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/h;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 927
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    .line 929
    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/util/BitSet;I)V

    .line 930
    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/h;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    iget p2, p2, Lcom/umeng/commonsdk/proguard/h;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 910
    check-cast p2, Lcom/umeng/commonsdk/proguard/h;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/h$c;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/h;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 938
    check-cast p1, Lcom/umeng/commonsdk/proguard/aq;

    .line 939
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/proguard/h;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 940
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->a(Z)V

    .line 941
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/h;->b:Ljava/lang/String;

    .line 942
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->b(Z)V

    .line 943
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/h;->c:Ljava/lang/String;

    .line 944
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->c(Z)V

    .line 945
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/proguard/h;->d:I

    .line 946
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->d(Z)V

    .line 947
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/proguard/h;->e:I

    .line 948
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->e(Z)V

    .line 949
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/proguard/h;->f:I

    .line 950
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->f(Z)V

    .line 951
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->A()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/h;->g:Ljava/nio/ByteBuffer;

    .line 952
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->g(Z)V

    .line 953
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/h;->h:Ljava/lang/String;

    .line 954
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->h(Z)V

    .line 955
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/h;->i:Ljava/lang/String;

    .line 956
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->i(Z)V

    .line 957
    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 958
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/commonsdk/proguard/h;->j:I

    .line 960
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/h;->j(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 910
    check-cast p2, Lcom/umeng/commonsdk/proguard/h;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/h$c;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/h;)V

    return-void
.end method
