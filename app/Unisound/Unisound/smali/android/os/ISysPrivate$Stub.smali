.class public abstract Landroid/os/ISysPrivate$Stub;
.super Landroid/os/Binder;
.source "ISysPrivate.java"

# interfaces
.implements Landroid/os/ISysPrivate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISysPrivate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISysPrivate$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ISysPrivate"

.field static final TRANSACTION_getSysMode:I = 0x2

.field static final TRANSACTION_readFileProp:I = 0x8

.field static final TRANSACTION_readLevelProp:I = 0xa

.field static final TRANSACTION_readProp:I = 0x6

.field static final TRANSACTION_setSysMode:I = 0x1

.field static final TRANSACTION_writeFileProp:I = 0x7

.field static final TRANSACTION_writeLevelProp:I = 0x9

.field static final TRANSACTION_writeProp:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.os.ISysPrivate"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISysPrivate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISysPrivate;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.os.ISysPrivate"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ISysPrivate;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/os/ISysPrivate;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/os/ISysPrivate$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ISysPrivate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 41
    :sswitch_0
    const-string v5, "android.os.ISysPrivate"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :sswitch_1
    const-string v5, "android.os.ISysPrivate"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 48
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISysPrivate$Stub;->setSysMode(I)I

    move-result v3

    .line 49
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 54
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2
    const-string v5, "android.os.ISysPrivate"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/os/ISysPrivate$Stub;->getSysMode()I

    move-result v3

    .line 56
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v3    # "_result":I
    :sswitch_3
    const-string v5, "android.os.ISysPrivate"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/ISysPrivate$Stub;->writeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v5, "android.os.ISysPrivate"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ISysPrivate$Stub;->readProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v5, "android.os.ISysPrivate"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/ISysPrivate$Stub;->writeFileProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string v5, "android.os.ISysPrivate"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/ISysPrivate$Stub;->readFileProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v5, "android.os.ISysPrivate"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/ISysPrivate$Stub;->writeLevelProp(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_8
    const-string v5, "android.os.ISysPrivate"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/ISysPrivate$Stub;->readLevelProp(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
