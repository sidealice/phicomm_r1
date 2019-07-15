.class public Lcom/alibaba/sdk/android/feedback/windvane/k;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0xbb9

.field public static b:I = 0xbba

.field private static final c:Ljava/lang/String; = "k"


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Ljava/lang/Object;

.field private f:Landroid/view/View;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/k;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/k;->g:Z

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/k;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/windvane/k;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 2

    new-instance p3, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p3}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    sget-object p3, Lcom/alibaba/sdk/android/feedback/windvane/k;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WXPageAction take bar scan callback,requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";resultCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/k;->g:Z

    return v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/k;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/k;->e:Ljava/lang/Object;

    const-string v2, "WXPageAction.onBack"

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
