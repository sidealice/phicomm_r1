.class Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$CookiePathComparator;
.super Ljava/lang/Object;
.source "CookieUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CookiePathComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/net/HttpCookie;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$1;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$CookiePathComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 153
    check-cast p1, Ljava/net/HttpCookie;

    check-cast p2, Ljava/net/HttpCookie;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$CookiePathComparator;->compare(Ljava/net/HttpCookie;Ljava/net/HttpCookie;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/net/HttpCookie;Ljava/net/HttpCookie;)I
    .locals 7
    .param p1, "c1"    # Ljava/net/HttpCookie;
    .param p2, "c2"    # Ljava/net/HttpCookie;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 155
    if-ne p1, p2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 156
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    goto :goto_0

    .line 157
    :cond_2
    if-nez p2, :cond_3

    move v2, v4

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "c1Path":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "c2Path":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 167
    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    .line 169
    goto :goto_0
.end method
