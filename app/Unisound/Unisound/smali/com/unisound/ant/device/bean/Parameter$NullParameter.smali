.class public Lcom/unisound/ant/device/bean/Parameter$NullParameter;
.super Lcom/unisound/ant/device/bean/Parameter;
.source "Parameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/bean/Parameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NullParameter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/bean/Parameter;


# direct methods
.method public constructor <init>(Lcom/unisound/ant/device/bean/Parameter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/ant/device/bean/Parameter;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/unisound/ant/device/bean/Parameter$NullParameter;->this$0:Lcom/unisound/ant/device/bean/Parameter;

    invoke-direct {p0}, Lcom/unisound/ant/device/bean/Parameter;-><init>()V

    return-void
.end method
