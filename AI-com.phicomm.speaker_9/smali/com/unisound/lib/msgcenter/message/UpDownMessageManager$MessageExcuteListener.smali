.class public interface abstract Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;
.super Ljava/lang/Object;
.source "UpDownMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageExcuteListener"
.end annotation


# virtual methods
.method public abstract onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
.end method

.method public abstract onReportResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
.end method
