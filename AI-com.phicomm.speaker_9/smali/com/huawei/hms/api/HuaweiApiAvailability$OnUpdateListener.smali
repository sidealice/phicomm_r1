.class public interface abstract Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/api/HuaweiApiAvailability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUpdateListener"
.end annotation


# virtual methods
.method public abstract onUpdateFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .param p1    # Lcom/huawei/hms/api/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
