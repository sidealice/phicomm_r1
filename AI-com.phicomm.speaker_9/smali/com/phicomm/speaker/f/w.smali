.class public Lcom/phicomm/speaker/f/w;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/f/w$a;
    }
.end annotation


# static fields
.field private static a:Lcom/phicomm/speaker/f/w$a;


# direct methods
.method private static a()V
    .locals 1

    .line 76
    sget-object v0, Lcom/phicomm/speaker/f/w;->a:Lcom/phicomm/speaker/f/w$a;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/phicomm/speaker/f/w;->a:Lcom/phicomm/speaker/f/w$a;

    invoke-interface {v0}, Lcom/phicomm/speaker/f/w$a;->a()V

    :cond_0
    return-void
.end method

.method public static a(I[Ljava/lang/String;[I)V
    .locals 3

    if-eqz p2, :cond_3

    .line 58
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 59
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 60
    aget v1, p2, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 61
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 65
    invoke-static {p0}, Lcom/phicomm/speaker/f/w;->a(Ljava/util/List;)V

    goto :goto_1

    .line 67
    :cond_2
    invoke-static {}, Lcom/phicomm/speaker/f/w;->a()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/phicomm/speaker/f/w;->a:Lcom/phicomm/speaker/f/w$a;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/phicomm/speaker/f/w;->a:Lcom/phicomm/speaker/f/w$a;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/f/w$a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
