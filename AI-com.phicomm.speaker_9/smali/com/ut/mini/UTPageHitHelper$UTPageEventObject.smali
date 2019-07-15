.class public Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
.super Ljava/lang/Object;
.source "UTPageHitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/UTPageHitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTPageEventObject"
.end annotation


# instance fields
.field private A:J

.field private L:Z

.field private M:Z

.field private N:Z

.field private a:Landroid/net/Uri;

.field private a:Lcom/ut/mini/UTPageStatus;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->w:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:J

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Landroid/net/Uri;

    .line 85
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ai:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->aj:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->L:Z

    .line 89
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->M:Z

    .line 90
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->N:Z

    .line 91
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ak:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public getPageProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->w:Ljava/util/Map;

    return-object v0
.end method

.method public getPageStatus()Lcom/ut/mini/UTPageStatus;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    return-object v0
.end method

.method public getPageStayTimstamp()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:J

    return-wide v0
.end method

.method public getPageUrl()Landroid/net/Uri;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public getRefPage()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public isH5Called()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->N:Z

    return v0
.end method

.method public isPageAppearCalled()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->L:Z

    return v0
.end method

.method public isSkipPage()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->M:Z

    return v0
.end method

.method public resetPropertiesWithoutSkipFlagAndH5Flag()V
    .locals 3

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->w:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:J

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Landroid/net/Uri;

    .line 105
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ai:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->aj:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    sget-object v2, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    if-eq v1, v2, :cond_1

    .line 108
    :cond_0
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    :cond_1
    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->L:Z

    .line 111
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->N:Z

    return-void
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ak:Ljava/lang/String;

    return-void
.end method

.method public setH5Called()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->N:Z

    return-void
.end method

.method public setPageAppearCalled()V
    .locals 1

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->L:Z

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ai:Ljava/lang/String;

    return-void
.end method

.method public setPageProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->w:Ljava/util/Map;

    return-void
.end method

.method public setPageStatus(Lcom/ut/mini/UTPageStatus;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    return-void
.end method

.method public setPageStayTimstamp(J)V
    .locals 0

    .line 159
    iput-wide p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:J

    return-void
.end method

.method public setPageUrl(Landroid/net/Uri;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Landroid/net/Uri;

    return-void
.end method

.method public setRefPage(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->aj:Ljava/lang/String;

    return-void
.end method

.method public setToSkipPage()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->M:Z

    return-void
.end method
