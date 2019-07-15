.class public Lcom/unisound/vui/handler/session/setting/SettingConstantsValue$SettingOperator;
.super Ljava/lang/Object;
.source "SettingConstantsValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/setting/SettingConstantsValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingOperator"
.end annotation


# static fields
.field public static final ACT_DISCONNECTED:Ljava/lang/String; = "ACT_DISCONNECTED"

.field public static final ACT_MATCH:Ljava/lang/String; = "ACT_MATCH"


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/setting/SettingConstantsValue;


# direct methods
.method private constructor <init>(Lcom/unisound/vui/handler/session/setting/SettingConstantsValue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/setting/SettingConstantsValue;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/unisound/vui/handler/session/setting/SettingConstantsValue$SettingOperator;->this$0:Lcom/unisound/vui/handler/session/setting/SettingConstantsValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method
