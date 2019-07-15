.class public Lcom/jph/takephoto/model/TIntentWap;
.super Ljava/lang/Object;
.source "TIntentWap.java"


# instance fields
.field private intent:Landroid/content/Intent;

.field private requestCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jph/takephoto/model/TIntentWap;->intent:Landroid/content/Intent;

    .line 18
    iput p2, p0, Lcom/jph/takephoto/model/TIntentWap;->requestCode:I

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/jph/takephoto/model/TIntentWap;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/jph/takephoto/model/TIntentWap;->requestCode:I

    return v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/jph/takephoto/model/TIntentWap;->intent:Landroid/content/Intent;

    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/jph/takephoto/model/TIntentWap;->requestCode:I

    return-void
.end method
