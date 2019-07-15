.class final enum Lbutterknife/ButterKnife$Finder$3;
.super Lbutterknife/ButterKnife$Finder;
.source "ButterKnife.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/ButterKnife$Finder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbutterknife/ButterKnife$Finder;-><init>(Ljava/lang/String;ILbutterknife/ButterKnife$1;)V

    return-void
.end method


# virtual methods
.method protected findView(Ljava/lang/Object;I)Landroid/view/View;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "id"    # I

    .prologue
    .line 109
    check-cast p1, Landroid/app/Dialog;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext(Ljava/lang/Object;)Landroid/content/Context;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p1, Landroid/app/Dialog;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
