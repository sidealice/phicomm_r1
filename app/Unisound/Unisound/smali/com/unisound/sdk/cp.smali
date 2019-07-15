.class public Lcom/unisound/sdk/cp;
.super Ljava/lang/Thread;


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:I = 0x2710

.field public static final c:I = 0xbb8

.field public static final d:I = 0xbb8

.field public static final e:I = 0xbb8

.field public static final f:I = 0xbb8

.field public static final g:I = 0xbb8

.field public static final h:I = 0xbb8


# instance fields
.field private i:Lcom/unisound/sdk/cq;

.field private j:Lcn/yunzhisheng/casr/EncodeContent;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://v2.hivoice.cn:8081/casr/upload"

    sput-object v0, Lcom/unisound/sdk/cp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcn/yunzhisheng/casr/EncodeContent;

    invoke-direct {v0}, Lcn/yunzhisheng/casr/EncodeContent;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/cp;->j:Lcn/yunzhisheng/casr/EncodeContent;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/cp;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cp;->a(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadUserData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-le v3, v5, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v5, :cond_6

    const-string v2, ">"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    :goto_2
    const-string v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v5, :cond_3

    const-string v0, "<"

    const-string v4, ""

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_1

    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    move v6, v2

    move-object v2, v0

    move v0, v6

    goto :goto_2
.end method

.method private a(ILjava/util/List;Ljava/lang/StringBuilder;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/cp;->c(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not find tag id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cp;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cp;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/sdk/cp;->b(I)I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Number of over count > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cp;->a(Ljava/lang/String;)V

    const v0, -0xf61f

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/cp;->a(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/unisound/sdk/cp;->a(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto/16 :goto_0
.end method

.method private b(I)I
    .locals 1

    const/16 v0, 0xbb8

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x2710

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cp;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unisound/sdk/cp;->start()V

    return-void
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NAME"

    goto :goto_0

    :pswitch_1
    const-string v0, "APP"

    goto :goto_0

    :pswitch_2
    const-string v0, "SONG"

    goto :goto_0

    :pswitch_3
    const-string v0, "SINGER"

    goto :goto_0

    :pswitch_4
    const-string v0, "ALBUM"

    goto :goto_0

    :pswitch_5
    const-string v0, "COMMAND"

    goto :goto_0

    :pswitch_6
    const-string v0, "wechat_contact"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cp;->i:Lcom/unisound/sdk/cq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/cq;->e(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/sdk/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cp;->i:Lcom/unisound/sdk/cq;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unisound/sdk/cp;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v4, v0, v2}, Lcom/unisound/sdk/cp;->a(ILjava/util/List;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cp;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/unisound/sdk/cp;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cp;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const v1, -0xf61b

    iput-object p1, p0, Lcom/unisound/sdk/cp;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/cp;->i:Lcom/unisound/sdk/cq;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/unisound/sdk/cp;->a(I)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/cp;->a(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/unisound/sdk/cp;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v1, v3}, Lcom/unisound/sdk/cp;->a(ILjava/util/List;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cp;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const v2, -0xf61a

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/cp;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "uploadUserData server is :\n"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/unisound/sdk/cp;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "\n Data is \n"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/unisound/sdk/cp;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/unisound/sdk/cp;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v0

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/unisound/sdk/cp;->j:Lcn/yunzhisheng/casr/EncodeContent;

    invoke-virtual {v5, v0, v3, v4}, Lcn/yunzhisheng/casr/EncodeContent;->EncodeTotalContent([B[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xf622

    :goto_0
    invoke-virtual {p0, v0}, Lcom/unisound/sdk/cp;->a(I)V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    sget-object v3, Lcom/unisound/sdk/cp;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "upload userdata code="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x6

    if-ne v0, v1, :cond_2

    const v0, -0xf621

    goto :goto_0

    :cond_2
    const v0, -0xf619

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method
