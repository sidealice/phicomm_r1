.class final Lorg/xutils/http/cookie/CookieEntity;
.super Ljava/lang/Object;
.source "CookieEntity.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "cookie"
    onCreated = "CREATE UNIQUE INDEX index_cookie_unique ON cookie(\"name\",\"domain\",\"path\")"
.end annotation


# static fields
.field private static final MAX_EXPIRY:J


# instance fields
.field private comment:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "comment"
    .end annotation
.end field

.field private commentURL:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "commentURL"
    .end annotation
.end field

.field private discard:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "discard"
    .end annotation
.end field

.field private domain:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "domain"
    .end annotation
.end field

.field private expiry:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "expiry"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "name"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "path"
    .end annotation
.end field

.field private portList:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "portList"
    .end annotation
.end field

.field private secure:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "secure"
    .end annotation
.end field

.field private uri:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "uri"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "value"
    .end annotation
.end field

.field private version:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x2d432498000L

    add-long/2addr v0, v2

    sput-wide v0, Lorg/xutils/http/cookie/CookieEntity;->MAX_EXPIRY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-wide v0, Lorg/xutils/http/cookie/CookieEntity;->MAX_EXPIRY:J

    iput-wide v0, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lorg/xutils/http/cookie/CookieEntity;->version:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 10
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-wide v2, Lorg/xutils/http/cookie/CookieEntity;->MAX_EXPIRY:J

    iput-wide v2, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    .line 48
    iput v6, p0, Lorg/xutils/http/cookie/CookieEntity;->version:I

    .line 55
    if-nez p1, :cond_2

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->uri:Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->name:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->value:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->comment:Ljava/lang/String;

    .line 59
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->commentURL:Ljava/lang/String;

    .line 60
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDiscard()Z

    move-result v2

    iput-boolean v2, p0, Lorg/xutils/http/cookie/CookieEntity;->discard:Z

    .line 61
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->domain:Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v0

    .line 63
    .local v0, "maxAge":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    cmp-long v2, v0, v8

    if-lez v2, :cond_3

    .line 64
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    .line 65
    iget-wide v2, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_0

    .line 66
    sget-wide v2, Lorg/xutils/http/cookie/CookieEntity;->MAX_EXPIRY:J

    iput-wide v2, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    .line 71
    :cond_0
    :goto_1
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->path:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_1

    iget-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->path:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->path:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/xutils/http/cookie/CookieEntity;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->path:Ljava/lang/String;

    .line 75
    :cond_1
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->portList:Ljava/lang/String;

    .line 76
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v2

    iput-boolean v2, p0, Lorg/xutils/http/cookie/CookieEntity;->secure:Z

    .line 77
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getVersion()I

    move-result v2

    iput v2, p0, Lorg/xutils/http/cookie/CookieEntity;->version:I

    .line 78
    return-void

    .line 55
    .end local v0    # "maxAge":J
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 69
    .restart local v0    # "maxAge":J
    :cond_3
    iput-wide v4, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    goto :goto_1
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/xutils/http/cookie/CookieEntity;->id:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/xutils/http/cookie/CookieEntity;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lorg/xutils/http/cookie/CookieEntity;->id:J

    .line 104
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/xutils/http/cookie/CookieEntity;->uri:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public toHttpCookie()Ljava/net/HttpCookie;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 81
    new-instance v0, Ljava/net/HttpCookie;

    iget-object v1, p0, Lorg/xutils/http/cookie/CookieEntity;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/http/cookie/CookieEntity;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v0, "cookie":Ljava/net/HttpCookie;
    iget-object v1, p0, Lorg/xutils/http/cookie/CookieEntity;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lorg/xutils/http/cookie/CookieEntity;->commentURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    .line 84
    iget-boolean v1, p0, Lorg/xutils/http/cookie/CookieEntity;->discard:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setDiscard(Z)V

    .line 85
    iget-object v1, p0, Lorg/xutils/http/cookie/CookieEntity;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 86
    iget-wide v2, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 91
    :goto_0
    iget-object v1, p0, Lorg/xutils/http/cookie/CookieEntity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lorg/xutils/http/cookie/CookieEntity;->portList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 93
    iget-boolean v1, p0, Lorg/xutils/http/cookie/CookieEntity;->secure:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setSecure(Z)V

    .line 94
    iget v1, p0, Lorg/xutils/http/cookie/CookieEntity;->version:I

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 95
    return-object v0

    .line 89
    :cond_0
    iget-wide v2, p0, Lorg/xutils/http/cookie/CookieEntity;->expiry:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpCookie;->setMaxAge(J)V

    goto :goto_0
.end method
